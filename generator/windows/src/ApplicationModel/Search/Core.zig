pub const IRequestingFocusOnKeyboardInputEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.IRequestingFocusOnKeyboardInputEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1195f27-b1a7-41a2-879d-6a68687e5985";
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
pub const ISearchSuggestion = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!SearchSuggestionKind {
        var _r: SearchSuggestionKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetailText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DetailText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageAlternateText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ImageAlternateText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.ISearchSuggestion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b5554b0-1527-437b-95c5-8d18d2b8af55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *SearchSuggestionKind) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DetailText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_ImageAlternateText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ISearchSuggestionManager = extern struct {
    vtable: *const VTable,
    pub fn getSearchHistoryEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SearchHistoryEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchHistoryEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SearchHistoryEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSearchHistoryContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SearchHistoryContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchHistoryContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SearchHistoryContext(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetLocalContentSuggestionSettings(self: *@This(), settings: *LocalContentSuggestionSettings) core.HResult!void {
        const _c = self.vtable.SetLocalContentSuggestionSettings(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING) core.HResult!void {
        const _c = self.vtable.SetQuery(@ptrCast(self), queryText);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING, language: HSTRING) core.HResult!void {
        const _c = self.vtable.SetQuery(@ptrCast(self), queryText, language);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING, language: HSTRING, linguisticDetails: *SearchQueryLinguisticDetails) core.HResult!void {
        const _c = self.vtable.SetQuery(@ptrCast(self), queryText, language, linguisticDetails);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuggestions(self: *@This()) core.HResult!*IObservableVector(SearchSuggestion) {
        var _r: *IObservableVector(SearchSuggestion) = undefined;
        const _c = self.vtable.get_Suggestions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddToHistory(self: *@This(), queryText: HSTRING) core.HResult!void {
        const _c = self.vtable.AddToHistory(@ptrCast(self), queryText);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddToHistory(self: *@This(), queryText: HSTRING, language: HSTRING) core.HResult!void {
        const _c = self.vtable.AddToHistory(@ptrCast(self), queryText, language);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearHistory(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearHistory(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSuggestionsRequested(self: *@This(), handler: *TypedEventHandler(SearchSuggestionManager,SearchSuggestionsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SuggestionsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSuggestionsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SuggestionsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRequestingFocusOnKeyboardInput(self: *@This(), handler: *TypedEventHandler(SearchSuggestionManager,RequestingFocusOnKeyboardInputEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RequestingFocusOnKeyboardInput(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRequestingFocusOnKeyboardInput(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RequestingFocusOnKeyboardInput(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.ISearchSuggestionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f0c50a1-cb9d-497b-b500-3c04ac959ad2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SearchHistoryEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SearchHistoryEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SearchHistoryContext: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SearchHistoryContext: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetLocalContentSuggestionSettings: *const fn(self: *anyopaque, settings: *LocalContentSuggestionSettings) callconv(.winapi) HRESULT,
        SetQuery: *const fn(self: *anyopaque, queryText: HSTRING) callconv(.winapi) HRESULT,
        SetQuery: *const fn(self: *anyopaque, queryText: HSTRING, language: HSTRING) callconv(.winapi) HRESULT,
        SetQuery: *const fn(self: *anyopaque, queryText: HSTRING, language: HSTRING, linguisticDetails: *SearchQueryLinguisticDetails) callconv(.winapi) HRESULT,
        get_Suggestions: *const fn(self: *anyopaque, _r: **IObservableVector(SearchSuggestion)) callconv(.winapi) HRESULT,
        AddToHistory: *const fn(self: *anyopaque, queryText: HSTRING) callconv(.winapi) HRESULT,
        AddToHistory: *const fn(self: *anyopaque, queryText: HSTRING, language: HSTRING) callconv(.winapi) HRESULT,
        ClearHistory: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_SuggestionsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchSuggestionManager,SearchSuggestionsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SuggestionsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RequestingFocusOnKeyboardInput: *const fn(self: *anyopaque, handler: *TypedEventHandler(SearchSuggestionManager,RequestingFocusOnKeyboardInputEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RequestingFocusOnKeyboardInput: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISearchSuggestionsRequestedEventArgs = extern struct {
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
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchQueryLinguisticDetails {
        var _r: *SearchQueryLinguisticDetails = undefined;
        const _c = self.vtable.get_LinguisticDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequest(self: *@This()) core.HResult!*SearchSuggestionsRequest {
        var _r: *SearchSuggestionsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.ISearchSuggestionsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fd519e5-9e7e-4ab4-8be3-c76b1bd4344a";
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
        get_LinguisticDetails: *const fn(self: *anyopaque, _r: **SearchQueryLinguisticDetails) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **SearchSuggestionsRequest) callconv(.winapi) HRESULT,
    };
};
pub const RequestingFocusOnKeyboardInputEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.RequestingFocusOnKeyboardInputEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRequestingFocusOnKeyboardInputEventArgs.GUID;
    pub const IID: Guid = IRequestingFocusOnKeyboardInputEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRequestingFocusOnKeyboardInputEventArgs.SIGNATURE);
};
pub const SearchSuggestion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!SearchSuggestionKind {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getText();
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getTag();
    }
    pub fn getDetailText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getDetailText();
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getImage();
    }
    pub fn getImageAlternateText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestion = @ptrCast(self);
        return try this.getImageAlternateText();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.SearchSuggestion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestion.GUID;
    pub const IID: Guid = ISearchSuggestion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestion.SIGNATURE);
};
pub const SearchSuggestionKind = enum(i32) {
    Query = 0,
    Result = 1,
    Separator = 2,
};
pub const SearchSuggestionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSearchHistoryEnabled(self: *@This()) core.HResult!bool {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.getSearchHistoryEnabled();
    }
    pub fn putSearchHistoryEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.putSearchHistoryEnabled(value);
    }
    pub fn getSearchHistoryContext(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.getSearchHistoryContext();
    }
    pub fn putSearchHistoryContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.putSearchHistoryContext(value);
    }
    pub fn SetLocalContentSuggestionSettings(self: *@This(), settings: *LocalContentSuggestionSettings) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.SetLocalContentSuggestionSettings(settings);
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.SetQuery(queryText);
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING, language: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.SetQuery(queryText, language);
    }
    pub fn SetQuery(self: *@This(), queryText: HSTRING, language: HSTRING, linguisticDetails: *SearchQueryLinguisticDetails) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.SetQuery(queryText, language, linguisticDetails);
    }
    pub fn getSuggestions(self: *@This()) core.HResult!*IObservableVector(SearchSuggestion) {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.getSuggestions();
    }
    pub fn AddToHistory(self: *@This(), queryText: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.AddToHistory(queryText);
    }
    pub fn AddToHistory(self: *@This(), queryText: HSTRING, language: HSTRING) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.AddToHistory(queryText, language);
    }
    pub fn ClearHistory(self: *@This()) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.ClearHistory();
    }
    pub fn addSuggestionsRequested(self: *@This(), handler: *TypedEventHandler(SearchSuggestionManager,SearchSuggestionsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.addSuggestionsRequested(handler);
    }
    pub fn removeSuggestionsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.removeSuggestionsRequested(token);
    }
    pub fn addRequestingFocusOnKeyboardInput(self: *@This(), handler: *TypedEventHandler(SearchSuggestionManager,RequestingFocusOnKeyboardInputEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.addRequestingFocusOnKeyboardInput(handler);
    }
    pub fn removeRequestingFocusOnKeyboardInput(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISearchSuggestionManager = @ptrCast(self);
        return try this.removeRequestingFocusOnKeyboardInput(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISearchSuggestionManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.SearchSuggestionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestionManager.GUID;
    pub const IID: Guid = ISearchSuggestionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestionManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SearchSuggestionsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getQueryText(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestionsRequestedEventArgs = @ptrCast(self);
        return try this.getQueryText();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISearchSuggestionsRequestedEventArgs = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getLinguisticDetails(self: *@This()) core.HResult!*SearchQueryLinguisticDetails {
        const this: *ISearchSuggestionsRequestedEventArgs = @ptrCast(self);
        return try this.getLinguisticDetails();
    }
    pub fn getRequest(self: *@This()) core.HResult!*SearchSuggestionsRequest {
        const this: *ISearchSuggestionsRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Search.Core.SearchSuggestionsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchSuggestionsRequestedEventArgs.GUID;
    pub const IID: Guid = ISearchSuggestionsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchSuggestionsRequestedEventArgs.SIGNATURE);
};
const IRandomAccessStreamReference = @import("../../Storage/Streams.zig").IRandomAccessStreamReference;
const IUnknown = @import("../../root.zig").IUnknown;
const SearchSuggestionsRequest = @import("../Search.zig").SearchSuggestionsRequest;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const LocalContentSuggestionSettings = @import("../Search.zig").LocalContentSuggestionSettings;
const IObservableVector = @import("../../Foundation/Collections.zig").IObservableVector;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const SearchQueryLinguisticDetails = @import("../Search.zig").SearchQueryLinguisticDetails;
const HSTRING = @import("../../root.zig").HSTRING;
