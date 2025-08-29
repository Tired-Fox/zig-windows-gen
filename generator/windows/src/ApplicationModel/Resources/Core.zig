pub const INamedResource = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCandidates(self: *@This()) core.HResult!*IVectorView(ResourceCandidate) {
        var _r: *IVectorView(ResourceCandidate) = undefined;
        const _c = self.vtable.get_Candidates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Resolve(self: *@This()) core.HResult!*ResourceCandidate {
        var _r: *ResourceCandidate = undefined;
        const _c = self.vtable.Resolve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Resolve(self: *@This(), resourceContext: *ResourceContext) core.HResult!*ResourceCandidate {
        var _r: *ResourceCandidate = undefined;
        const _c = self.vtable.Resolve(@ptrCast(self), resourceContext, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResolveAll(self: *@This()) core.HResult!*IVectorView(ResourceCandidate) {
        var _r: *IVectorView(ResourceCandidate) = undefined;
        const _c = self.vtable.ResolveAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResolveAll(self: *@This(), resourceContext: *ResourceContext) core.HResult!*IVectorView(ResourceCandidate) {
        var _r: *IVectorView(ResourceCandidate) = undefined;
        const _c = self.vtable.ResolveAll(@ptrCast(self), resourceContext, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.INamedResource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c98c219-0b13-4240-89a5-d495dc189a00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Candidates: *const fn(self: *anyopaque, _r: **IVectorView(ResourceCandidate)) callconv(.winapi) HRESULT,
        Resolve: *const fn(self: *anyopaque, _r: **ResourceCandidate) callconv(.winapi) HRESULT,
        Resolve: *const fn(self: *anyopaque, resourceContext: *ResourceContext, _r: **ResourceCandidate) callconv(.winapi) HRESULT,
        ResolveAll: *const fn(self: *anyopaque, _r: **IVectorView(ResourceCandidate)) callconv(.winapi) HRESULT,
        ResolveAll: *const fn(self: *anyopaque, resourceContext: *ResourceContext, _r: **IVectorView(ResourceCandidate)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceCandidate = extern struct {
    vtable: *const VTable,
    pub fn getQualifiers(self: *@This()) core.HResult!*IVectorView(ResourceQualifier) {
        var _r: *IVectorView(ResourceQualifier) = undefined;
        const _c = self.vtable.get_Qualifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMatch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMatch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMatchAsDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMatchAsDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueAsString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ValueAsString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValueAsFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.GetValueAsFileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetQualifierValue(self: *@This(), qualifierName: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetQualifierValue(@ptrCast(self), qualifierName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceCandidate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af5207d9-c433-4764-b3fd-8fa6bfbcbadc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Qualifiers: *const fn(self: *anyopaque, _r: **IVectorView(ResourceQualifier)) callconv(.winapi) HRESULT,
        get_IsMatch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMatchAsDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ValueAsString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetValueAsFileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        GetQualifierValue: *const fn(self: *anyopaque, qualifierName: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResourceCandidate2 = extern struct {
    vtable: *const VTable,
    pub fn GetValueAsStreamAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var _r: *IAsyncOperation(IRandomAccessStream) = undefined;
        const _c = self.vtable.GetValueAsStreamAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceCandidate2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69e5b468-f6fc-4013-aaa2-d53f1757d3b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetValueAsStreamAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStream)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceCandidate3 = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!ResourceCandidateKind {
        var _r: ResourceCandidateKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceCandidate3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08ae97f8-517a-4674-958c-4a3c7cd2cc6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ResourceCandidateKind) callconv(.winapi) HRESULT,
    };
};
pub const IResourceContext = extern struct {
    vtable: *const VTable,
    pub fn getQualifierValues(self: *@This()) core.HResult!*IObservableMap(HSTRING,HSTRING) {
        var _r: *IObservableMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_QualifierValues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Reset(self: *@This(), qualifierNames: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self), qualifierNames);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OverrideToMatch(self: *@This(), result: *IIterable(ResourceQualifier)) core.HResult!void {
        const _c = self.vtable.OverrideToMatch(@ptrCast(self), result);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clone(self: *@This()) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguages(self: *@This(), languages: *IVectorView(HSTRING)) core.HResult!void {
        const _c = self.vtable.put_Languages(@ptrCast(self), languages);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2fa22f4b-707e-4b27-ad0d-d0d8cd468fd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QualifierValues: *const fn(self: *anyopaque, _r: **IObservableMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque, qualifierNames: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        OverrideToMatch: *const fn(self: *anyopaque, result: *IIterable(ResourceQualifier)) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **ResourceContext) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        put_Languages: *const fn(self: *anyopaque, languages: *IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceContextStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateMatchingContext(self: *@This(), result: *IIterable(ResourceQualifier)) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.CreateMatchingContext(@ptrCast(self), result, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceContextStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98be9d6c-6338-4b31-99df-b2b442f17149";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMatchingContext: *const fn(self: *anyopaque, result: *IIterable(ResourceQualifier), _r: **ResourceContext) callconv(.winapi) HRESULT,
    };
};
pub const IResourceContextStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetGlobalQualifierValue(self: *@This(), key: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetGlobalQualifierValue(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetGlobalQualifierValues(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResetGlobalQualifierValues(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResetGlobalQualifierValues(self: *@This(), qualifierNames: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.ResetGlobalQualifierValues(@ptrCast(self), qualifierNames);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetForViewIndependentUse(self: *@This()) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.GetForViewIndependentUse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceContextStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41f752ef-12af-41b9-ab36-b1eb4b512460";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ResourceContext) callconv(.winapi) HRESULT,
        SetGlobalQualifierValue: *const fn(self: *anyopaque, key: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        ResetGlobalQualifierValues: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ResetGlobalQualifierValues: *const fn(self: *anyopaque, qualifierNames: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        GetForViewIndependentUse: *const fn(self: *anyopaque, _r: **ResourceContext) callconv(.winapi) HRESULT,
    };
};
pub const IResourceContextStatics3 = extern struct {
    vtable: *const VTable,
    pub fn SetGlobalQualifierValue(self: *@This(), key: HSTRING, value: HSTRING, persistence: ResourceQualifierPersistence) core.HResult!void {
        const _c = self.vtable.SetGlobalQualifierValue(@ptrCast(self), key, value, persistence);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceContextStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20cf492c-af0f-450b-9da6-106dd0c29a39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetGlobalQualifierValue: *const fn(self: *anyopaque, key: HSTRING, value: HSTRING, persistence: ResourceQualifierPersistence) callconv(.winapi) HRESULT,
    };
};
pub const IResourceContextStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetForUIContext(self: *@This(), context: *UIContext) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.GetForUIContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceContextStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22eb9ccd-fb31-4bfa-b86b-df9d9d7bdc39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUIContext: *const fn(self: *anyopaque, context: *UIContext, _r: **ResourceContext) callconv(.winapi) HRESULT,
    };
};
pub const IResourceManager = extern struct {
    vtable: *const VTable,
    pub fn getMainResourceMap(self: *@This()) core.HResult!*ResourceMap {
        var _r: *ResourceMap = undefined;
        const _c = self.vtable.get_MainResourceMap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllResourceMaps(self: *@This()) core.HResult!*IMapView(HSTRING,ResourceMap) {
        var _r: *IMapView(HSTRING,ResourceMap) = undefined;
        const _c = self.vtable.get_AllResourceMaps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultContext(self: *@This()) core.HResult!*ResourceContext {
        var _r: *ResourceContext = undefined;
        const _c = self.vtable.get_DefaultContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadPriFiles(self: *@This(), files: *IIterable(IStorageFile)) core.HResult!void {
        const _c = self.vtable.LoadPriFiles(@ptrCast(self), files);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnloadPriFiles(self: *@This(), files: *IIterable(IStorageFile)) core.HResult!void {
        const _c = self.vtable.UnloadPriFiles(@ptrCast(self), files);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f744d97b-9988-44fb-abd6-5378844cfa8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MainResourceMap: *const fn(self: *anyopaque, _r: **ResourceMap) callconv(.winapi) HRESULT,
        get_AllResourceMaps: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,ResourceMap)) callconv(.winapi) HRESULT,
        get_DefaultContext: *const fn(self: *anyopaque, _r: **ResourceContext) callconv(.winapi) HRESULT,
        LoadPriFiles: *const fn(self: *anyopaque, files: *IIterable(IStorageFile)) callconv(.winapi) HRESULT,
        UnloadPriFiles: *const fn(self: *anyopaque, files: *IIterable(IStorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceManager2 = extern struct {
    vtable: *const VTable,
    pub fn GetAllNamedResourcesForPackage(self: *@This(), packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo) core.HResult!*IVectorView(NamedResource) {
        var _r: *IVectorView(NamedResource) = undefined;
        const _c = self.vtable.GetAllNamedResourcesForPackage(@ptrCast(self), packageName, resourceLayoutInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllSubtreesForPackage(self: *@This(), packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo) core.HResult!*IVectorView(ResourceMap) {
        var _r: *IVectorView(ResourceMap) = undefined;
        const _c = self.vtable.GetAllSubtreesForPackage(@ptrCast(self), packageName, resourceLayoutInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d66fe6c-a4d7-4c23-9e85-675f304c252d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAllNamedResourcesForPackage: *const fn(self: *anyopaque, packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo, _r: **IVectorView(NamedResource)) callconv(.winapi) HRESULT,
        GetAllSubtreesForPackage: *const fn(self: *anyopaque, packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo, _r: **IVectorView(ResourceMap)) callconv(.winapi) HRESULT,
    };
};
pub const IResourceManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*ResourceManager {
        var _r: *ResourceManager = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsResourceReference(self: *@This(), resourceReference: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsResourceReference(@ptrCast(self), resourceReference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1cc0fdfc-69ee-4e43-9901-47f12687baf7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **ResourceManager) callconv(.winapi) HRESULT,
        IsResourceReference: *const fn(self: *anyopaque, resourceReference: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IResourceMap = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValue(self: *@This(), resource: HSTRING) core.HResult!*ResourceCandidate {
        var _r: *ResourceCandidate = undefined;
        const _c = self.vtable.GetValue(@ptrCast(self), resource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetValue(self: *@This(), resource: HSTRING, context: *ResourceContext) core.HResult!*ResourceCandidate {
        var _r: *ResourceCandidate = undefined;
        const _c = self.vtable.GetValue(@ptrCast(self), resource, context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSubtree(self: *@This(), reference: HSTRING) core.HResult!*ResourceMap {
        var _r: *ResourceMap = undefined;
        const _c = self.vtable.GetSubtree(@ptrCast(self), reference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72284824-db8c-42f8-b08c-53ff357dad82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        GetValue: *const fn(self: *anyopaque, resource: HSTRING, _r: **ResourceCandidate) callconv(.winapi) HRESULT,
        GetValue: *const fn(self: *anyopaque, resource: HSTRING, context: *ResourceContext, _r: **ResourceCandidate) callconv(.winapi) HRESULT,
        GetSubtree: *const fn(self: *anyopaque, reference: HSTRING, _r: **ResourceMap) callconv(.winapi) HRESULT,
    };
};
pub const IResourceQualifier = extern struct {
    vtable: *const VTable,
    pub fn getQualifierName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QualifierName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQualifierValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QualifierValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMatch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMatch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScore(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Score(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.IResourceQualifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "785da5b2-4afd-4376-a888-c5f9a6b7a05c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QualifierName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QualifierValue: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMatch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Score: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const NamedResource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *INamedResource = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getCandidates(self: *@This()) core.HResult!*IVectorView(ResourceCandidate) {
        const this: *INamedResource = @ptrCast(self);
        return try this.getCandidates();
    }
    pub fn Resolve(self: *@This()) core.HResult!*ResourceCandidate {
        const this: *INamedResource = @ptrCast(self);
        return try this.Resolve();
    }
    pub fn Resolve(self: *@This(), resourceContext: *ResourceContext) core.HResult!*ResourceCandidate {
        const this: *INamedResource = @ptrCast(self);
        return try this.Resolve(resourceContext);
    }
    pub fn ResolveAll(self: *@This()) core.HResult!*IVectorView(ResourceCandidate) {
        const this: *INamedResource = @ptrCast(self);
        return try this.ResolveAll();
    }
    pub fn ResolveAll(self: *@This(), resourceContext: *ResourceContext) core.HResult!*IVectorView(ResourceCandidate) {
        const this: *INamedResource = @ptrCast(self);
        return try this.ResolveAll(resourceContext);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.NamedResource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INamedResource.GUID;
    pub const IID: Guid = INamedResource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INamedResource.SIGNATURE);
};
pub const ResourceCandidate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualifiers(self: *@This()) core.HResult!*IVectorView(ResourceQualifier) {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.getQualifiers();
    }
    pub fn getIsMatch(self: *@This()) core.HResult!bool {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.getIsMatch();
    }
    pub fn getIsMatchAsDefault(self: *@This()) core.HResult!bool {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.getIsMatchAsDefault();
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.getIsDefault();
    }
    pub fn getValueAsString(self: *@This()) core.HResult!HSTRING {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.getValueAsString();
    }
    pub fn GetValueAsFileAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.GetValueAsFileAsync();
    }
    pub fn GetQualifierValue(self: *@This(), qualifierName: HSTRING) core.HResult!HSTRING {
        const this: *IResourceCandidate = @ptrCast(self);
        return try this.GetQualifierValue(qualifierName);
    }
    pub fn GetValueAsStreamAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStream) {
        var this: ?*IResourceCandidate2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IResourceCandidate2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetValueAsStreamAsync();
    }
    pub fn getKind(self: *@This()) core.HResult!ResourceCandidateKind {
        var this: ?*IResourceCandidate3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IResourceCandidate3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceCandidate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceCandidate.GUID;
    pub const IID: Guid = IResourceCandidate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceCandidate.SIGNATURE);
};
pub const ResourceCandidateKind = enum(i32) {
    String = 0,
    File = 1,
    EmbeddedData = 2,
};
pub const ResourceCandidateVectorView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*ResourceCandidate {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *ResourceCandidate, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]ResourceCandidate) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(ResourceCandidate) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceCandidateVectorView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const ResourceContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualifierValues(self: *@This()) core.HResult!*IObservableMap(HSTRING,HSTRING) {
        const this: *IResourceContext = @ptrCast(self);
        return try this.getQualifierValues();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IResourceContext = @ptrCast(self);
        return try this.Reset();
    }
    pub fn Reset(self: *@This(), qualifierNames: *IIterable(HSTRING)) core.HResult!void {
        const this: *IResourceContext = @ptrCast(self);
        return try this.Reset(qualifierNames);
    }
    pub fn OverrideToMatch(self: *@This(), result: *IIterable(ResourceQualifier)) core.HResult!void {
        const this: *IResourceContext = @ptrCast(self);
        return try this.OverrideToMatch(result);
    }
    pub fn Clone(self: *@This()) core.HResult!*ResourceContext {
        const this: *IResourceContext = @ptrCast(self);
        return try this.Clone();
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IResourceContext = @ptrCast(self);
        return try this.getLanguages();
    }
    pub fn putLanguages(self: *@This(), languages: *IVectorView(HSTRING)) core.HResult!void {
        const this: *IResourceContext = @ptrCast(self);
        return try this.putLanguages(languages);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IResourceContext.IID)));
    }
    pub fn CreateMatchingContext(result: *IIterable(ResourceQualifier)) core.HResult!*ResourceContext {
        const factory = @This().IResourceContextStaticsCache.get();
        return try factory.CreateMatchingContext(result);
    }
    pub fn GetForCurrentView() core.HResult!*ResourceContext {
        const factory = @This().IResourceContextStatics2Cache.get();
        return try factory.GetForCurrentView();
    }
    pub fn SetGlobalQualifierValue(key: HSTRING, value: HSTRING) core.HResult!void {
        const factory = @This().IResourceContextStatics2Cache.get();
        return try factory.SetGlobalQualifierValue(key, value);
    }
    pub fn ResetGlobalQualifierValues() core.HResult!void {
        const factory = @This().IResourceContextStatics2Cache.get();
        return try factory.ResetGlobalQualifierValues();
    }
    pub fn ResetGlobalQualifierValues(qualifierNames: *IIterable(HSTRING)) core.HResult!void {
        const factory = @This().IResourceContextStatics2Cache.get();
        return try factory.ResetGlobalQualifierValues(qualifierNames);
    }
    pub fn GetForViewIndependentUse() core.HResult!*ResourceContext {
        const factory = @This().IResourceContextStatics2Cache.get();
        return try factory.GetForViewIndependentUse();
    }
    pub fn GetForUIContext(context: *UIContext) core.HResult!*ResourceContext {
        const factory = @This().IResourceContextStatics4Cache.get();
        return try factory.GetForUIContext(context);
    }
    pub fn SetGlobalQualifierValue(key: HSTRING, value: HSTRING, persistence: ResourceQualifierPersistence) core.HResult!void {
        const factory = @This().IResourceContextStatics3Cache.get();
        return try factory.SetGlobalQualifierValue(key, value, persistence);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceContext.GUID;
    pub const IID: Guid = IResourceContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceContext.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IResourceContextStaticsCache: FactoryCache(IResourceContextStatics, RUNTIME_NAME) = .{};
    var _IResourceContextStatics2Cache: FactoryCache(IResourceContextStatics2, RUNTIME_NAME) = .{};
    var _IResourceContextStatics4Cache: FactoryCache(IResourceContextStatics4, RUNTIME_NAME) = .{};
    var _IResourceContextStatics3Cache: FactoryCache(IResourceContextStatics3, RUNTIME_NAME) = .{};
};
pub const ResourceContextLanguagesVectorView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!HSTRING {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: HSTRING, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]HSTRING) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HSTRING) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceContextLanguagesVectorView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const ResourceLayoutInfo = extern struct {
    MajorVersion: u32,
    MinorVersion: u32,
    ResourceSubtreeCount: u32,
    NamedResourceCount: u32,
    Checksum: i32,
};
pub const ResourceManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMainResourceMap(self: *@This()) core.HResult!*ResourceMap {
        const this: *IResourceManager = @ptrCast(self);
        return try this.getMainResourceMap();
    }
    pub fn getAllResourceMaps(self: *@This()) core.HResult!*IMapView(HSTRING,ResourceMap) {
        const this: *IResourceManager = @ptrCast(self);
        return try this.getAllResourceMaps();
    }
    pub fn getDefaultContext(self: *@This()) core.HResult!*ResourceContext {
        const this: *IResourceManager = @ptrCast(self);
        return try this.getDefaultContext();
    }
    pub fn LoadPriFiles(self: *@This(), files: *IIterable(IStorageFile)) core.HResult!void {
        const this: *IResourceManager = @ptrCast(self);
        return try this.LoadPriFiles(files);
    }
    pub fn UnloadPriFiles(self: *@This(), files: *IIterable(IStorageFile)) core.HResult!void {
        const this: *IResourceManager = @ptrCast(self);
        return try this.UnloadPriFiles(files);
    }
    pub fn GetAllNamedResourcesForPackage(self: *@This(), packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo) core.HResult!*IVectorView(NamedResource) {
        var this: ?*IResourceManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IResourceManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllNamedResourcesForPackage(packageName, resourceLayoutInfo);
    }
    pub fn GetAllSubtreesForPackage(self: *@This(), packageName: HSTRING, resourceLayoutInfo: ResourceLayoutInfo) core.HResult!*IVectorView(ResourceMap) {
        var this: ?*IResourceManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IResourceManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllSubtreesForPackage(packageName, resourceLayoutInfo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*ResourceManager {
        const factory = @This().IResourceManagerStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn IsResourceReference(resourceReference: HSTRING) core.HResult!bool {
        const factory = @This().IResourceManagerStaticsCache.get();
        return try factory.IsResourceReference(resourceReference);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceManager.GUID;
    pub const IID: Guid = IResourceManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceManager.SIGNATURE);
    var _IResourceManagerStaticsCache: FactoryCache(IResourceManagerStatics, RUNTIME_NAME) = .{};
};
pub const ResourceMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IResourceMap = @ptrCast(self);
        return try this.getUri();
    }
    pub fn GetValue(self: *@This(), resource: HSTRING) core.HResult!*ResourceCandidate {
        const this: *IResourceMap = @ptrCast(self);
        return try this.GetValue(resource);
    }
    pub fn GetValue(self: *@This(), resource: HSTRING, context: *ResourceContext) core.HResult!*ResourceCandidate {
        const this: *IResourceMap = @ptrCast(self);
        return try this.GetValue(resource, context);
    }
    pub fn GetSubtree(self: *@This(), reference: HSTRING) core.HResult!*ResourceMap {
        const this: *IResourceMap = @ptrCast(self);
        return try this.GetSubtree(reference);
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*NamedResource {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,NamedResource), second: *IMapView(HSTRING,NamedResource)) core.HResult!void {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,NamedResource)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceMap.GUID;
    pub const IID: Guid = IResourceMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceMap.SIGNATURE);
};
pub const ResourceMapIterator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IKeyValuePair(HSTRING,NamedResource) {
        const this: *IIterator = @ptrCast(self);
        return try this.getCurrent();
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.getHasCurrent();
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn GetMany(self: *@This(), items: [*]IKeyValuePair(HSTRING,NamedResource)) core.HResult!u32 {
        const this: *IIterator = @ptrCast(self);
        return try this.GetMany(items);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceMapIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterator.GUID;
    pub const IID: Guid = IIterator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterator.SIGNATURE);
};
pub const ResourceMapMapView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*ResourceMap {
        const this: *IMapView = @ptrCast(self);
        return try this.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMapView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        const this: *IMapView = @ptrCast(self);
        return try this.HasKey(key);
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,ResourceMap), second: *IMapView(HSTRING,ResourceMap)) core.HResult!void {
        const this: *IMapView = @ptrCast(self);
        return try this.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,ResourceMap)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceMapMapView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapView.GUID;
    pub const IID: Guid = IMapView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapView.SIGNATURE);
};
pub const ResourceMapMapViewIterator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*IKeyValuePair(HSTRING,ResourceMap) {
        const this: *IIterator = @ptrCast(self);
        return try this.getCurrent();
    }
    pub fn getHasCurrent(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.getHasCurrent();
    }
    pub fn MoveNext(self: *@This()) core.HResult!bool {
        const this: *IIterator = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn GetMany(self: *@This(), items: [*]IKeyValuePair(HSTRING,ResourceMap)) core.HResult!u32 {
        const this: *IIterator = @ptrCast(self);
        return try this.GetMany(items);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceMapMapViewIterator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIterator.GUID;
    pub const IID: Guid = IIterator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIterator.SIGNATURE);
};
pub const ResourceQualifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQualifierName(self: *@This()) core.HResult!HSTRING {
        const this: *IResourceQualifier = @ptrCast(self);
        return try this.getQualifierName();
    }
    pub fn getQualifierValue(self: *@This()) core.HResult!HSTRING {
        const this: *IResourceQualifier = @ptrCast(self);
        return try this.getQualifierValue();
    }
    pub fn getIsDefault(self: *@This()) core.HResult!bool {
        const this: *IResourceQualifier = @ptrCast(self);
        return try this.getIsDefault();
    }
    pub fn getIsMatch(self: *@This()) core.HResult!bool {
        const this: *IResourceQualifier = @ptrCast(self);
        return try this.getIsMatch();
    }
    pub fn getScore(self: *@This()) core.HResult!f64 {
        const this: *IResourceQualifier = @ptrCast(self);
        return try this.getScore();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceQualifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResourceQualifier.GUID;
    pub const IID: Guid = IResourceQualifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResourceQualifier.SIGNATURE);
};
pub const ResourceQualifierMapView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!HSTRING {
        const this: *IMapView = @ptrCast(self);
        return try this.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMapView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        const this: *IMapView = @ptrCast(self);
        return try this.HasKey(key);
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,HSTRING), second: *IMapView(HSTRING,HSTRING)) core.HResult!void {
        const this: *IMapView = @ptrCast(self);
        return try this.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceQualifierMapView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapView.GUID;
    pub const IID: Guid = IMapView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapView.SIGNATURE);
};
pub const ResourceQualifierObservableMap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMapChanged(self: *@This(), vhnd: *MapChangedEventHandler(HSTRING,HSTRING)) core.HResult!EventRegistrationToken {
        const this: *IObservableMap = @ptrCast(self);
        return try this.addMapChanged(vhnd);
    }
    pub fn removeMapChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IObservableMap = @ptrCast(self);
        return try this.removeMapChanged(token);
    }
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!HSTRING {
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
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IMap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Insert(self: *@This(), key: HSTRING, value: HSTRING) core.HResult!bool {
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
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceQualifierObservableMap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IObservableMap.GUID;
    pub const IID: Guid = IObservableMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IObservableMap.SIGNATURE);
};
pub const ResourceQualifierPersistence = enum(i32) {
    None = 0,
    LocalMachine = 1,
};
pub const ResourceQualifierVectorView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*ResourceQualifier {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *ResourceQualifier, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]ResourceQualifier) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(ResourceQualifier) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Resources.Core.ResourceQualifierVectorView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
const HSTRING = @import("../../root.zig").HSTRING;
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const MapChangedEventHandler = @import("../../Foundation/Collections.zig").MapChangedEventHandler;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const Uri = @import("../../Foundation.zig").Uri;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const IObservableMap = @import("../../Foundation/Collections.zig").IObservableMap;
const IRandomAccessStream = @import("../../Storage/Streams.zig").IRandomAccessStream;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const IStorageFile = @import("../../Storage.zig").IStorageFile;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const FactoryCache = @import("../../core.zig").FactoryCache;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const UIContext = @import("../../UI.zig").UIContext;
const StorageFile = @import("../../Storage.zig").StorageFile;
