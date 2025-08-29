pub const ISyndicationAttribute = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Namespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Namespace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71e8f969-526e-4001-9a91-e84f83161ab1";
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
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Namespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Namespace: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationAttributeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationAttribute(self: *@This(), attributeName: HSTRING, attributeNamespace: HSTRING, attributeValue: HSTRING) core.HResult!*SyndicationAttribute {
        var _r: *SyndicationAttribute = undefined;
        const _c = self.vtable.CreateSyndicationAttribute(@ptrCast(self), attributeName, attributeNamespace, attributeValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationAttributeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "624f1599-ed3e-420f-be86-640414886e4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationAttribute: *const fn(self: *anyopaque, attributeName: HSTRING, attributeNamespace: HSTRING, attributeValue: HSTRING, _r: **SyndicationAttribute) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationCategory = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Scheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScheme(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Scheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTerm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Term(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTerm(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Term(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationCategory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8715626f-0cba-4a7f-89ff-ecb5281423b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Scheme: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Scheme: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Term: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Term: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationCategoryFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationCategory(self: *@This(), term: HSTRING) core.HResult!*SyndicationCategory {
        var _r: *SyndicationCategory = undefined;
        const _c = self.vtable.CreateSyndicationCategory(@ptrCast(self), term, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSyndicationCategoryEx(self: *@This(), term: HSTRING, scheme: HSTRING, label: HSTRING) core.HResult!*SyndicationCategory {
        var _r: *SyndicationCategory = undefined;
        const _c = self.vtable.CreateSyndicationCategoryEx(@ptrCast(self), term, scheme, label, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationCategoryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab42802f-49e0-4525-8ab2-ab45c02528ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationCategory: *const fn(self: *anyopaque, term: HSTRING, _r: **SyndicationCategory) callconv(.winapi) HRESULT,
        CreateSyndicationCategoryEx: *const fn(self: *anyopaque, term: HSTRING, scheme: HSTRING, label: HSTRING, _r: **SyndicationCategory) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationClient = extern struct {
    vtable: *const VTable,
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ServerCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ProxyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ProxyCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxResponseBufferSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxResponseBufferSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxResponseBufferSize(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MaxResponseBufferSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimeout(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Timeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimeout(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Timeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBypassCacheOnRetrieve(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BypassCacheOnRetrieve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBypassCacheOnRetrieve(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BypassCacheOnRetrieve(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetRequestHeader(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRequestHeader(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RetrieveFeedAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(SyndicationFeed,RetrievalProgress) {
        var _r: *IAsyncOperationWithProgress(SyndicationFeed,RetrievalProgress) = undefined;
        const _c = self.vtable.RetrieveFeedAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e18a9b7-7249-4b45-b229-7df895a5a1f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ServerCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_ProxyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ProxyCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_MaxResponseBufferSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MaxResponseBufferSize: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Timeout: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Timeout: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BypassCacheOnRetrieve: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BypassCacheOnRetrieve: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetRequestHeader: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        RetrieveFeedAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperationWithProgress(SyndicationFeed,RetrievalProgress)) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationClientFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationClient(self: *@This(), serverCredential: *PasswordCredential) core.HResult!*SyndicationClient {
        var _r: *SyndicationClient = undefined;
        const _c = self.vtable.CreateSyndicationClient(@ptrCast(self), serverCredential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationClientFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ec4b32c-a79b-4114-b29a-05dffbafb9a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationClient: *const fn(self: *anyopaque, serverCredential: *PasswordCredential, _r: **SyndicationClient) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationContent = extern struct {
    vtable: *const VTable,
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_SourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_SourceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4641fefe-0e55-40d0-b8d0-6a2ccba9fc7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_SourceUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationContentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationContent(self: *@This(), text: HSTRING, type: SyndicationTextType) core.HResult!*SyndicationContent {
        var _r: *SyndicationContent = undefined;
        const _c = self.vtable.CreateSyndicationContent(@ptrCast(self), text, type, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSyndicationContentWithSourceUri(self: *@This(), sourceUri: *Uri) core.HResult!*SyndicationContent {
        var _r: *SyndicationContent = undefined;
        const _c = self.vtable.CreateSyndicationContentWithSourceUri(@ptrCast(self), sourceUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationContentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d2fbb93-9520-4173-9388-7e2df324a8a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationContent: *const fn(self: *anyopaque, text: HSTRING, type: SyndicationTextType, _r: **SyndicationContent) callconv(.winapi) HRESULT,
        CreateSyndicationContentWithSourceUri: *const fn(self: *anyopaque, sourceUri: *Uri, _r: **SyndicationContent) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationErrorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This(), hresult: i32) core.HResult!SyndicationErrorStatus {
        var _r: SyndicationErrorStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationErrorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1fbb2361-45c7-4833-8aa0-be5f3b58a7f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, hresult: i32, _r: *SyndicationErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationFeed = extern struct {
    vtable: *const VTable,
    pub fn getAuthors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        var _r: *IVector(SyndicationPerson) = undefined;
        const _c = self.vtable.get_Authors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVector(SyndicationCategory) {
        var _r: *IVector(SyndicationCategory) = undefined;
        const _c = self.vtable.get_Categories(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContributors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        var _r: *IVector(SyndicationPerson) = undefined;
        const _c = self.vtable.get_Contributors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenerator(self: *@This()) core.HResult!*SyndicationGenerator {
        var _r: *SyndicationGenerator = undefined;
        const _c = self.vtable.get_Generator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGenerator(self: *@This(), value: *SyndicationGenerator) core.HResult!void {
        const _c = self.vtable.put_Generator(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_IconUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIconUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_IconUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getItems(self: *@This()) core.HResult!*IVector(SyndicationItem) {
        var _r: *IVector(SyndicationItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastUpdatedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastUpdatedTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastUpdatedTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinks(self: *@This()) core.HResult!*IVector(SyndicationLink) {
        var _r: *IVector(SyndicationLink) = undefined;
        const _c = self.vtable.get_Links(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ImageUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImageUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ImageUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRights(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Rights(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRights(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Rights(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Subtitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFirstUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_FirstUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LastUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_NextUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviousUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_PreviousUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceFormat(self: *@This()) core.HResult!SyndicationFormat {
        var _r: SyndicationFormat = undefined;
        const _c = self.vtable.get_SourceFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Load(self: *@This(), feed: HSTRING) core.HResult!void {
        const _c = self.vtable.Load(@ptrCast(self), feed);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadFromXml(self: *@This(), feedDocument: *XmlDocument) core.HResult!void {
        const _c = self.vtable.LoadFromXml(@ptrCast(self), feedDocument);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationFeed";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ffe3cd2-5b66-4d62-8403-1bc10d910d6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Authors: *const fn(self: *anyopaque, _r: **IVector(SyndicationPerson)) callconv(.winapi) HRESULT,
        get_Categories: *const fn(self: *anyopaque, _r: **IVector(SyndicationCategory)) callconv(.winapi) HRESULT,
        get_Contributors: *const fn(self: *anyopaque, _r: **IVector(SyndicationPerson)) callconv(.winapi) HRESULT,
        get_Generator: *const fn(self: *anyopaque, _r: **SyndicationGenerator) callconv(.winapi) HRESULT,
        put_Generator: *const fn(self: *anyopaque, value: *SyndicationGenerator) callconv(.winapi) HRESULT,
        get_IconUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_IconUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(SyndicationItem)) callconv(.winapi) HRESULT,
        get_LastUpdatedTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_LastUpdatedTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Links: *const fn(self: *anyopaque, _r: **IVector(SyndicationLink)) callconv(.winapi) HRESULT,
        get_ImageUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ImageUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Rights: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Rights: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Subtitle: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_FirstUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_LastUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_NextUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_PreviousUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_SourceFormat: *const fn(self: *anyopaque, _r: *SyndicationFormat) callconv(.winapi) HRESULT,
        Load: *const fn(self: *anyopaque, feed: HSTRING) callconv(.winapi) HRESULT,
        LoadFromXml: *const fn(self: *anyopaque, feedDocument: *XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationFeedFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationFeed(self: *@This(), title: HSTRING, subtitle: HSTRING, uri: *Uri) core.HResult!*SyndicationFeed {
        var _r: *SyndicationFeed = undefined;
        const _c = self.vtable.CreateSyndicationFeed(@ptrCast(self), title, subtitle, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationFeedFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23472232-8be9-48b7-8934-6205131d9357";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationFeed: *const fn(self: *anyopaque, title: HSTRING, subtitle: HSTRING, uri: *Uri, _r: **SyndicationFeed) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationGenerator = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Version(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9768b379-fb2b-4f6d-b41c-088a5868825c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationGeneratorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationGenerator(self: *@This(), text: HSTRING) core.HResult!*SyndicationGenerator {
        var _r: *SyndicationGenerator = undefined;
        const _c = self.vtable.CreateSyndicationGenerator(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationGeneratorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a34083e3-1e26-4dbc-ba9d-1ab84beff97b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationGenerator: *const fn(self: *anyopaque, text: HSTRING, _r: **SyndicationGenerator) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationItem = extern struct {
    vtable: *const VTable,
    pub fn getAuthors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        var _r: *IVector(SyndicationPerson) = undefined;
        const _c = self.vtable.get_Authors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVector(SyndicationCategory) {
        var _r: *IVector(SyndicationCategory) = undefined;
        const _c = self.vtable.get_Categories(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContributors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        var _r: *IVector(SyndicationPerson) = undefined;
        const _c = self.vtable.get_Contributors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContent(self: *@This()) core.HResult!*SyndicationContent {
        var _r: *SyndicationContent = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: *SyndicationContent) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastUpdatedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastUpdatedTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastUpdatedTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinks(self: *@This()) core.HResult!*IVector(SyndicationLink) {
        var _r: *IVector(SyndicationLink) = undefined;
        const _c = self.vtable.get_Links(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublishedDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_PublishedDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPublishedDate(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_PublishedDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRights(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Rights(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRights(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Rights(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*SyndicationFeed {
        var _r: *SyndicationFeed = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *SyndicationFeed) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSummary(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Summary(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSummary(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Summary(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        var _r: *ISyndicationText = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommentsUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_CommentsUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommentsUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_CommentsUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEditUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_EditUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEditMediaUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_EditMediaUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getETag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ETag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ItemUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Load(self: *@This(), item: HSTRING) core.HResult!void {
        const _c = self.vtable.Load(@ptrCast(self), item);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LoadFromXml(self: *@This(), itemDocument: *XmlDocument) core.HResult!void {
        const _c = self.vtable.LoadFromXml(@ptrCast(self), itemDocument);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "548db883-c384-45c1-8ae8-a378c4ec486c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Authors: *const fn(self: *anyopaque, _r: **IVector(SyndicationPerson)) callconv(.winapi) HRESULT,
        get_Categories: *const fn(self: *anyopaque, _r: **IVector(SyndicationCategory)) callconv(.winapi) HRESULT,
        get_Contributors: *const fn(self: *anyopaque, _r: **IVector(SyndicationPerson)) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **SyndicationContent) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *SyndicationContent) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LastUpdatedTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_LastUpdatedTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Links: *const fn(self: *anyopaque, _r: **IVector(SyndicationLink)) callconv(.winapi) HRESULT,
        get_PublishedDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_PublishedDate: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Rights: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Rights: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **SyndicationFeed) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *SyndicationFeed) callconv(.winapi) HRESULT,
        get_Summary: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Summary: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: **ISyndicationText) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: *ISyndicationText) callconv(.winapi) HRESULT,
        get_CommentsUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_CommentsUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_EditUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_EditMediaUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ETag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ItemUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        Load: *const fn(self: *anyopaque, item: HSTRING) callconv(.winapi) HRESULT,
        LoadFromXml: *const fn(self: *anyopaque, itemDocument: *XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationItemFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationItem(self: *@This(), title: HSTRING, content: *SyndicationContent, uri: *Uri) core.HResult!*SyndicationItem {
        var _r: *SyndicationItem = undefined;
        const _c = self.vtable.CreateSyndicationItem(@ptrCast(self), title, content, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "251d434f-7db8-487a-85e4-10d191e66ebb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationItem: *const fn(self: *anyopaque, title: HSTRING, content: *SyndicationContent, uri: *Uri, _r: **SyndicationItem) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationLink = extern struct {
    vtable: *const VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMediaType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MediaType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelationship(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Relationship(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelationship(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Relationship(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResourceLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResourceLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ResourceLanguage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27553abd-a10e-41b5-86bd-9759086eb0c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MediaType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Relationship: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Relationship: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ResourceLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ResourceLanguage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationLinkFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationLink(self: *@This(), uri: *Uri) core.HResult!*SyndicationLink {
        var _r: *SyndicationLink = undefined;
        const _c = self.vtable.CreateSyndicationLink(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSyndicationLinkEx(self: *@This(), uri: *Uri, relationship: HSTRING, title: HSTRING, mediaType: HSTRING, length: u32) core.HResult!*SyndicationLink {
        var _r: *SyndicationLink = undefined;
        const _c = self.vtable.CreateSyndicationLinkEx(@ptrCast(self), uri, relationship, title, mediaType, length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationLinkFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ed863d4-5535-48ac-98d4-c190995080b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationLink: *const fn(self: *anyopaque, uri: *Uri, _r: **SyndicationLink) callconv(.winapi) HRESULT,
        CreateSyndicationLinkEx: *const fn(self: *anyopaque, uri: *Uri, relationship: HSTRING, title: HSTRING, mediaType: HSTRING, length: u32, _r: **SyndicationLink) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationNode = extern struct {
    vtable: *const VTable,
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NodeName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNodeName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NodeName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNodeNamespace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NodeNamespace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNodeNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NodeNamespace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNodeValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NodeValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_NodeValue(@ptrCast(self), value);
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
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_BaseUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBaseUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_BaseUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAttributeExtensions(self: *@This()) core.HResult!*IVector(SyndicationAttribute) {
        var _r: *IVector(SyndicationAttribute) = undefined;
        const _c = self.vtable.get_AttributeExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementExtensions(self: *@This()) core.HResult!*IVector(ISyndicationNode) {
        var _r: *IVector(ISyndicationNode) = undefined;
        const _c = self.vtable.get_ElementExtensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetXmlDocument(self: *@This(), format: SyndicationFormat) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.GetXmlDocument(@ptrCast(self), format, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "753cef78-51f8-45c0-a9f5-f1719dec3fb2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NodeName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NodeName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NodeNamespace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NodeNamespace: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NodeValue: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_NodeValue: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BaseUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_BaseUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_AttributeExtensions: *const fn(self: *anyopaque, _r: **IVector(SyndicationAttribute)) callconv(.winapi) HRESULT,
        get_ElementExtensions: *const fn(self: *anyopaque, _r: **IVector(ISyndicationNode)) callconv(.winapi) HRESULT,
        GetXmlDocument: *const fn(self: *anyopaque, format: SyndicationFormat, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationNodeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationNode(self: *@This(), nodeName: HSTRING, nodeNamespace: HSTRING, nodeValue: HSTRING) core.HResult!*SyndicationNode {
        var _r: *SyndicationNode = undefined;
        const _c = self.vtable.CreateSyndicationNode(@ptrCast(self), nodeName, nodeNamespace, nodeValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationNodeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12902188-4acb-49a8-b777-a5eb92e18a79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationNode: *const fn(self: *anyopaque, nodeName: HSTRING, nodeNamespace: HSTRING, nodeValue: HSTRING, _r: **SyndicationNode) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationPerson = extern struct {
    vtable: *const VTable,
    pub fn getEmail(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Email(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmail(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Email(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationPerson";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa1ee5da-a7c6-4517-a096-0143faf29327";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Email: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Email: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationPersonFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationPerson(self: *@This(), name: HSTRING) core.HResult!*SyndicationPerson {
        var _r: *SyndicationPerson = undefined;
        const _c = self.vtable.CreateSyndicationPerson(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSyndicationPersonEx(self: *@This(), name: HSTRING, email: HSTRING, uri: *Uri) core.HResult!*SyndicationPerson {
        var _r: *SyndicationPerson = undefined;
        const _c = self.vtable.CreateSyndicationPersonEx(@ptrCast(self), name, email, uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationPersonFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcf4886d-229d-4b58-a49b-f3d2f0f5c99f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationPerson: *const fn(self: *anyopaque, name: HSTRING, _r: **SyndicationPerson) callconv(.winapi) HRESULT,
        CreateSyndicationPersonEx: *const fn(self: *anyopaque, name: HSTRING, email: HSTRING, uri: *Uri, _r: **SyndicationPerson) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationText = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXml(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_Xml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXml(self: *@This(), value: *XmlDocument) core.HResult!void {
        const _c = self.vtable.put_Xml(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9cc5e80-313a-4091-a2a6-243e0ee923f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Xml: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        put_Xml: *const fn(self: *anyopaque, value: *XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const ISyndicationTextFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSyndicationText(self: *@This(), text: HSTRING) core.HResult!*SyndicationText {
        var _r: *SyndicationText = undefined;
        const _c = self.vtable.CreateSyndicationText(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSyndicationTextEx(self: *@This(), text: HSTRING, type: SyndicationTextType) core.HResult!*SyndicationText {
        var _r: *SyndicationText = undefined;
        const _c = self.vtable.CreateSyndicationTextEx(@ptrCast(self), text, type, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.ISyndicationTextFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee7342f7-11c6-4b25-ab62-e596bd162946";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSyndicationText: *const fn(self: *anyopaque, text: HSTRING, _r: **SyndicationText) callconv(.winapi) HRESULT,
        CreateSyndicationTextEx: *const fn(self: *anyopaque, text: HSTRING, type: SyndicationTextType, _r: **SyndicationText) callconv(.winapi) HRESULT,
    };
};
pub const RetrievalProgress = extern struct {
    BytesRetrieved: u32,
    TotalBytesToRetrieve: u32,
};
pub const SyndicationAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.getNamespace();
    }
    pub fn putNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.putNamespace(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationAttribute = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationAttribute.IID)));
    }
    pub fn CreateSyndicationAttribute(attributeName: HSTRING, attributeNamespace: HSTRING, attributeValue: HSTRING) core.HResult!*SyndicationAttribute {
        const factory = @This().ISyndicationAttributeFactoryCache.get();
        return try factory.CreateSyndicationAttribute(attributeName, attributeNamespace, attributeValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationAttribute.GUID;
    pub const IID: Guid = ISyndicationAttribute.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationAttribute.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationAttributeFactoryCache: FactoryCache(ISyndicationAttributeFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationCategory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.getScheme();
    }
    pub fn putScheme(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.putScheme(value);
    }
    pub fn getTerm(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.getTerm();
    }
    pub fn putTerm(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationCategory = @ptrCast(self);
        return try this.putTerm(value);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationCategory.IID)));
    }
    pub fn CreateSyndicationCategory(term: HSTRING) core.HResult!*SyndicationCategory {
        const factory = @This().ISyndicationCategoryFactoryCache.get();
        return try factory.CreateSyndicationCategory(term);
    }
    pub fn CreateSyndicationCategoryEx(term: HSTRING, scheme: HSTRING, label: HSTRING) core.HResult!*SyndicationCategory {
        const factory = @This().ISyndicationCategoryFactoryCache.get();
        return try factory.CreateSyndicationCategoryEx(term, scheme, label);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationCategory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationCategory.GUID;
    pub const IID: Guid = ISyndicationCategory.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationCategory.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationCategoryFactoryCache: FactoryCache(ISyndicationCategoryFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.putServerCredential(value);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.putProxyCredential(value);
    }
    pub fn getMaxResponseBufferSize(self: *@This()) core.HResult!u32 {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.getMaxResponseBufferSize();
    }
    pub fn putMaxResponseBufferSize(self: *@This(), value: u32) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.putMaxResponseBufferSize(value);
    }
    pub fn getTimeout(self: *@This()) core.HResult!u32 {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.getTimeout();
    }
    pub fn putTimeout(self: *@This(), value: u32) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.putTimeout(value);
    }
    pub fn getBypassCacheOnRetrieve(self: *@This()) core.HResult!bool {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.getBypassCacheOnRetrieve();
    }
    pub fn putBypassCacheOnRetrieve(self: *@This(), value: bool) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.putBypassCacheOnRetrieve(value);
    }
    pub fn SetRequestHeader(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.SetRequestHeader(name, value);
    }
    pub fn RetrieveFeedAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperationWithProgress(SyndicationFeed,RetrievalProgress) {
        const this: *ISyndicationClient = @ptrCast(self);
        return try this.RetrieveFeedAsync(uri);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationClient.IID)));
    }
    pub fn CreateSyndicationClient(serverCredential: *PasswordCredential) core.HResult!*SyndicationClient {
        const factory = @This().ISyndicationClientFactoryCache.get();
        return try factory.CreateSyndicationClient(serverCredential);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationClient.GUID;
    pub const IID: Guid = ISyndicationClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationClient.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationClientFactoryCache: FactoryCache(ISyndicationClientFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationContent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putText(value);
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putType(value);
    }
    pub fn getXml(self: *@This()) core.HResult!*XmlDocument {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXml();
    }
    pub fn putXml(self: *@This(), value: *XmlDocument) core.HResult!void {
        var this: ?*ISyndicationText = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISyndicationText.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXml(value);
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
    pub fn getSourceUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationContent = @ptrCast(self);
        return try this.getSourceUri();
    }
    pub fn putSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationContent = @ptrCast(self);
        return try this.putSourceUri(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationContent.IID)));
    }
    pub fn CreateSyndicationContent(text: HSTRING, type: SyndicationTextType) core.HResult!*SyndicationContent {
        const factory = @This().ISyndicationContentFactoryCache.get();
        return try factory.CreateSyndicationContent(text, type);
    }
    pub fn CreateSyndicationContentWithSourceUri(sourceUri: *Uri) core.HResult!*SyndicationContent {
        const factory = @This().ISyndicationContentFactoryCache.get();
        return try factory.CreateSyndicationContentWithSourceUri(sourceUri);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationContent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationContent.GUID;
    pub const IID: Guid = ISyndicationContent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationContent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationContentFactoryCache: FactoryCache(ISyndicationContentFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStatus(hresult: i32) core.HResult!SyndicationErrorStatus {
        const factory = @This().ISyndicationErrorStaticsCache.get();
        return try factory.GetStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISyndicationErrorStaticsCache: FactoryCache(ISyndicationErrorStatics, RUNTIME_NAME) = .{};
};
pub const SyndicationErrorStatus = enum(i32) {
    Unknown = 0,
    MissingRequiredElement = 1,
    MissingRequiredAttribute = 2,
    InvalidXml = 3,
    UnexpectedContent = 4,
    UnsupportedFormat = 5,
};
pub const SyndicationFeed = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getAuthors();
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVector(SyndicationCategory) {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getCategories();
    }
    pub fn getContributors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getContributors();
    }
    pub fn getGenerator(self: *@This()) core.HResult!*SyndicationGenerator {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getGenerator();
    }
    pub fn putGenerator(self: *@This(), value: *SyndicationGenerator) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putGenerator(value);
    }
    pub fn getIconUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getIconUri();
    }
    pub fn putIconUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putIconUri(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(SyndicationItem) {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getItems();
    }
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getLastUpdatedTime();
    }
    pub fn putLastUpdatedTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putLastUpdatedTime(value);
    }
    pub fn getLinks(self: *@This()) core.HResult!*IVector(SyndicationLink) {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getLinks();
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getImageUri();
    }
    pub fn putImageUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putImageUri(value);
    }
    pub fn getRights(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getRights();
    }
    pub fn putRights(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putRights(value);
    }
    pub fn getSubtitle(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn putSubtitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putSubtitle(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getFirstUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getFirstUri();
    }
    pub fn getLastUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getLastUri();
    }
    pub fn getNextUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getNextUri();
    }
    pub fn getPreviousUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getPreviousUri();
    }
    pub fn getSourceFormat(self: *@This()) core.HResult!SyndicationFormat {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.getSourceFormat();
    }
    pub fn Load(self: *@This(), feed: HSTRING) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.Load(feed);
    }
    pub fn LoadFromXml(self: *@This(), feedDocument: *XmlDocument) core.HResult!void {
        const this: *ISyndicationFeed = @ptrCast(self);
        return try this.LoadFromXml(feedDocument);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationFeed.IID)));
    }
    pub fn CreateSyndicationFeed(title: HSTRING, subtitle: HSTRING, uri: *Uri) core.HResult!*SyndicationFeed {
        const factory = @This().ISyndicationFeedFactoryCache.get();
        return try factory.CreateSyndicationFeed(title, subtitle, uri);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationFeed";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationFeed.GUID;
    pub const IID: Guid = ISyndicationFeed.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationFeed.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationFeedFactoryCache: FactoryCache(ISyndicationFeedFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationFormat = enum(i32) {
    Atom10 = 0,
    Rss20 = 1,
    Rss10 = 2,
    Rss092 = 3,
    Rss091 = 4,
    Atom03 = 5,
};
pub const SyndicationGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationGenerator = @ptrCast(self);
        return try this.putVersion(value);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationGenerator.IID)));
    }
    pub fn CreateSyndicationGenerator(text: HSTRING) core.HResult!*SyndicationGenerator {
        const factory = @This().ISyndicationGeneratorFactoryCache.get();
        return try factory.CreateSyndicationGenerator(text);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationGenerator.GUID;
    pub const IID: Guid = ISyndicationGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationGenerator.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationGeneratorFactoryCache: FactoryCache(ISyndicationGeneratorFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getAuthors();
    }
    pub fn getCategories(self: *@This()) core.HResult!*IVector(SyndicationCategory) {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getCategories();
    }
    pub fn getContributors(self: *@This()) core.HResult!*IVector(SyndicationPerson) {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getContributors();
    }
    pub fn getContent(self: *@This()) core.HResult!*SyndicationContent {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: *SyndicationContent) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getLastUpdatedTime();
    }
    pub fn putLastUpdatedTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putLastUpdatedTime(value);
    }
    pub fn getLinks(self: *@This()) core.HResult!*IVector(SyndicationLink) {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getLinks();
    }
    pub fn getPublishedDate(self: *@This()) core.HResult!DateTime {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getPublishedDate();
    }
    pub fn putPublishedDate(self: *@This(), value: DateTime) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putPublishedDate(value);
    }
    pub fn getRights(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getRights();
    }
    pub fn putRights(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putRights(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*SyndicationFeed {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *SyndicationFeed) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getSummary(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getSummary();
    }
    pub fn putSummary(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putSummary(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!*ISyndicationText {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: *ISyndicationText) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getCommentsUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getCommentsUri();
    }
    pub fn putCommentsUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.putCommentsUri(value);
    }
    pub fn getEditUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getEditUri();
    }
    pub fn getEditMediaUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getEditMediaUri();
    }
    pub fn getETag(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getETag();
    }
    pub fn getItemUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.getItemUri();
    }
    pub fn Load(self: *@This(), item: HSTRING) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.Load(item);
    }
    pub fn LoadFromXml(self: *@This(), itemDocument: *XmlDocument) core.HResult!void {
        const this: *ISyndicationItem = @ptrCast(self);
        return try this.LoadFromXml(itemDocument);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationItem.IID)));
    }
    pub fn CreateSyndicationItem(title: HSTRING, content: *SyndicationContent, uri: *Uri) core.HResult!*SyndicationItem {
        const factory = @This().ISyndicationItemFactoryCache.get();
        return try factory.CreateSyndicationItem(title, content, uri);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationItem.GUID;
    pub const IID: Guid = ISyndicationItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationItem.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationItemFactoryCache: FactoryCache(ISyndicationItemFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationLink = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getMediaType();
    }
    pub fn putMediaType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putMediaType(value);
    }
    pub fn getRelationship(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getRelationship();
    }
    pub fn putRelationship(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putRelationship(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getResourceLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.getResourceLanguage();
    }
    pub fn putResourceLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationLink = @ptrCast(self);
        return try this.putResourceLanguage(value);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationLink.IID)));
    }
    pub fn CreateSyndicationLink(uri: *Uri) core.HResult!*SyndicationLink {
        const factory = @This().ISyndicationLinkFactoryCache.get();
        return try factory.CreateSyndicationLink(uri);
    }
    pub fn CreateSyndicationLinkEx(uri: *Uri, relationship: HSTRING, title: HSTRING, mediaType: HSTRING, length: u32) core.HResult!*SyndicationLink {
        const factory = @This().ISyndicationLinkFactoryCache.get();
        return try factory.CreateSyndicationLinkEx(uri, relationship, title, mediaType, length);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationLink.GUID;
    pub const IID: Guid = ISyndicationLink.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationLink.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationLinkFactoryCache: FactoryCache(ISyndicationLinkFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationNode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNodeName(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getNodeName();
    }
    pub fn putNodeName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.putNodeName(value);
    }
    pub fn getNodeNamespace(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getNodeNamespace();
    }
    pub fn putNodeNamespace(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.putNodeNamespace(value);
    }
    pub fn getNodeValue(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getNodeValue();
    }
    pub fn putNodeValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.putNodeValue(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getBaseUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getBaseUri();
    }
    pub fn putBaseUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.putBaseUri(value);
    }
    pub fn getAttributeExtensions(self: *@This()) core.HResult!*IVector(SyndicationAttribute) {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getAttributeExtensions();
    }
    pub fn getElementExtensions(self: *@This()) core.HResult!*IVector(ISyndicationNode) {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.getElementExtensions();
    }
    pub fn GetXmlDocument(self: *@This(), format: SyndicationFormat) core.HResult!*XmlDocument {
        const this: *ISyndicationNode = @ptrCast(self);
        return try this.GetXmlDocument(format);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationNode.IID)));
    }
    pub fn CreateSyndicationNode(nodeName: HSTRING, nodeNamespace: HSTRING, nodeValue: HSTRING) core.HResult!*SyndicationNode {
        const factory = @This().ISyndicationNodeFactoryCache.get();
        return try factory.CreateSyndicationNode(nodeName, nodeNamespace, nodeValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationNode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationNode.GUID;
    pub const IID: Guid = ISyndicationNode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationNode.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationNodeFactoryCache: FactoryCache(ISyndicationNodeFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationPerson = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmail(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.getEmail();
    }
    pub fn putEmail(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.putEmail(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISyndicationPerson = @ptrCast(self);
        return try this.putUri(value);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationPerson.IID)));
    }
    pub fn CreateSyndicationPerson(name: HSTRING) core.HResult!*SyndicationPerson {
        const factory = @This().ISyndicationPersonFactoryCache.get();
        return try factory.CreateSyndicationPerson(name);
    }
    pub fn CreateSyndicationPersonEx(name: HSTRING, email: HSTRING, uri: *Uri) core.HResult!*SyndicationPerson {
        const factory = @This().ISyndicationPersonFactoryCache.get();
        return try factory.CreateSyndicationPersonEx(name, email, uri);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationPerson";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationPerson.GUID;
    pub const IID: Guid = ISyndicationPerson.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationPerson.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationPersonFactoryCache: FactoryCache(ISyndicationPersonFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationText = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getXml(self: *@This()) core.HResult!*XmlDocument {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.getXml();
    }
    pub fn putXml(self: *@This(), value: *XmlDocument) core.HResult!void {
        const this: *ISyndicationText = @ptrCast(self);
        return try this.putXml(value);
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
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISyndicationText.IID)));
    }
    pub fn CreateSyndicationText(text: HSTRING) core.HResult!*SyndicationText {
        const factory = @This().ISyndicationTextFactoryCache.get();
        return try factory.CreateSyndicationText(text);
    }
    pub fn CreateSyndicationTextEx(text: HSTRING, type: SyndicationTextType) core.HResult!*SyndicationText {
        const factory = @This().ISyndicationTextFactoryCache.get();
        return try factory.CreateSyndicationTextEx(text, type);
    }
    pub const NAME: []const u8 = "Windows.Web.Syndication.SyndicationText";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISyndicationText.GUID;
    pub const IID: Guid = ISyndicationText.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISyndicationText.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISyndicationTextFactoryCache: FactoryCache(ISyndicationTextFactory, RUNTIME_NAME) = .{};
};
pub const SyndicationTextType = enum(i32) {
    Text = 0,
    Html = 1,
    Xhtml = 2,
};
pub const TransferProgress = extern struct {
    BytesSent: u32,
    TotalBytesToSend: u32,
    BytesRetrieved: u32,
    TotalBytesToRetrieve: u32,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const XmlDocument = @import("../Data/Xml/Dom.zig").XmlDocument;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
