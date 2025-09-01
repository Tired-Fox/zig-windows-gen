pub const IOcrEngine = extern struct {
    vtable: *const VTable,
    pub fn RecognizeAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncOperation(OcrResult) {
        var _r: *IAsyncOperation(OcrResult) = undefined;
        const _c = self.vtable.RecognizeAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecognizerLanguage(self: *@This()) core.HResult!*Language {
        var _r: *Language = undefined;
        const _c = self.vtable.get_RecognizerLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.IOcrEngine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a14bc41-5b76-3140-b680-8825562683ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RecognizeAsync: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap, _r: **IAsyncOperation(OcrResult)) callconv(.winapi) HRESULT,
        get_RecognizerLanguage: *const fn(self: *anyopaque, _r: **Language) callconv(.winapi) HRESULT,
    };
};
pub const IOcrEngineStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxImageDimension(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxImageDimension(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableRecognizerLanguages(self: *@This()) core.HResult!*IVectorView(Language) {
        var _r: *IVectorView(Language) = undefined;
        const _c = self.vtable.get_AvailableRecognizerLanguages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsLanguageSupported(self: *@This(), language: *Language) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsLanguageSupported(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFromLanguage(self: *@This(), language: *Language) core.HResult!*OcrEngine {
        var _r: *OcrEngine = undefined;
        const _c = self.vtable.TryCreateFromLanguage(@ptrCast(self), language, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFromUserProfileLanguages(self: *@This()) core.HResult!*OcrEngine {
        var _r: *OcrEngine = undefined;
        const _c = self.vtable.TryCreateFromUserProfileLanguages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.IOcrEngineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bffa85a-3384-3540-9940-699120d428a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxImageDimension: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AvailableRecognizerLanguages: *const fn(self: *anyopaque, _r: **IVectorView(Language)) callconv(.winapi) HRESULT,
        IsLanguageSupported: *const fn(self: *anyopaque, language: *Language, _r: *bool) callconv(.winapi) HRESULT,
        TryCreateFromLanguage: *const fn(self: *anyopaque, language: *Language, _r: **OcrEngine) callconv(.winapi) HRESULT,
        TryCreateFromUserProfileLanguages: *const fn(self: *anyopaque, _r: **OcrEngine) callconv(.winapi) HRESULT,
    };
};
pub const IOcrLine = extern struct {
    vtable: *const VTable,
    pub fn getWords(self: *@This()) core.HResult!*IVectorView(OcrWord) {
        var _r: *IVectorView(OcrWord) = undefined;
        const _c = self.vtable.get_Words(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.IOcrLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0043a16f-e31f-3a24-899c-d444bd088124";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Words: *const fn(self: *anyopaque, _r: **IVectorView(OcrWord)) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOcrResult = extern struct {
    vtable: *const VTable,
    pub fn getLines(self: *@This()) core.HResult!*IVectorView(OcrLine) {
        var _r: *IVectorView(OcrLine) = undefined;
        const _c = self.vtable.get_Lines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextAngle(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_TextAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.IOcrResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bd235b2-175b-3d6a-92e2-388c206e2f63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Lines: *const fn(self: *anyopaque, _r: **IVectorView(OcrLine)) callconv(.winapi) HRESULT,
        get_TextAngle: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOcrWord = extern struct {
    vtable: *const VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_BoundingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.IOcrWord";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BoundingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const OcrEngine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RecognizeAsync(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*IAsyncOperation(OcrResult) {
        const this: *IOcrEngine = @ptrCast(self);
        return try this.RecognizeAsync(bitmap);
    }
    pub fn getRecognizerLanguage(self: *@This()) core.HResult!*Language {
        const this: *IOcrEngine = @ptrCast(self);
        return try this.getRecognizerLanguage();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMaxImageDimension() core.HResult!u32 {
        const _f = @This().IOcrEngineStaticsCache.get();
        return try _f.getMaxImageDimension();
    }
    pub fn getAvailableRecognizerLanguages() core.HResult!*IVectorView(Language) {
        const _f = @This().IOcrEngineStaticsCache.get();
        return try _f.getAvailableRecognizerLanguages();
    }
    pub fn IsLanguageSupported(language: *Language) core.HResult!bool {
        const _f = @This().IOcrEngineStaticsCache.get();
        return try _f.IsLanguageSupported(language);
    }
    pub fn TryCreateFromLanguage(language: *Language) core.HResult!*OcrEngine {
        const _f = @This().IOcrEngineStaticsCache.get();
        return try _f.TryCreateFromLanguage(language);
    }
    pub fn TryCreateFromUserProfileLanguages() core.HResult!*OcrEngine {
        const _f = @This().IOcrEngineStaticsCache.get();
        return try _f.TryCreateFromUserProfileLanguages();
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.OcrEngine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOcrEngine.GUID;
    pub const IID: Guid = IOcrEngine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOcrEngine.SIGNATURE);
    var _IOcrEngineStaticsCache: FactoryCache(IOcrEngineStatics, RUNTIME_NAME) = .{};
};
pub const OcrLine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWords(self: *@This()) core.HResult!*IVectorView(OcrWord) {
        const this: *IOcrLine = @ptrCast(self);
        return try this.getWords();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IOcrLine = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.OcrLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOcrLine.GUID;
    pub const IID: Guid = IOcrLine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOcrLine.SIGNATURE);
};
pub const OcrResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLines(self: *@This()) core.HResult!*IVectorView(OcrLine) {
        const this: *IOcrResult = @ptrCast(self);
        return try this.getLines();
    }
    pub fn getTextAngle(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IOcrResult = @ptrCast(self);
        return try this.getTextAngle();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IOcrResult = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.OcrResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOcrResult.GUID;
    pub const IID: Guid = IOcrResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOcrResult.SIGNATURE);
};
pub const OcrWord = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBoundingRect(self: *@This()) core.HResult!Rect {
        const this: *IOcrWord = @ptrCast(self);
        return try this.getBoundingRect();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IOcrWord = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.Media.Ocr.OcrWord";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOcrWord.GUID;
    pub const IID: Guid = IOcrWord.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOcrWord.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const FactoryCache = @import("../core.zig").FactoryCache;
const Language = @import("../Globalization.zig").Language;
const IReference = @import("../Foundation.zig").IReference;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const SoftwareBitmap = @import("../Graphics/Imaging.zig").SoftwareBitmap;
const HSTRING = @import("../root.zig").HSTRING;
