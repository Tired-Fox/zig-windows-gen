pub const ILocalContentSuggestionSettings = extern struct {
    vtable: *const VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocations(self: *@This()) core.HResult!*IVector(StorageFolder) {
        var _r: *IVector(StorageFolder) = undefined;
        const _c = self.vtable.get_Locations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAqsFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AqsFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAqsFilter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AqsFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPropertiesToMatch(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_PropertiesToMatch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ILocalContentSuggestionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eeaeb062-743d-456e-84a3-23f06f2d15d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Locations: *const fn(self: *anyopaque, _r: **IVector(StorageFolder)) callconv(.winapi) HRESULT,
        put_AqsFilter: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AqsFilter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PropertiesToMatch: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneQueryLinguisticDetails = extern struct {
    vtable: *const VTable,
    pub fn getQueryTextAlternatives(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_QueryTextAlternatives(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryTextCompositionStart(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_QueryTextCompositionStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryTextCompositionLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_QueryTextCompositionLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneQueryLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82fb460e-0940-4b6d-b8d0-642b30989e15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QueryTextAlternatives: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_QueryTextCompositionStart: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_QueryTextCompositionLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ISearchQueryLinguisticDetails = extern struct {
    vtable: *const VTable,
    pub fn getQueryTextAlternatives(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_QueryTextAlternatives(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryTextCompositionStart(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_QueryTextCompositionStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryTextCompositionLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_QueryTextCompositionLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchQueryLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46a1205b-69c9-4745-b72f-a8a4fc8f24ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QueryTextAlternatives: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_QueryTextCompositionStart: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_QueryTextCompositionLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ISearchQueryLinguisticDetailsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), queryTextAlternatives: *IIterable(HSTRING), queryTextCompositionStart: u32, queryTextCompositionLength: u32) core.HResult!*SearchQueryLinguisticDetails {
        var _r: *SearchQueryLinguisticDetails = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), queryTextAlternatives, queryTextCompositionStart, queryTextCompositionLength, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchQueryLinguisticDetailsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cac6c3b8-3c64-4dfd-ad9f-479e4d4065a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, queryTextAlternatives: *IIterable(HSTRING), queryTextCompositionStart: u32, queryTextCompositionLength: u32, _r: **SearchQueryLinguisticDetails) callconv(.winapi) HRESULT,
    };
};
pub const ISearchSuggestionCollection = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AppendQuerySuggestion(self: *@This(), text: HSTRING) core.HResult!void {
        const _c = self.vtable.AppendQuerySuggestion(@ptrCast(self), text);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendQuerySuggestions(self: *@This(), suggestions: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.AppendQuerySuggestions(@ptrCast(self), suggestions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendResultSuggestion(self: *@This(), text: HSTRING, detailText: HSTRING, tag: HSTRING, image: *IRandomAccessStreamReference, imageAlternateText: HSTRING) core.HResult!void {
        const _c = self.vtable.AppendResultSuggestion(@ptrCast(self), text, detailText, tag, image, imageAlternateText);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendSearchSeparator(self: *@This(), label: HSTRING) core.HResult!void {
        const _c = self.vtable.AppendSearchSeparator(@ptrCast(self), label);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchSuggestionCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "323a8a4b-fbea-4446-abbc-3da7915fdd3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        AppendQuerySuggestion: *const fn(self: *anyopaque, text: HSTRING) callconv(.winapi) HRESULT,
        AppendQuerySuggestions: *const fn(self: *anyopaque, suggestions: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        AppendResultSuggestion: *const fn(self: *anyopaque, text: HSTRING, detailText: HSTRING, tag: HSTRING, image: *IRandomAccessStreamReference, imageAlternateText: HSTRING) callconv(.winapi) HRESULT,
        AppendSearchSeparator: *const fn(self: *anyopaque, label: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISearchSuggestionsRequest = extern struct {
    vtable: *const VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSearchSuggestionCollection(self: *@This()) core.HResult!*SearchSuggestionCollection {
        var _r: *SearchSuggestionCollection = undefined;
        const _c = self.vtable.get_SearchSuggestionCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SearchSuggestionsRequestDeferral {
        var _r: *SearchSuggestionsRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchSuggestionsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e4e26a7-44e5-4039-9099-6000ead1f0c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SearchSuggestionCollection: *const fn(self: *anyopaque, _r: **SearchSuggestionCollection) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **SearchSuggestionsRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const ISearchSuggestionsRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchSuggestionsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b71598a9-c065-456d-a845-1eccec5dc28b";
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
pub const LocalContentSuggestionSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn getLocations(self: *@This()) core.HResult!*IVector(StorageFolder) {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.getLocations();
    }
    pub fn putAqsFilter(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.putAqsFilter(value);
    }
    pub fn getAqsFilter(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.getAqsFilter();
    }
    pub fn getPropertiesToMatch(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *ILocalContentSuggestionSettings = @ptrCast(self);
        return try this.getPropertiesToMatch();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILocalContentSuggestionSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.LocalContentSuggestionSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalContentSuggestionSettings.GUID;
    pub const IID: Guid = ILocalContentSuggestionSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalContentSuggestionSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SearchPaneQueryLinguisticDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryTextAlternatives(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISearchPaneQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextAlternatives();
    }
    pub fn getQueryTextCompositionStart(self: *@This()) core.HResult!u32 {
        const this: *ISearchPaneQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextCompositionStart();
    }
    pub fn getQueryTextCompositionLength(self: *@This()) core.HResult!u32 {
        const this: *ISearchPaneQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextCompositionLength();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneQueryLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneQueryLinguisticDetails.GUID;
    pub const IID: Guid = ISearchPaneQueryLinguisticDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneQueryLinguisticDetails.SIGNATURE);
};
pub const SearchQueryLinguisticDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryTextAlternatives(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ISearchQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextAlternatives();
    }
    pub fn getQueryTextCompositionStart(self: *@This()) core.HResult!u32 {
        const this: *ISearchQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextCompositionStart();
    }
    pub fn getQueryTextCompositionLength(self: *@This()) core.HResult!u32 {
        const this: *ISearchQueryLinguisticDetails = @ptrCast(self);
        return try this.getQueryTextCompositionLength();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(queryTextAlternatives: *IIterable(HSTRING), queryTextCompositionStart: u32, queryTextCompositionLength: u32) core.HResult!*SearchQueryLinguisticDetails {
        const _f = @This().ISearchQueryLinguisticDetailsFactoryCache.get();
        return try _f.CreateInstance(queryTextAlternatives, queryTextCompositionStart, queryTextCompositionLength);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchQueryLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchQueryLinguisticDetails.GUID;
    pub const IID: Guid = ISearchQueryLinguisticDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchQueryLinguisticDetails.SIGNATURE);
    var _ISearchQueryLinguisticDetailsFactoryCache: FactoryCache(ISearchQueryLinguisticDetailsFactory, RUNTIME_NAME) = .{};
};
pub const SearchSuggestionCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *ISearchSuggestionCollection = @ptrCast(self);
        return try this.getSize();
    }
    pub fn AppendQuerySuggestion(self: *@This(), text: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionCollection = @ptrCast(self);
        return try this.AppendQuerySuggestion(text);
    }
    pub fn AppendQuerySuggestions(self: *@This(), suggestions: *IIterable(HSTRING)) core.HResult!void {
        const this: *ISearchSuggestionCollection = @ptrCast(self);
        return try this.AppendQuerySuggestions(suggestions);
    }
    pub fn AppendResultSuggestion(self: *@This(), text: HSTRING, detailText: HSTRING, tag: HSTRING, image: *IRandomAccessStreamReference, imageAlternateText: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionCollection = @ptrCast(self);
        return try this.AppendResultSuggestion(text, detailText, tag, image, imageAlternateText);
    }
    pub fn AppendSearchSeparator(self: *@This(), label: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionCollection = @ptrCast(self);
        return try this.AppendSearchSeparator(label);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchSuggestionCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestionCollection.GUID;
    pub const IID: Guid = ISearchSuggestionCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestionCollection.SIGNATURE);
};
pub const SearchSuggestionsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ISearchSuggestionsRequest = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn getSearchSuggestionCollection(self: *@This()) core.HResult!*SearchSuggestionCollection {
        const this: *ISearchSuggestionsRequest = @ptrCast(self);
        return try this.getSearchSuggestionCollection();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SearchSuggestionsRequestDeferral {
        const this: *ISearchSuggestionsRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchSuggestionsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestionsRequest.GUID;
    pub const IID: Guid = ISearchSuggestionsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestionsRequest.SIGNATURE);
};
pub const SearchSuggestionsRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ISearchSuggestionsRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchSuggestionsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestionsRequestDeferral.GUID;
    pub const IID: Guid = ISearchSuggestionsRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestionsRequestDeferral.SIGNATURE);
};
pub const ISearchPane = extern struct {
    vtable: *const VTable,
    pub fn putSearchHistoryEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SearchHistoryEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSearchHistoryEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SearchHistoryEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchHistoryContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SearchHistoryContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSearchHistoryContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SearchHistoryContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaceholderText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PlaceholderText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaceholderText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PlaceholderText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneVisibilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisibilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisibilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addQueryChanged(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneQueryChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_QueryChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeQueryChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_QueryChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSuggestionsRequested(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneSuggestionsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SuggestionsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSuggestionsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SuggestionsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addQuerySubmitted(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneQuerySubmittedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_QuerySubmitted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeQuerySubmitted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_QuerySubmitted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResultSuggestionChosen(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneResultSuggestionChosenEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResultSuggestionChosen(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResultSuggestionChosen(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResultSuggestionChosen(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetLocalContentSuggestionSettings(self: *@This(), settings: *LocalContentSuggestionSettings) core.HResult!void {
        const _c = self.vtable.SetLocalContentSuggestionSettings(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Show(self: *@This()) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowWithQuery(self: *@This(), query: HSTRING) core.HResult!void {
        const _c = self.vtable.ShowWithQuery(@ptrCast(self), query);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putShowOnKeyboardInput(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShowOnKeyboardInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowOnKeyboardInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShowOnKeyboardInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetQueryText(self: *@This(), query: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetQueryText(@ptrCast(self), query, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdacec38-3700-4d73-91a1-2f998674238a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_SearchHistoryEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SearchHistoryEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SearchHistoryContext: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SearchHistoryContext: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PlaceholderText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PlaceholderText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_QueryText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_VisibilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchPane,SearchPaneVisibilityChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisibilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_QueryChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchPane,SearchPaneQueryChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_QueryChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SuggestionsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchPane,SearchPaneSuggestionsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SuggestionsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_QuerySubmitted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchPane,SearchPaneQuerySubmittedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_QuerySubmitted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResultSuggestionChosen: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchPane,SearchPaneResultSuggestionChosenEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResultSuggestionChosen: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetLocalContentSuggestionSettings: *const fn(self: *anyopaque, settings: *LocalContentSuggestionSettings) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ShowWithQuery: *const fn(self: *anyopaque, query: HSTRING) callconv(.winapi) HRESULT,
        put_ShowOnKeyboardInput: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShowOnKeyboardInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TrySetQueryText: *const fn(self: *anyopaque, query: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneQueryChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var _r: *SearchPaneQueryLinguisticDetails = undefined;
        const _c = self.vtable.get_LinguisticDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneQueryChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c064fe9-2351-4248-a529-7110f464a785";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QueryText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LinguisticDetails: *const fn(self: *anyopaque, _r: **SearchPaneQueryLinguisticDetails) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneQuerySubmittedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_QueryText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "143ba4fc-e9c5-4736-91b2-e8eb9cb88356";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_QueryText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails = extern struct {
    vtable: *const VTable,
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var _r: *SearchPaneQueryLinguisticDetails = undefined;
        const _c = self.vtable.get_LinguisticDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "460c92e5-4c32-4538-a4d4-b6b4400d140f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LinguisticDetails: *const fn(self: *anyopaque, _r: **SearchPaneQueryLinguisticDetails) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneResultSuggestionChosenEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneResultSuggestionChosenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8316cc0-aed2-41e0-bce0-c26ca74f85ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SearchPane {
        var _r: *SearchPane = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9572adf1-8f1d-481f-a15b-c61655f16a0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SearchPane) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneStaticsWithHideThisApplication = extern struct {
    vtable: *const VTable,
    pub fn HideThisApplication(self: *@This()) core.HResult!void {
        const _c = self.vtable.HideThisApplication(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneStaticsWithHideThisApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00732830-50f1-4d03-99ac-c6644c8ed8b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        HideThisApplication: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneSuggestionsRequest = extern struct {
    vtable: *const VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCanceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSearchSuggestionCollection(self: *@This()) core.HResult!*SearchSuggestionCollection {
        var _r: *SearchSuggestionCollection = undefined;
        const _c = self.vtable.get_SearchSuggestionCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SearchPaneSuggestionsRequestDeferral {
        var _r: *SearchPaneSuggestionsRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81b10b1c-e561-4093-9b4d-2ad482794a53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCanceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SearchSuggestionCollection: *const fn(self: *anyopaque, _r: **SearchSuggestionCollection) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **SearchPaneSuggestionsRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneSuggestionsRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0d009f7-8748-4ee2-ad44-afa6be997c51";
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
pub const ISearchPaneSuggestionsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*SearchPaneSuggestionsRequest {
        var _r: *SearchPaneSuggestionsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneSuggestionsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c89b8a2f-ac56-4460-8d2f-80023bec4fc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **SearchPaneSuggestionsRequest) callconv(.winapi) HRESULT,
    };
};
pub const ISearchPaneVisibilityChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.ISearchPaneVisibilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c4d3046-ac4b-49f2-97d6-020e6182cb9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const SearchPane = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putSearchHistoryEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.putSearchHistoryEnabled(value);
    }
    pub fn getSearchHistoryEnabled(self: *@This()) core.HResult!bool {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getSearchHistoryEnabled();
    }
    pub fn putSearchHistoryContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.putSearchHistoryContext(value);
    }
    pub fn getSearchHistoryContext(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getSearchHistoryContext();
    }
    pub fn putPlaceholderText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.putPlaceholderText(value);
    }
    pub fn getPlaceholderText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getPlaceholderText();
    }
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn addVisibilityChanged(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneVisibilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchPane = @ptrCast(self);
        return try this.addVisibilityChanged(handler);
    }
    pub fn removeVisibilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.removeVisibilityChanged(token);
    }
    pub fn addQueryChanged(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneQueryChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchPane = @ptrCast(self);
        return try this.addQueryChanged(handler);
    }
    pub fn removeQueryChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.removeQueryChanged(token);
    }
    pub fn addSuggestionsRequested(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneSuggestionsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchPane = @ptrCast(self);
        return try this.addSuggestionsRequested(handler);
    }
    pub fn removeSuggestionsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.removeSuggestionsRequested(token);
    }
    pub fn addQuerySubmitted(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneQuerySubmittedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchPane = @ptrCast(self);
        return try this.addQuerySubmitted(handler);
    }
    pub fn removeQuerySubmitted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.removeQuerySubmitted(token);
    }
    pub fn addResultSuggestionChosen(self: *@This(), handler: *TypedEventHandler(SearchPane,SearchPaneResultSuggestionChosenEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchPane = @ptrCast(self);
        return try this.addResultSuggestionChosen(handler);
    }
    pub fn removeResultSuggestionChosen(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.removeResultSuggestionChosen(token);
    }
    pub fn SetLocalContentSuggestionSettings(self: *@This(), settings: *LocalContentSuggestionSettings) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.SetLocalContentSuggestionSettings(settings);
    }
    pub fn Show(self: *@This()) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.Show();
    }
    pub fn ShowWithQuery(self: *@This(), query: HSTRING) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.ShowWithQuery(query);
    }
    pub fn putShowOnKeyboardInput(self: *@This(), value: bool) core.HResult!void {
        const this: *ISearchPane = @ptrCast(self);
        return try this.putShowOnKeyboardInput(value);
    }
    pub fn getShowOnKeyboardInput(self: *@This()) core.HResult!bool {
        const this: *ISearchPane = @ptrCast(self);
        return try this.getShowOnKeyboardInput();
    }
    pub fn TrySetQueryText(self: *@This(), query: HSTRING) core.HResult!bool {
        const this: *ISearchPane = @ptrCast(self);
        return try this.TrySetQueryText(query);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn HideThisApplication() core.HResult!void {
        const _f = @This().ISearchPaneStaticsWithHideThisApplicationCache.get();
        return try _f.HideThisApplication();
    }
    pub fn GetForCurrentView() core.HResult!*SearchPane {
        const _f = @This().ISearchPaneStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPane.GUID;
    pub const IID: Guid = ISearchPane.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPane.SIGNATURE);
    var _ISearchPaneStaticsWithHideThisApplicationCache: FactoryCache(ISearchPaneStaticsWithHideThisApplication, RUNTIME_NAME) = .{};
    var _ISearchPaneStaticsCache: FactoryCache(ISearchPaneStatics, RUNTIME_NAME) = .{};
};
pub const SearchPaneQueryChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPaneQueryChangedEventArgs = @ptrCast(self);
        return try this.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPaneQueryChangedEventArgs = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        const this: *ISearchPaneQueryChangedEventArgs = @ptrCast(self);
        return try this.getLinguisticDetails();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneQueryChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneQueryChangedEventArgs.GUID;
    pub const IID: Guid = ISearchPaneQueryChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneQueryChangedEventArgs.SIGNATURE);
};
pub const SearchPaneQuerySubmittedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPaneQuerySubmittedEventArgs = @ptrCast(self);
        return try this.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPaneQuerySubmittedEventArgs = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var this: ?*ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchPaneQuerySubmittedEventArgsWithLinguisticDetails.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLinguisticDetails();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneQuerySubmittedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneQuerySubmittedEventArgs.GUID;
    pub const IID: Guid = ISearchPaneQuerySubmittedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneQuerySubmittedEventArgs.SIGNATURE);
};
pub const SearchPaneResultSuggestionChosenEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchPaneResultSuggestionChosenEventArgs = @ptrCast(self);
        return try this.getTag();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneResultSuggestionChosenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneResultSuggestionChosenEventArgs.GUID;
    pub const IID: Guid = ISearchPaneResultSuggestionChosenEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneResultSuggestionChosenEventArgs.SIGNATURE);
};
pub const SearchPaneSuggestionsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCanceled(self: *@This()) core.HResult!bool {
        const this: *ISearchPaneSuggestionsRequest = @ptrCast(self);
        return try this.getIsCanceled();
    }
    pub fn getSearchSuggestionCollection(self: *@This()) core.HResult!*SearchSuggestionCollection {
        const this: *ISearchPaneSuggestionsRequest = @ptrCast(self);
        return try this.getSearchSuggestionCollection();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*SearchPaneSuggestionsRequestDeferral {
        const this: *ISearchPaneSuggestionsRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneSuggestionsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneSuggestionsRequest.GUID;
    pub const IID: Guid = ISearchPaneSuggestionsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneSuggestionsRequest.SIGNATURE);
};
pub const SearchPaneSuggestionsRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ISearchPaneSuggestionsRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneSuggestionsRequestDeferral.GUID;
    pub const IID: Guid = ISearchPaneSuggestionsRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneSuggestionsRequestDeferral.SIGNATURE);
};
pub const SearchPaneSuggestionsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*SearchPaneSuggestionsRequest {
        const this: *ISearchPaneSuggestionsRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISearchPaneQueryChangedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchPaneQueryChangedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*ISearchPaneQueryChangedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchPaneQueryChangedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchPaneQueryLinguisticDetails {
        var this: ?*ISearchPaneQueryChangedEventArgs = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISearchPaneQueryChangedEventArgs.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLinguisticDetails();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneSuggestionsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneSuggestionsRequestedEventArgs.GUID;
    pub const IID: Guid = ISearchPaneSuggestionsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneSuggestionsRequestedEventArgs.SIGNATURE);
};
pub const SearchPaneVisibilityChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *ISearchPaneVisibilityChangedEventArgs = @ptrCast(self);
        return try this.getVisible();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.SearchPaneVisibilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchPaneVisibilityChangedEventArgs.GUID;
    pub const IID: Guid = ISearchPaneVisibilityChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchPaneVisibilityChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const HSTRING = @import("../root.zig").HSTRING;
pub const Core = @import("./Search/Core.zig");
