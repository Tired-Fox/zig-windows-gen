pub const AlternateNormalizationFormat = enum(i32) {
    NotNormalized = 0,
    Number = 1,
    Currency = 3,
    Date = 4,
    Time = 5,
};
pub const AlternateWordForm = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        const this: *IAlternateWordForm = @ptrCast(self);
        return try this.getSourceTextSegment();
    }
    pub fn getAlternateText(self: *@This()) core.HResult!HSTRING {
        const this: *IAlternateWordForm = @ptrCast(self);
        return try this.getAlternateText();
    }
    pub fn getNormalizationFormat(self: *@This()) core.HResult!AlternateNormalizationFormat {
        const this: *IAlternateWordForm = @ptrCast(self);
        return try this.getNormalizationFormat();
    }
    pub const NAME: []const u8 = "Windows.Data.Text.AlternateWordForm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAlternateWordForm.GUID;
    pub const IID: Guid = IAlternateWordForm.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAlternateWordForm.SIGNATURE);
};
pub const IAlternateWordForm = extern struct {
    vtable: *const VTable,
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        var _r: TextSegment = undefined;
        const _c = self.vtable.get_SourceTextSegment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlternateText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizationFormat(self: *@This()) core.HResult!AlternateNormalizationFormat {
        var _r: AlternateNormalizationFormat = undefined;
        const _c = self.vtable.get_NormalizationFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.IAlternateWordForm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47396c1e-51b9-4207-9146-248e636a1d1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceTextSegment: *const fn(self: *anyopaque, _r: *TextSegment) callconv(.winapi) HRESULT,
        get_AlternateText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NormalizationFormat: *const fn(self: *anyopaque, _r: *AlternateNormalizationFormat) callconv(.winapi) HRESULT,
    };
};
pub const ISelectableWordSegment = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        var _r: TextSegment = undefined;
        const _c = self.vtable.get_SourceTextSegment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ISelectableWordSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "916a4cb7-8aa7-4c78-b374-5dedb752e60b";
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
        get_SourceTextSegment: *const fn(self: *anyopaque, _r: *TextSegment) callconv(.winapi) HRESULT,
    };
};
pub const ISelectableWordsSegmenter = extern struct {
    vtable: *const VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTokenAt(self: *@This(), text: HSTRING, startIndex: u32) core.HResult!*SelectableWordSegment {
        var _r: *SelectableWordSegment = undefined;
        const _c = self.vtable.GetTokenAt(@ptrCast(self), text, startIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTokens(self: *@This(), text: HSTRING) core.HResult!*IVectorView(SelectableWordSegment) {
        var _r: *IVectorView(SelectableWordSegment) = undefined;
        const _c = self.vtable.GetTokens(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Tokenize(self: *@This(), text: HSTRING, startIndex: u32, handler: *SelectableWordSegmentsTokenizingHandler) core.HResult!void {
        const _c = self.vtable.Tokenize(@ptrCast(self), text, startIndex, handler);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ISelectableWordsSegmenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6dc31e7-4b13-45c5-8897-7d71269e085d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetTokenAt: *const fn(self: *anyopaque, text: HSTRING, startIndex: u32, _r: **SelectableWordSegment) callconv(.winapi) HRESULT,
        GetTokens: *const fn(self: *anyopaque, text: HSTRING, _r: **IVectorView(SelectableWordSegment)) callconv(.winapi) HRESULT,
        Tokenize: *const fn(self: *anyopaque, text: HSTRING, startIndex: u32, handler: *SelectableWordSegmentsTokenizingHandler) callconv(.winapi) HRESULT,
    };
};
pub const ISelectableWordsSegmenterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithLanguage(self: *@This(), language: HSTRING) core.HResult!*SelectableWordsSegmenter {
        var _r: *SelectableWordsSegmenter = undefined;
        const _c = self.vtable.CreateWithLanguage(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ISelectableWordsSegmenterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c7a7648-6057-4339-bc70-f210010a4150";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithLanguage: *const fn(self: *anyopaque, language: HSTRING, _r: **SelectableWordsSegmenter) callconv(.winapi) HRESULT,
    };
};
pub const ISemanticTextQuery = extern struct {
    vtable: *const VTable,
    pub fn Find(self: *@This(), content: HSTRING) core.HResult!*IVectorView(TextSegment) {
        var _r: *IVectorView(TextSegment) = undefined;
        const _c = self.vtable.Find(@ptrCast(self), content, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindInProperty(self: *@This(), propertyContent: HSTRING, propertyName: HSTRING) core.HResult!*IVectorView(TextSegment) {
        var _r: *IVectorView(TextSegment) = undefined;
        const _c = self.vtable.FindInProperty(@ptrCast(self), propertyContent, propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ISemanticTextQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a1cab51-1fb2-4909-80b8-35731a2b3e7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Find: *const fn(self: *anyopaque, content: HSTRING, _r: **IVectorView(TextSegment)) callconv(.winapi) HRESULT,
        FindInProperty: *const fn(self: *anyopaque, propertyContent: HSTRING, propertyName: HSTRING, _r: **IVectorView(TextSegment)) callconv(.winapi) HRESULT,
    };
};
pub const ISemanticTextQueryFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), aqsFilter: HSTRING) core.HResult!*SemanticTextQuery {
        var _r: *SemanticTextQuery = undefined;
        const _c = self.vtable.Create(@ptrCast(self), aqsFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithLanguage(self: *@This(), aqsFilter: HSTRING, filterLanguage: HSTRING) core.HResult!*SemanticTextQuery {
        var _r: *SemanticTextQuery = undefined;
        const _c = self.vtable.CreateWithLanguage(@ptrCast(self), aqsFilter, filterLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ISemanticTextQueryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "238c0503-f995-4587-8777-a2b7d80acfef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, aqsFilter: HSTRING, _r: **SemanticTextQuery) callconv(.winapi) HRESULT,
        CreateWithLanguage: *const fn(self: *anyopaque, aqsFilter: HSTRING, filterLanguage: HSTRING, _r: **SemanticTextQuery) callconv(.winapi) HRESULT,
    };
};
pub const ITextConversionGenerator = extern struct {
    vtable: *const VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LanguageAvailableButNotInstalled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCandidatesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetCandidatesAsync(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCandidatesAsyncWithMaxCandidates(self: *@This(), input: HSTRING, maxCandidates: u32) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetCandidatesAsyncWithMaxCandidates(@ptrCast(self), input, maxCandidates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextConversionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03606a5e-2aa9-4ab6-af8b-a562b63a8992";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LanguageAvailableButNotInstalled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetCandidatesAsync: *const fn(self: *anyopaque, input: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        GetCandidatesAsyncWithMaxCandidates: *const fn(self: *anyopaque, input: HSTRING, maxCandidates: u32, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const ITextConversionGeneratorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), languageTag: HSTRING) core.HResult!*TextConversionGenerator {
        var _r: *TextConversionGenerator = undefined;
        const _c = self.vtable.Create(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextConversionGeneratorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcaa3781-3083-49ab-be15-56dfbbb74d6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, languageTag: HSTRING, _r: **TextConversionGenerator) callconv(.winapi) HRESULT,
    };
};
pub const ITextPhoneme = extern struct {
    vtable: *const VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadingText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReadingText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextPhoneme";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9362a40a-9b7a-4569-94cf-d84f2f38cf9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReadingText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITextPredictionGenerator = extern struct {
    vtable: *const VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LanguageAvailableButNotInstalled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCandidatesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetCandidatesAsync(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCandidatesAsyncWithMaxCandidates(self: *@This(), input: HSTRING, maxCandidates: u32) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetCandidatesAsyncWithMaxCandidates(@ptrCast(self), input, maxCandidates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextPredictionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5eacab07-abf1-4cb6-9d9e-326f2b468756";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LanguageAvailableButNotInstalled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetCandidatesAsync: *const fn(self: *anyopaque, input: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        GetCandidatesAsyncWithMaxCandidates: *const fn(self: *anyopaque, input: HSTRING, maxCandidates: u32, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const ITextPredictionGenerator2 = extern struct {
    vtable: *const VTable,
    pub fn GetCandidatesAsync(self: *@This(), input: HSTRING, maxCandidates: u32, predictionOptions: TextPredictionOptions, previousStrings: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetCandidatesAsync(@ptrCast(self), input, maxCandidates, predictionOptions, previousStrings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNextWordCandidatesAsync(self: *@This(), maxCandidates: u32, previousStrings: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.GetNextWordCandidatesAsync(@ptrCast(self), maxCandidates, previousStrings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        var _r: CoreTextInputScope = undefined;
        const _c = self.vtable.get_InputScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputScope(self: *@This(), value: CoreTextInputScope) core.HResult!void {
        const _c = self.vtable.put_InputScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextPredictionGenerator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b84723b8-2c77-486a-900a-a3453eedc15d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCandidatesAsync: *const fn(self: *anyopaque, input: HSTRING, maxCandidates: u32, predictionOptions: TextPredictionOptions, previousStrings: *IIterable(HSTRING), _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        GetNextWordCandidatesAsync: *const fn(self: *anyopaque, maxCandidates: u32, previousStrings: *IIterable(HSTRING), _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        get_InputScope: *const fn(self: *anyopaque, _r: *CoreTextInputScope) callconv(.winapi) HRESULT,
        put_InputScope: *const fn(self: *anyopaque, value: CoreTextInputScope) callconv(.winapi) HRESULT,
    };
};
pub const ITextPredictionGeneratorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), languageTag: HSTRING) core.HResult!*TextPredictionGenerator {
        var _r: *TextPredictionGenerator = undefined;
        const _c = self.vtable.Create(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextPredictionGeneratorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7257b416-8ba2-4751-9d30-9d85435653a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, languageTag: HSTRING, _r: **TextPredictionGenerator) callconv(.winapi) HRESULT,
    };
};
pub const ITextReverseConversionGenerator = extern struct {
    vtable: *const VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LanguageAvailableButNotInstalled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertBackAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ConvertBackAsync(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextReverseConversionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51e7f514-9c51-4d86-ae1b-b498fbad8313";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LanguageAvailableButNotInstalled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ConvertBackAsync: *const fn(self: *anyopaque, input: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ITextReverseConversionGenerator2 = extern struct {
    vtable: *const VTable,
    pub fn GetPhonemesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(TextPhoneme)) {
        var _r: *IAsyncOperation(IVectorView(TextPhoneme)) = undefined;
        const _c = self.vtable.GetPhonemesAsync(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextReverseConversionGenerator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1aafd2ec-85d6-46fd-828a-3a4830fa6e18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPhonemesAsync: *const fn(self: *anyopaque, input: HSTRING, _r: **IAsyncOperation(IVectorView(TextPhoneme))) callconv(.winapi) HRESULT,
    };
};
pub const ITextReverseConversionGeneratorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), languageTag: HSTRING) core.HResult!*TextReverseConversionGenerator {
        var _r: *TextReverseConversionGenerator = undefined;
        const _c = self.vtable.Create(@ptrCast(self), languageTag, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.ITextReverseConversionGeneratorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63bed326-1fda-41f6-89d5-23ddea3c729a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, languageTag: HSTRING, _r: **TextReverseConversionGenerator) callconv(.winapi) HRESULT,
    };
};
pub const IUnicodeCharactersStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCodepointFromSurrogatePair(self: *@This(), highSurrogate: u32, lowSurrogate: u32) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.GetCodepointFromSurrogatePair(@ptrCast(self), highSurrogate, lowSurrogate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSurrogatePairFromCodepoint(self: *@This(), codepoint: u32, highSurrogate: u16, lowSurrogate: u16) core.HResult!void {
        const _c = self.vtable.GetSurrogatePairFromCodepoint(@ptrCast(self), codepoint, highSurrogate, lowSurrogate);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsHighSurrogate(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsHighSurrogate(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsLowSurrogate(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsLowSurrogate(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupplementary(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupplementary(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsNoncharacter(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsNoncharacter(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsWhitespace(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsWhitespace(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAlphabetic(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAlphabetic(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCased(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCased(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsUppercase(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsUppercase(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsLowercase(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsLowercase(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsIdStart(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsIdStart(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsIdContinue(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsIdContinue(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsGraphemeBase(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsGraphemeBase(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsGraphemeExtend(self: *@This(), codepoint: u32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsGraphemeExtend(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericType(self: *@This(), codepoint: u32) core.HResult!UnicodeNumericType {
        var _r: UnicodeNumericType = undefined;
        const _c = self.vtable.GetNumericType(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetGeneralCategory(self: *@This(), codepoint: u32) core.HResult!UnicodeGeneralCategory {
        var _r: UnicodeGeneralCategory = undefined;
        const _c = self.vtable.GetGeneralCategory(@ptrCast(self), codepoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.IUnicodeCharactersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97909e87-9291-4f91-b6c8-b6e359d7a7fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCodepointFromSurrogatePair: *const fn(self: *anyopaque, highSurrogate: u32, lowSurrogate: u32, _r: *u32) callconv(.winapi) HRESULT,
        GetSurrogatePairFromCodepoint: *const fn(self: *anyopaque, codepoint: u32, highSurrogate: u16, lowSurrogate: u16) callconv(.winapi) HRESULT,
        IsHighSurrogate: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsLowSurrogate: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsSupplementary: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsNoncharacter: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsWhitespace: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsAlphabetic: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsCased: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsUppercase: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsLowercase: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsIdStart: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsIdContinue: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsGraphemeBase: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        IsGraphemeExtend: *const fn(self: *anyopaque, codepoint: u32, _r: *bool) callconv(.winapi) HRESULT,
        GetNumericType: *const fn(self: *anyopaque, codepoint: u32, _r: *UnicodeNumericType) callconv(.winapi) HRESULT,
        GetGeneralCategory: *const fn(self: *anyopaque, codepoint: u32, _r: *UnicodeGeneralCategory) callconv(.winapi) HRESULT,
    };
};
pub const IWordSegment = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        var _r: TextSegment = undefined;
        const _c = self.vtable.get_SourceTextSegment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateForms(self: *@This()) core.HResult!*IVectorView(AlternateWordForm) {
        var _r: *IVectorView(AlternateWordForm) = undefined;
        const _c = self.vtable.get_AlternateForms(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.IWordSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2d4ba6d-987c-4cc0-b6bd-d49a11b38f9a";
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
        get_SourceTextSegment: *const fn(self: *anyopaque, _r: *TextSegment) callconv(.winapi) HRESULT,
        get_AlternateForms: *const fn(self: *anyopaque, _r: **IVectorView(AlternateWordForm)) callconv(.winapi) HRESULT,
    };
};
pub const IWordsSegmenter = extern struct {
    vtable: *const VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResolvedLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTokenAt(self: *@This(), text: HSTRING, startIndex: u32) core.HResult!*WordSegment {
        var _r: *WordSegment = undefined;
        const _c = self.vtable.GetTokenAt(@ptrCast(self), text, startIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTokens(self: *@This(), text: HSTRING) core.HResult!*IVectorView(WordSegment) {
        var _r: *IVectorView(WordSegment) = undefined;
        const _c = self.vtable.GetTokens(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Tokenize(self: *@This(), text: HSTRING, startIndex: u32, handler: *WordSegmentsTokenizingHandler) core.HResult!void {
        const _c = self.vtable.Tokenize(@ptrCast(self), text, startIndex, handler);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.IWordsSegmenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86b4d4d1-b2fe-4e34-a81d-66640300454f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResolvedLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetTokenAt: *const fn(self: *anyopaque, text: HSTRING, startIndex: u32, _r: **WordSegment) callconv(.winapi) HRESULT,
        GetTokens: *const fn(self: *anyopaque, text: HSTRING, _r: **IVectorView(WordSegment)) callconv(.winapi) HRESULT,
        Tokenize: *const fn(self: *anyopaque, text: HSTRING, startIndex: u32, handler: *WordSegmentsTokenizingHandler) callconv(.winapi) HRESULT,
    };
};
pub const IWordsSegmenterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithLanguage(self: *@This(), language: HSTRING) core.HResult!*WordsSegmenter {
        var _r: *WordsSegmenter = undefined;
        const _c = self.vtable.CreateWithLanguage(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.IWordsSegmenterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6977274-fc35-455c-8bfb-6d7f4653ca97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithLanguage: *const fn(self: *anyopaque, language: HSTRING, _r: **WordsSegmenter) callconv(.winapi) HRESULT,
    };
};
pub const SelectableWordSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISelectableWordSegment = @ptrCast(self);
        return try this.getText();
    }
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        const this: *ISelectableWordSegment = @ptrCast(self);
        return try this.getSourceTextSegment();
    }
    pub const NAME: []const u8 = "Windows.Data.Text.SelectableWordSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectableWordSegment.GUID;
    pub const IID: Guid = ISelectableWordSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectableWordSegment.SIGNATURE);
};
pub const SelectableWordSegmentsTokenizingHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, precedingWords: *IIterable(SelectableWordSegment), words: *IIterable(SelectableWordSegment)) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, precedingWords: *IIterable(SelectableWordSegment), words: *IIterable(SelectableWordSegment)) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, precedingWords: *IIterable(SelectableWordSegment), words: *IIterable(SelectableWordSegment)) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, precedingWords, words);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.SelectableWordSegmentsTokenizingHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a3dfc9c-aede-4dc7-9e6c-41c044bd3592";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, precedingWords: *IIterable(SelectableWordSegment), words: *IIterable(SelectableWordSegment)) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const SelectableWordsSegmenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ISelectableWordsSegmenter = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn GetTokenAt(self: *@This(), text: HSTRING, startIndex: u32) core.HResult!*SelectableWordSegment {
        const this: *ISelectableWordsSegmenter = @ptrCast(self);
        return try this.GetTokenAt(text, startIndex);
    }
    pub fn GetTokens(self: *@This(), text: HSTRING) core.HResult!*IVectorView(SelectableWordSegment) {
        const this: *ISelectableWordsSegmenter = @ptrCast(self);
        return try this.GetTokens(text);
    }
    pub fn Tokenize(self: *@This(), text: HSTRING, startIndex: u32, handler: *SelectableWordSegmentsTokenizingHandler) core.HResult!void {
        const this: *ISelectableWordsSegmenter = @ptrCast(self);
        return try this.Tokenize(text, startIndex, handler);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithLanguage(language: HSTRING) core.HResult!*SelectableWordsSegmenter {
        const _f = @This().ISelectableWordsSegmenterFactoryCache.get();
        return try _f.CreateWithLanguage(language);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.SelectableWordsSegmenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectableWordsSegmenter.GUID;
    pub const IID: Guid = ISelectableWordsSegmenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectableWordsSegmenter.SIGNATURE);
    var _ISelectableWordsSegmenterFactoryCache: FactoryCache(ISelectableWordsSegmenterFactory, RUNTIME_NAME) = .{};
};
pub const SemanticTextQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Find(self: *@This(), content: HSTRING) core.HResult!*IVectorView(TextSegment) {
        const this: *ISemanticTextQuery = @ptrCast(self);
        return try this.Find(content);
    }
    pub fn FindInProperty(self: *@This(), propertyContent: HSTRING, propertyName: HSTRING) core.HResult!*IVectorView(TextSegment) {
        const this: *ISemanticTextQuery = @ptrCast(self);
        return try this.FindInProperty(propertyContent, propertyName);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(aqsFilter: HSTRING) core.HResult!*SemanticTextQuery {
        const _f = @This().ISemanticTextQueryFactoryCache.get();
        return try _f.Create(aqsFilter);
    }
    pub fn CreateWithLanguage(aqsFilter: HSTRING, filterLanguage: HSTRING) core.HResult!*SemanticTextQuery {
        const _f = @This().ISemanticTextQueryFactoryCache.get();
        return try _f.CreateWithLanguage(aqsFilter, filterLanguage);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.SemanticTextQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISemanticTextQuery.GUID;
    pub const IID: Guid = ISemanticTextQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISemanticTextQuery.SIGNATURE);
    var _ISemanticTextQueryFactoryCache: FactoryCache(ISemanticTextQueryFactory, RUNTIME_NAME) = .{};
};
pub const TextConversionGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ITextConversionGenerator = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        const this: *ITextConversionGenerator = @ptrCast(self);
        return try this.getLanguageAvailableButNotInstalled();
    }
    pub fn GetCandidatesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *ITextConversionGenerator = @ptrCast(self);
        return try this.GetCandidatesAsync(input);
    }
    pub fn GetCandidatesAsyncWithMaxCandidates(self: *@This(), input: HSTRING, maxCandidates: u32) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *ITextConversionGenerator = @ptrCast(self);
        return try this.GetCandidatesAsyncWithMaxCandidates(input, maxCandidates);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(languageTag: HSTRING) core.HResult!*TextConversionGenerator {
        const _f = @This().ITextConversionGeneratorFactoryCache.get();
        return try _f.Create(languageTag);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.TextConversionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextConversionGenerator.GUID;
    pub const IID: Guid = ITextConversionGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextConversionGenerator.SIGNATURE);
    var _ITextConversionGeneratorFactoryCache: FactoryCache(ITextConversionGeneratorFactory, RUNTIME_NAME) = .{};
};
pub const TextPhoneme = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextPhoneme = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn getReadingText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextPhoneme = @ptrCast(self);
        return try this.getReadingText();
    }
    pub const NAME: []const u8 = "Windows.Data.Text.TextPhoneme";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextPhoneme.GUID;
    pub const IID: Guid = ITextPhoneme.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextPhoneme.SIGNATURE);
};
pub const TextPredictionGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ITextPredictionGenerator = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        const this: *ITextPredictionGenerator = @ptrCast(self);
        return try this.getLanguageAvailableButNotInstalled();
    }
    pub fn GetCandidatesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *ITextPredictionGenerator = @ptrCast(self);
        return try this.GetCandidatesAsync(input);
    }
    pub fn GetCandidatesAsyncWithMaxCandidates(self: *@This(), input: HSTRING, maxCandidates: u32) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *ITextPredictionGenerator = @ptrCast(self);
        return try this.GetCandidatesAsyncWithMaxCandidates(input, maxCandidates);
    }
    pub fn GetCandidatesAsyncWithMaxCandidatesAndPredictionOptionsAndPreviousStrings(self: *@This(), input: HSTRING, maxCandidates: u32, predictionOptions: TextPredictionOptions, previousStrings: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var this: ?*ITextPredictionGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextPredictionGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCandidatesAsyncWithMaxCandidatesAndPredictionOptionsAndPreviousStrings(input, maxCandidates, predictionOptions, previousStrings);
    }
    pub fn GetNextWordCandidatesAsync(self: *@This(), maxCandidates: u32, previousStrings: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var this: ?*ITextPredictionGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextPredictionGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNextWordCandidatesAsync(maxCandidates, previousStrings);
    }
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        var this: ?*ITextPredictionGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextPredictionGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInputScope();
    }
    pub fn putInputScope(self: *@This(), value: CoreTextInputScope) core.HResult!void {
        var this: ?*ITextPredictionGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextPredictionGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInputScope(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(languageTag: HSTRING) core.HResult!*TextPredictionGenerator {
        const _f = @This().ITextPredictionGeneratorFactoryCache.get();
        return try _f.Create(languageTag);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.TextPredictionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextPredictionGenerator.GUID;
    pub const IID: Guid = ITextPredictionGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextPredictionGenerator.SIGNATURE);
    var _ITextPredictionGeneratorFactoryCache: FactoryCache(ITextPredictionGeneratorFactory, RUNTIME_NAME) = .{};
};
pub const TextPredictionOptions = enum(i32) {
    None = 0,
    Predictions = 1,
    Corrections = 2,
};
pub const TextReverseConversionGenerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ITextReverseConversionGenerator = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn getLanguageAvailableButNotInstalled(self: *@This()) core.HResult!bool {
        const this: *ITextReverseConversionGenerator = @ptrCast(self);
        return try this.getLanguageAvailableButNotInstalled();
    }
    pub fn ConvertBackAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *ITextReverseConversionGenerator = @ptrCast(self);
        return try this.ConvertBackAsync(input);
    }
    pub fn GetPhonemesAsync(self: *@This(), input: HSTRING) core.HResult!*IAsyncOperation(IVectorView(TextPhoneme)) {
        var this: ?*ITextReverseConversionGenerator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextReverseConversionGenerator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPhonemesAsync(input);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(languageTag: HSTRING) core.HResult!*TextReverseConversionGenerator {
        const _f = @This().ITextReverseConversionGeneratorFactoryCache.get();
        return try _f.Create(languageTag);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.TextReverseConversionGenerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextReverseConversionGenerator.GUID;
    pub const IID: Guid = ITextReverseConversionGenerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextReverseConversionGenerator.SIGNATURE);
    var _ITextReverseConversionGeneratorFactoryCache: FactoryCache(ITextReverseConversionGeneratorFactory, RUNTIME_NAME) = .{};
};
pub const TextSegment = extern struct {
    StartPosition: u32,
    Length: u32,
};
pub const UnicodeCharacters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCodepointFromSurrogatePair(highSurrogate: u32, lowSurrogate: u32) core.HResult!u32 {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.GetCodepointFromSurrogatePair(highSurrogate, lowSurrogate);
    }
    pub fn GetSurrogatePairFromCodepoint(codepoint: u32, highSurrogate: u16, lowSurrogate: u16) core.HResult!void {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.GetSurrogatePairFromCodepoint(codepoint, highSurrogate, lowSurrogate);
    }
    pub fn IsHighSurrogate(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsHighSurrogate(codepoint);
    }
    pub fn IsLowSurrogate(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsLowSurrogate(codepoint);
    }
    pub fn IsSupplementary(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsSupplementary(codepoint);
    }
    pub fn IsNoncharacter(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsNoncharacter(codepoint);
    }
    pub fn IsWhitespace(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsWhitespace(codepoint);
    }
    pub fn IsAlphabetic(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsAlphabetic(codepoint);
    }
    pub fn IsCased(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsCased(codepoint);
    }
    pub fn IsUppercase(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsUppercase(codepoint);
    }
    pub fn IsLowercase(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsLowercase(codepoint);
    }
    pub fn IsIdStart(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsIdStart(codepoint);
    }
    pub fn IsIdContinue(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsIdContinue(codepoint);
    }
    pub fn IsGraphemeBase(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsGraphemeBase(codepoint);
    }
    pub fn IsGraphemeExtend(codepoint: u32) core.HResult!bool {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.IsGraphemeExtend(codepoint);
    }
    pub fn GetNumericType(codepoint: u32) core.HResult!UnicodeNumericType {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.GetNumericType(codepoint);
    }
    pub fn GetGeneralCategory(codepoint: u32) core.HResult!UnicodeGeneralCategory {
        const _f = @This().IUnicodeCharactersStaticsCache.get();
        return try _f.GetGeneralCategory(codepoint);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.UnicodeCharacters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUnicodeCharactersStaticsCache: FactoryCache(IUnicodeCharactersStatics, RUNTIME_NAME) = .{};
};
pub const UnicodeGeneralCategory = enum(i32) {
    UppercaseLetter = 0,
    LowercaseLetter = 1,
    TitlecaseLetter = 2,
    ModifierLetter = 3,
    OtherLetter = 4,
    NonspacingMark = 5,
    SpacingCombiningMark = 6,
    EnclosingMark = 7,
    DecimalDigitNumber = 8,
    LetterNumber = 9,
    OtherNumber = 10,
    SpaceSeparator = 11,
    LineSeparator = 12,
    ParagraphSeparator = 13,
    Control = 14,
    Format = 15,
    Surrogate = 16,
    PrivateUse = 17,
    ConnectorPunctuation = 18,
    DashPunctuation = 19,
    OpenPunctuation = 20,
    ClosePunctuation = 21,
    InitialQuotePunctuation = 22,
    FinalQuotePunctuation = 23,
    OtherPunctuation = 24,
    MathSymbol = 25,
    CurrencySymbol = 26,
    ModifierSymbol = 27,
    OtherSymbol = 28,
    NotAssigned = 29,
};
pub const UnicodeNumericType = enum(i32) {
    None = 0,
    Decimal = 1,
    Digit = 2,
    Numeric = 3,
};
pub const WordSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IWordSegment = @ptrCast(self);
        return try this.getText();
    }
    pub fn getSourceTextSegment(self: *@This()) core.HResult!TextSegment {
        const this: *IWordSegment = @ptrCast(self);
        return try this.getSourceTextSegment();
    }
    pub fn getAlternateForms(self: *@This()) core.HResult!*IVectorView(AlternateWordForm) {
        const this: *IWordSegment = @ptrCast(self);
        return try this.getAlternateForms();
    }
    pub const NAME: []const u8 = "Windows.Data.Text.WordSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWordSegment.GUID;
    pub const IID: Guid = IWordSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWordSegment.SIGNATURE);
};
pub const WordSegmentsTokenizingHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, precedingWords: *IIterable(WordSegment), words: *IIterable(WordSegment)) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, precedingWords: *IIterable(WordSegment), words: *IIterable(WordSegment)) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, precedingWords: *IIterable(WordSegment), words: *IIterable(WordSegment)) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, precedingWords, words);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Data.Text.WordSegmentsTokenizingHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5dd6357-bf2a-4c4f-a31f-29e71c6f8b35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, precedingWords: *IIterable(WordSegment), words: *IIterable(WordSegment)) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WordsSegmenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResolvedLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IWordsSegmenter = @ptrCast(self);
        return try this.getResolvedLanguage();
    }
    pub fn GetTokenAt(self: *@This(), text: HSTRING, startIndex: u32) core.HResult!*WordSegment {
        const this: *IWordsSegmenter = @ptrCast(self);
        return try this.GetTokenAt(text, startIndex);
    }
    pub fn GetTokens(self: *@This(), text: HSTRING) core.HResult!*IVectorView(WordSegment) {
        const this: *IWordsSegmenter = @ptrCast(self);
        return try this.GetTokens(text);
    }
    pub fn Tokenize(self: *@This(), text: HSTRING, startIndex: u32, handler: *WordSegmentsTokenizingHandler) core.HResult!void {
        const this: *IWordsSegmenter = @ptrCast(self);
        return try this.Tokenize(text, startIndex, handler);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithLanguage(language: HSTRING) core.HResult!*WordsSegmenter {
        const _f = @This().IWordsSegmenterFactoryCache.get();
        return try _f.CreateWithLanguage(language);
    }
    pub const NAME: []const u8 = "Windows.Data.Text.WordsSegmenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWordsSegmenter.GUID;
    pub const IID: Guid = IWordsSegmenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWordsSegmenter.SIGNATURE);
    var _IWordsSegmenterFactoryCache: FactoryCache(IWordsSegmenterFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const CoreTextInputScope = @import("../UI/Text/Core.zig").CoreTextInputScope;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAgileObject = @import("../root.zig").IAgileObject;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
