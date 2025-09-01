pub const HttpCacheDirectiveHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.getMaxAge();
    }
    pub fn putMaxAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.putMaxAge(value);
    }
    pub fn getMaxStale(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.getMaxStale();
    }
    pub fn putMaxStale(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.putMaxStale(value);
    }
    pub fn getMinFresh(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.getMinFresh();
    }
    pub fn putMinFresh(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.putMinFresh(value);
    }
    pub fn getSharedMaxAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.getSharedMaxAge();
    }
    pub fn putSharedMaxAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.putSharedMaxAge(value);
    }
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpCacheDirectiveHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpNameValueHeaderValue) {
        var this: ?*IVector(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpNameValueHeaderValue) {
        var this: ?*IIterable(HttpNameValueHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpCacheDirectiveHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCacheDirectiveHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpCacheDirectiveHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCacheDirectiveHeaderValueCollection.SIGNATURE);
};
pub const HttpChallengeHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpChallengeHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpChallengeHeaderValue = @ptrCast(self);
        return try this.getScheme();
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpChallengeHeaderValue = @ptrCast(self);
        return try this.getToken();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromScheme(scheme: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        const _f = @This().IHttpChallengeHeaderValueFactoryCache.get();
        return try _f.CreateFromScheme(scheme);
    }
    pub fn CreateFromSchemeWithToken(scheme: HSTRING, token: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        const _f = @This().IHttpChallengeHeaderValueFactoryCache.get();
        return try _f.CreateFromSchemeWithToken(scheme, token);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        const _f = @This().IHttpChallengeHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, challengeHeaderValue: *HttpChallengeHeaderValue) core.HResult!bool {
        const _f = @This().IHttpChallengeHeaderValueStaticsCache.get();
        return try _f.TryParse(input, challengeHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpChallengeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpChallengeHeaderValue.GUID;
    pub const IID: Guid = IHttpChallengeHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpChallengeHeaderValue.SIGNATURE);
    var _IHttpChallengeHeaderValueFactoryCache: FactoryCache(IHttpChallengeHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpChallengeHeaderValueStaticsCache: FactoryCache(IHttpChallengeHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpChallengeHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpChallengeHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpChallengeHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpChallengeHeaderValue) {
        var this: ?*IVector(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpChallengeHeaderValue) {
        var this: ?*IIterable(HttpChallengeHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpChallengeHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpChallengeHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpChallengeHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpChallengeHeaderValueCollection.SIGNATURE);
};
pub const HttpConnectionOptionHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpConnectionOptionHeaderValue = @ptrCast(self);
        return try this.getToken();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(token: HSTRING) core.HResult!*HttpConnectionOptionHeaderValue {
        const _f = @This().IHttpConnectionOptionHeaderValueFactoryCache.get();
        return try _f.Create(token);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpConnectionOptionHeaderValue {
        const _f = @This().IHttpConnectionOptionHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, connectionOptionHeaderValue: *HttpConnectionOptionHeaderValue) core.HResult!bool {
        const _f = @This().IHttpConnectionOptionHeaderValueStaticsCache.get();
        return try _f.TryParse(input, connectionOptionHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpConnectionOptionHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpConnectionOptionHeaderValue.GUID;
    pub const IID: Guid = IHttpConnectionOptionHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpConnectionOptionHeaderValue.SIGNATURE);
    var _IHttpConnectionOptionHeaderValueFactoryCache: FactoryCache(IHttpConnectionOptionHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpConnectionOptionHeaderValueStaticsCache: FactoryCache(IHttpConnectionOptionHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpConnectionOptionHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpConnectionOptionHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpConnectionOptionHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpConnectionOptionHeaderValue) {
        var this: ?*IVector(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpConnectionOptionHeaderValue) {
        var this: ?*IIterable(HttpConnectionOptionHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpConnectionOptionHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpConnectionOptionHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpConnectionOptionHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpConnectionOptionHeaderValueCollection.SIGNATURE);
};
pub const HttpContentCodingHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentCoding(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentCodingHeaderValue = @ptrCast(self);
        return try this.getContentCoding();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(contentCoding: HSTRING) core.HResult!*HttpContentCodingHeaderValue {
        const _f = @This().IHttpContentCodingHeaderValueFactoryCache.get();
        return try _f.Create(contentCoding);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpContentCodingHeaderValue {
        const _f = @This().IHttpContentCodingHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, contentCodingHeaderValue: *HttpContentCodingHeaderValue) core.HResult!bool {
        const _f = @This().IHttpContentCodingHeaderValueStaticsCache.get();
        return try _f.TryParse(input, contentCodingHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentCodingHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentCodingHeaderValue.GUID;
    pub const IID: Guid = IHttpContentCodingHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentCodingHeaderValue.SIGNATURE);
    var _IHttpContentCodingHeaderValueFactoryCache: FactoryCache(IHttpContentCodingHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpContentCodingHeaderValueStaticsCache: FactoryCache(IHttpContentCodingHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpContentCodingHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpContentCodingHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpContentCodingHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpContentCodingHeaderValue) {
        var this: ?*IVector(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpContentCodingHeaderValue) {
        var this: ?*IIterable(HttpContentCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentCodingHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentCodingHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpContentCodingHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentCodingHeaderValueCollection.SIGNATURE);
};
pub const HttpContentCodingWithQualityHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentCoding(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentCodingWithQualityHeaderValue = @ptrCast(self);
        return try this.getContentCoding();
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHttpContentCodingWithQualityHeaderValue = @ptrCast(self);
        return try this.getQuality();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromValue(contentCoding: HSTRING) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        const _f = @This().IHttpContentCodingWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromValue(contentCoding);
    }
    pub fn CreateFromValueWithQuality(contentCoding: HSTRING, quality: f64) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        const _f = @This().IHttpContentCodingWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromValueWithQuality(contentCoding, quality);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        const _f = @This().IHttpContentCodingWithQualityHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, contentCodingWithQualityHeaderValue: *HttpContentCodingWithQualityHeaderValue) core.HResult!bool {
        const _f = @This().IHttpContentCodingWithQualityHeaderValueStaticsCache.get();
        return try _f.TryParse(input, contentCodingWithQualityHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentCodingWithQualityHeaderValue.GUID;
    pub const IID: Guid = IHttpContentCodingWithQualityHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentCodingWithQualityHeaderValue.SIGNATURE);
    var _IHttpContentCodingWithQualityHeaderValueFactoryCache: FactoryCache(IHttpContentCodingWithQualityHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpContentCodingWithQualityHeaderValueStaticsCache: FactoryCache(IHttpContentCodingWithQualityHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpContentCodingWithQualityHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpContentCodingWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpContentCodingWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpContentCodingWithQualityHeaderValue) {
        var this: ?*IVector(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpContentCodingWithQualityHeaderValue) {
        var this: ?*IIterable(HttpContentCodingWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentCodingWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentCodingWithQualityHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpContentCodingWithQualityHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentCodingWithQualityHeaderValueCollection.SIGNATURE);
};
pub const HttpContentDispositionHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDispositionType(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getDispositionType();
    }
    pub fn putDispositionType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.putDispositionType(value);
    }
    pub fn getFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getFileName();
    }
    pub fn putFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.putFileName(value);
    }
    pub fn getFileNameStar(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getFileNameStar();
    }
    pub fn putFileNameStar(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.putFileNameStar(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn getSize(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const this: *IHttpContentDispositionHeaderValue = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(dispositionType: HSTRING) core.HResult!*HttpContentDispositionHeaderValue {
        const _f = @This().IHttpContentDispositionHeaderValueFactoryCache.get();
        return try _f.Create(dispositionType);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpContentDispositionHeaderValue {
        const _f = @This().IHttpContentDispositionHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, contentDispositionHeaderValue: *HttpContentDispositionHeaderValue) core.HResult!bool {
        const _f = @This().IHttpContentDispositionHeaderValueStaticsCache.get();
        return try _f.TryParse(input, contentDispositionHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentDispositionHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentDispositionHeaderValue.GUID;
    pub const IID: Guid = IHttpContentDispositionHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentDispositionHeaderValue.SIGNATURE);
    var _IHttpContentDispositionHeaderValueFactoryCache: FactoryCache(IHttpContentDispositionHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpContentDispositionHeaderValueStaticsCache: FactoryCache(IHttpContentDispositionHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpContentHeaderCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentDisposition(self: *@This()) core.HResult!*HttpContentDispositionHeaderValue {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentDisposition();
    }
    pub fn putContentDisposition(self: *@This(), value: *HttpContentDispositionHeaderValue) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentDisposition(value);
    }
    pub fn getContentEncoding(self: *@This()) core.HResult!*HttpContentCodingHeaderValueCollection {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentEncoding();
    }
    pub fn getContentLanguage(self: *@This()) core.HResult!*HttpLanguageHeaderValueCollection {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentLanguage();
    }
    pub fn getContentLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentLength();
    }
    pub fn putContentLength(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentLength(value);
    }
    pub fn getContentLocation(self: *@This()) core.HResult!*Uri {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentLocation();
    }
    pub fn putContentLocation(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentLocation(value);
    }
    pub fn getContentMD5(self: *@This()) core.HResult!*IBuffer {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentMD5();
    }
    pub fn putContentMD5(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentMD5(value);
    }
    pub fn getContentRange(self: *@This()) core.HResult!*HttpContentRangeHeaderValue {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentRange();
    }
    pub fn putContentRange(self: *@This(), value: *HttpContentRangeHeaderValue) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentRange(value);
    }
    pub fn getContentType(self: *@This()) core.HResult!*HttpMediaTypeHeaderValue {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn putContentType(self: *@This(), value: *HttpMediaTypeHeaderValue) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putContentType(value);
    }
    pub fn getExpires(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getExpires();
    }
    pub fn putExpires(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putExpires(value);
    }
    pub fn getLastModified(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.getLastModified();
    }
    pub fn putLastModified(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.putLastModified(value);
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.Append(name, value);
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        const this: *IHttpContentHeaderCollection = @ptrCast(self);
        return try this.TryAppendWithoutValidation(name, value);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,HSTRING)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHttpContentHeaderCollection.IID)));
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentHeaderCollection.GUID;
    pub const IID: Guid = IHttpContentHeaderCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentHeaderCollection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const HttpContentRangeHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFirstBytePosition(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IHttpContentRangeHeaderValue = @ptrCast(self);
        return try this.getFirstBytePosition();
    }
    pub fn getLastBytePosition(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IHttpContentRangeHeaderValue = @ptrCast(self);
        return try this.getLastBytePosition();
    }
    pub fn getLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IHttpContentRangeHeaderValue = @ptrCast(self);
        return try this.getLength();
    }
    pub fn getUnit(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpContentRangeHeaderValue = @ptrCast(self);
        return try this.getUnit();
    }
    pub fn putUnit(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpContentRangeHeaderValue = @ptrCast(self);
        return try this.putUnit(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromLength(length: u64) core.HResult!*HttpContentRangeHeaderValue {
        const _f = @This().IHttpContentRangeHeaderValueFactoryCache.get();
        return try _f.CreateFromLength(length);
    }
    pub fn CreateFromRange(from: u64, to: u64) core.HResult!*HttpContentRangeHeaderValue {
        const _f = @This().IHttpContentRangeHeaderValueFactoryCache.get();
        return try _f.CreateFromRange(from, to);
    }
    pub fn CreateFromRangeWithLength(from: u64, to: u64, length: u64) core.HResult!*HttpContentRangeHeaderValue {
        const _f = @This().IHttpContentRangeHeaderValueFactoryCache.get();
        return try _f.CreateFromRangeWithLength(from, to, length);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpContentRangeHeaderValue {
        const _f = @This().IHttpContentRangeHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, contentRangeHeaderValue: *HttpContentRangeHeaderValue) core.HResult!bool {
        const _f = @This().IHttpContentRangeHeaderValueStaticsCache.get();
        return try _f.TryParse(input, contentRangeHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpContentRangeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpContentRangeHeaderValue.GUID;
    pub const IID: Guid = IHttpContentRangeHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpContentRangeHeaderValue.SIGNATURE);
    var _IHttpContentRangeHeaderValueFactoryCache: FactoryCache(IHttpContentRangeHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpContentRangeHeaderValueStaticsCache: FactoryCache(IHttpContentRangeHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpCookiePairHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookiePairHeaderValue = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCookiePairHeaderValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpCookiePairHeaderValue = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromName(name: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        const _f = @This().IHttpCookiePairHeaderValueFactoryCache.get();
        return try _f.CreateFromName(name);
    }
    pub fn CreateFromNameWithValue(name: HSTRING, value: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        const _f = @This().IHttpCookiePairHeaderValueFactoryCache.get();
        return try _f.CreateFromNameWithValue(name, value);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        const _f = @This().IHttpCookiePairHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, cookiePairHeaderValue: *HttpCookiePairHeaderValue) core.HResult!bool {
        const _f = @This().IHttpCookiePairHeaderValueStaticsCache.get();
        return try _f.TryParse(input, cookiePairHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpCookiePairHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCookiePairHeaderValue.GUID;
    pub const IID: Guid = IHttpCookiePairHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCookiePairHeaderValue.SIGNATURE);
    var _IHttpCookiePairHeaderValueFactoryCache: FactoryCache(IHttpCookiePairHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpCookiePairHeaderValueStaticsCache: FactoryCache(IHttpCookiePairHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpCookiePairHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpCookiePairHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpCookiePairHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpCookiePairHeaderValue) {
        var this: ?*IVector(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpCookiePairHeaderValue) {
        var this: ?*IIterable(HttpCookiePairHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpCookiePairHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCookiePairHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpCookiePairHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCookiePairHeaderValueCollection.SIGNATURE);
};
pub const HttpCredentialsHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpCredentialsHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCredentialsHeaderValue = @ptrCast(self);
        return try this.getScheme();
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpCredentialsHeaderValue = @ptrCast(self);
        return try this.getToken();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromScheme(scheme: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        const _f = @This().IHttpCredentialsHeaderValueFactoryCache.get();
        return try _f.CreateFromScheme(scheme);
    }
    pub fn CreateFromSchemeWithToken(scheme: HSTRING, token: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        const _f = @This().IHttpCredentialsHeaderValueFactoryCache.get();
        return try _f.CreateFromSchemeWithToken(scheme, token);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        const _f = @This().IHttpCredentialsHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, credentialsHeaderValue: *HttpCredentialsHeaderValue) core.HResult!bool {
        const _f = @This().IHttpCredentialsHeaderValueStaticsCache.get();
        return try _f.TryParse(input, credentialsHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpCredentialsHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpCredentialsHeaderValue.GUID;
    pub const IID: Guid = IHttpCredentialsHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpCredentialsHeaderValue.SIGNATURE);
    var _IHttpCredentialsHeaderValueFactoryCache: FactoryCache(IHttpCredentialsHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpCredentialsHeaderValueStaticsCache: FactoryCache(IHttpCredentialsHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpDateOrDeltaHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpDateOrDeltaHeaderValue = @ptrCast(self);
        return try this.getDate();
    }
    pub fn getDelta(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpDateOrDeltaHeaderValue = @ptrCast(self);
        return try this.getDelta();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpDateOrDeltaHeaderValue {
        const _f = @This().IHttpDateOrDeltaHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, dateOrDeltaHeaderValue: *HttpDateOrDeltaHeaderValue) core.HResult!bool {
        const _f = @This().IHttpDateOrDeltaHeaderValueStaticsCache.get();
        return try _f.TryParse(input, dateOrDeltaHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpDateOrDeltaHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpDateOrDeltaHeaderValue.GUID;
    pub const IID: Guid = IHttpDateOrDeltaHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpDateOrDeltaHeaderValue.SIGNATURE);
    var _IHttpDateOrDeltaHeaderValueStaticsCache: FactoryCache(IHttpDateOrDeltaHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpExpectationHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpExpectationHeaderValue = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpExpectationHeaderValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpExpectationHeaderValue = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpExpectationHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromName(name: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        const _f = @This().IHttpExpectationHeaderValueFactoryCache.get();
        return try _f.CreateFromName(name);
    }
    pub fn CreateFromNameWithValue(name: HSTRING, value: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        const _f = @This().IHttpExpectationHeaderValueFactoryCache.get();
        return try _f.CreateFromNameWithValue(name, value);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        const _f = @This().IHttpExpectationHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, expectationHeaderValue: *HttpExpectationHeaderValue) core.HResult!bool {
        const _f = @This().IHttpExpectationHeaderValueStaticsCache.get();
        return try _f.TryParse(input, expectationHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpExpectationHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpExpectationHeaderValue.GUID;
    pub const IID: Guid = IHttpExpectationHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpExpectationHeaderValue.SIGNATURE);
    var _IHttpExpectationHeaderValueFactoryCache: FactoryCache(IHttpExpectationHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpExpectationHeaderValueStaticsCache: FactoryCache(IHttpExpectationHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpExpectationHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpExpectationHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpExpectationHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpExpectationHeaderValue) {
        var this: ?*IVector(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpExpectationHeaderValue) {
        var this: ?*IIterable(HttpExpectationHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpExpectationHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpExpectationHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpExpectationHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpExpectationHeaderValueCollection.SIGNATURE);
};
pub const HttpLanguageHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpLanguageHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpLanguageHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Language) {
        var this: ?*IVector(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Language) {
        var this: ?*IIterable(Language) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpLanguageHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpLanguageHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpLanguageHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpLanguageHeaderValueCollection.SIGNATURE);
};
pub const HttpLanguageRangeWithQualityHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLanguageRange(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpLanguageRangeWithQualityHeaderValue = @ptrCast(self);
        return try this.getLanguageRange();
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHttpLanguageRangeWithQualityHeaderValue = @ptrCast(self);
        return try this.getQuality();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromLanguageRange(languageRange: HSTRING) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        const _f = @This().IHttpLanguageRangeWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromLanguageRange(languageRange);
    }
    pub fn CreateFromLanguageRangeWithQuality(languageRange: HSTRING, quality: f64) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        const _f = @This().IHttpLanguageRangeWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromLanguageRangeWithQuality(languageRange, quality);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        const _f = @This().IHttpLanguageRangeWithQualityHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, languageRangeWithQualityHeaderValue: *HttpLanguageRangeWithQualityHeaderValue) core.HResult!bool {
        const _f = @This().IHttpLanguageRangeWithQualityHeaderValueStaticsCache.get();
        return try _f.TryParse(input, languageRangeWithQualityHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpLanguageRangeWithQualityHeaderValue.GUID;
    pub const IID: Guid = IHttpLanguageRangeWithQualityHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpLanguageRangeWithQualityHeaderValue.SIGNATURE);
    var _IHttpLanguageRangeWithQualityHeaderValueFactoryCache: FactoryCache(IHttpLanguageRangeWithQualityHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpLanguageRangeWithQualityHeaderValueStaticsCache: FactoryCache(IHttpLanguageRangeWithQualityHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpLanguageRangeWithQualityHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpLanguageRangeWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpLanguageRangeWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpLanguageRangeWithQualityHeaderValue) {
        var this: ?*IVector(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpLanguageRangeWithQualityHeaderValue) {
        var this: ?*IIterable(HttpLanguageRangeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpLanguageRangeWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpLanguageRangeWithQualityHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpLanguageRangeWithQualityHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpLanguageRangeWithQualityHeaderValueCollection.SIGNATURE);
};
pub const HttpMediaTypeHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharSet(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMediaTypeHeaderValue = @ptrCast(self);
        return try this.getCharSet();
    }
    pub fn putCharSet(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpMediaTypeHeaderValue = @ptrCast(self);
        return try this.putCharSet(value);
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMediaTypeHeaderValue = @ptrCast(self);
        return try this.getMediaType();
    }
    pub fn putMediaType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpMediaTypeHeaderValue = @ptrCast(self);
        return try this.putMediaType(value);
    }
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpMediaTypeHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(mediaType: HSTRING) core.HResult!*HttpMediaTypeHeaderValue {
        const _f = @This().IHttpMediaTypeHeaderValueFactoryCache.get();
        return try _f.Create(mediaType);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpMediaTypeHeaderValue {
        const _f = @This().IHttpMediaTypeHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, mediaTypeHeaderValue: *HttpMediaTypeHeaderValue) core.HResult!bool {
        const _f = @This().IHttpMediaTypeHeaderValueStaticsCache.get();
        return try _f.TryParse(input, mediaTypeHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpMediaTypeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMediaTypeHeaderValue.GUID;
    pub const IID: Guid = IHttpMediaTypeHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMediaTypeHeaderValue.SIGNATURE);
    var _IHttpMediaTypeHeaderValueFactoryCache: FactoryCache(IHttpMediaTypeHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpMediaTypeHeaderValueStaticsCache: FactoryCache(IHttpMediaTypeHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpMediaTypeWithQualityHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharSet(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.getCharSet();
    }
    pub fn putCharSet(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.putCharSet(value);
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.getMediaType();
    }
    pub fn putMediaType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.putMediaType(value);
    }
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.getQuality();
    }
    pub fn putQuality(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IHttpMediaTypeWithQualityHeaderValue = @ptrCast(self);
        return try this.putQuality(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromMediaType(mediaType: HSTRING) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        const _f = @This().IHttpMediaTypeWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromMediaType(mediaType);
    }
    pub fn CreateFromMediaTypeWithQuality(mediaType: HSTRING, quality: f64) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        const _f = @This().IHttpMediaTypeWithQualityHeaderValueFactoryCache.get();
        return try _f.CreateFromMediaTypeWithQuality(mediaType, quality);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        const _f = @This().IHttpMediaTypeWithQualityHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, mediaTypeWithQualityHeaderValue: *HttpMediaTypeWithQualityHeaderValue) core.HResult!bool {
        const _f = @This().IHttpMediaTypeWithQualityHeaderValueStaticsCache.get();
        return try _f.TryParse(input, mediaTypeWithQualityHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMediaTypeWithQualityHeaderValue.GUID;
    pub const IID: Guid = IHttpMediaTypeWithQualityHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMediaTypeWithQualityHeaderValue.SIGNATURE);
    var _IHttpMediaTypeWithQualityHeaderValueFactoryCache: FactoryCache(IHttpMediaTypeWithQualityHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpMediaTypeWithQualityHeaderValueStaticsCache: FactoryCache(IHttpMediaTypeWithQualityHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpMediaTypeWithQualityHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpMediaTypeWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpMediaTypeWithQualityHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpMediaTypeWithQualityHeaderValue) {
        var this: ?*IVector(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpMediaTypeWithQualityHeaderValue) {
        var this: ?*IIterable(HttpMediaTypeWithQualityHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpMediaTypeWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMediaTypeWithQualityHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpMediaTypeWithQualityHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMediaTypeWithQualityHeaderValueCollection.SIGNATURE);
};
pub const HttpMethodHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpMethodHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpMethodHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpMethod) {
        var this: ?*IVector(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpMethod) {
        var this: ?*IIterable(HttpMethod) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpMethodHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMethodHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpMethodHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMethodHeaderValueCollection.SIGNATURE);
};
pub const HttpNameValueHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpNameValueHeaderValue = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpNameValueHeaderValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpNameValueHeaderValue = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromName(name: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        const _f = @This().IHttpNameValueHeaderValueFactoryCache.get();
        return try _f.CreateFromName(name);
    }
    pub fn CreateFromNameWithValue(name: HSTRING, value: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        const _f = @This().IHttpNameValueHeaderValueFactoryCache.get();
        return try _f.CreateFromNameWithValue(name, value);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        const _f = @This().IHttpNameValueHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, nameValueHeaderValue: *HttpNameValueHeaderValue) core.HResult!bool {
        const _f = @This().IHttpNameValueHeaderValueStaticsCache.get();
        return try _f.TryParse(input, nameValueHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpNameValueHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpNameValueHeaderValue.GUID;
    pub const IID: Guid = IHttpNameValueHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpNameValueHeaderValue.SIGNATURE);
    var _IHttpNameValueHeaderValueFactoryCache: FactoryCache(IHttpNameValueHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpNameValueHeaderValueStaticsCache: FactoryCache(IHttpNameValueHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpProductHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpProductHeaderValue = @ptrCast(self);
        return try this.getName();
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpProductHeaderValue = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromName(productName: HSTRING) core.HResult!*HttpProductHeaderValue {
        const _f = @This().IHttpProductHeaderValueFactoryCache.get();
        return try _f.CreateFromName(productName);
    }
    pub fn CreateFromNameWithVersion(productName: HSTRING, productVersion: HSTRING) core.HResult!*HttpProductHeaderValue {
        const _f = @This().IHttpProductHeaderValueFactoryCache.get();
        return try _f.CreateFromNameWithVersion(productName, productVersion);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpProductHeaderValue {
        const _f = @This().IHttpProductHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, productHeaderValue: *HttpProductHeaderValue) core.HResult!bool {
        const _f = @This().IHttpProductHeaderValueStaticsCache.get();
        return try _f.TryParse(input, productHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpProductHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpProductHeaderValue.GUID;
    pub const IID: Guid = IHttpProductHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpProductHeaderValue.SIGNATURE);
    var _IHttpProductHeaderValueFactoryCache: FactoryCache(IHttpProductHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpProductHeaderValueStaticsCache: FactoryCache(IHttpProductHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpProductInfoHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProduct(self: *@This()) core.HResult!*HttpProductHeaderValue {
        const this: *IHttpProductInfoHeaderValue = @ptrCast(self);
        return try this.getProduct();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpProductInfoHeaderValue = @ptrCast(self);
        return try this.getComment();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromComment(productComment: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        const _f = @This().IHttpProductInfoHeaderValueFactoryCache.get();
        return try _f.CreateFromComment(productComment);
    }
    pub fn CreateFromNameWithVersion(productName: HSTRING, productVersion: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        const _f = @This().IHttpProductInfoHeaderValueFactoryCache.get();
        return try _f.CreateFromNameWithVersion(productName, productVersion);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        const _f = @This().IHttpProductInfoHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, productInfoHeaderValue: *HttpProductInfoHeaderValue) core.HResult!bool {
        const _f = @This().IHttpProductInfoHeaderValueStaticsCache.get();
        return try _f.TryParse(input, productInfoHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpProductInfoHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpProductInfoHeaderValue.GUID;
    pub const IID: Guid = IHttpProductInfoHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpProductInfoHeaderValue.SIGNATURE);
    var _IHttpProductInfoHeaderValueFactoryCache: FactoryCache(IHttpProductInfoHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpProductInfoHeaderValueStaticsCache: FactoryCache(IHttpProductInfoHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpProductInfoHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpProductInfoHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpProductInfoHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpProductInfoHeaderValue) {
        var this: ?*IVector(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpProductInfoHeaderValue) {
        var this: ?*IIterable(HttpProductInfoHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpProductInfoHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpProductInfoHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpProductInfoHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpProductInfoHeaderValueCollection.SIGNATURE);
};
pub const HttpRequestHeaderCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccept(self: *@This()) core.HResult!*HttpMediaTypeWithQualityHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getAccept();
    }
    pub fn getAcceptEncoding(self: *@This()) core.HResult!*HttpContentCodingWithQualityHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getAcceptEncoding();
    }
    pub fn getAcceptLanguage(self: *@This()) core.HResult!*HttpLanguageRangeWithQualityHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getAcceptLanguage();
    }
    pub fn getAuthorization(self: *@This()) core.HResult!*HttpCredentialsHeaderValue {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getAuthorization();
    }
    pub fn putAuthorization(self: *@This(), value: *HttpCredentialsHeaderValue) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putAuthorization(value);
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheDirectiveHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getCacheControl();
    }
    pub fn getConnection(self: *@This()) core.HResult!*HttpConnectionOptionHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn getCookie(self: *@This()) core.HResult!*HttpCookiePairHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getCookie();
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getDate();
    }
    pub fn putDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putDate(value);
    }
    pub fn getExpect(self: *@This()) core.HResult!*HttpExpectationHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getExpect();
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getHost(self: *@This()) core.HResult!*HostName {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getHost();
    }
    pub fn putHost(self: *@This(), value: *HostName) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putHost(value);
    }
    pub fn getIfModifiedSince(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getIfModifiedSince();
    }
    pub fn putIfModifiedSince(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putIfModifiedSince(value);
    }
    pub fn getIfUnmodifiedSince(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getIfUnmodifiedSince();
    }
    pub fn putIfUnmodifiedSince(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putIfUnmodifiedSince(value);
    }
    pub fn getMaxForwards(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getMaxForwards();
    }
    pub fn putMaxForwards(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putMaxForwards(value);
    }
    pub fn getProxyAuthorization(self: *@This()) core.HResult!*HttpCredentialsHeaderValue {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getProxyAuthorization();
    }
    pub fn putProxyAuthorization(self: *@This(), value: *HttpCredentialsHeaderValue) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putProxyAuthorization(value);
    }
    pub fn getReferer(self: *@This()) core.HResult!*Uri {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getReferer();
    }
    pub fn putReferer(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.putReferer(value);
    }
    pub fn getTransferEncoding(self: *@This()) core.HResult!*HttpTransferCodingHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getTransferEncoding();
    }
    pub fn getUserAgent(self: *@This()) core.HResult!*HttpProductInfoHeaderValueCollection {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.getUserAgent();
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.Append(name, value);
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        const this: *IHttpRequestHeaderCollection = @ptrCast(self);
        return try this.TryAppendWithoutValidation(name, value);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,HSTRING)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpRequestHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpRequestHeaderCollection.GUID;
    pub const IID: Guid = IHttpRequestHeaderCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpRequestHeaderCollection.SIGNATURE);
};
pub const HttpResponseHeaderCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getAge();
    }
    pub fn putAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.putAge(value);
    }
    pub fn getAllow(self: *@This()) core.HResult!*HttpMethodHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getAllow();
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheDirectiveHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getCacheControl();
    }
    pub fn getConnection(self: *@This()) core.HResult!*HttpConnectionOptionHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getDate();
    }
    pub fn putDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.putDate(value);
    }
    pub fn getLocation(self: *@This()) core.HResult!*Uri {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getProxyAuthenticate(self: *@This()) core.HResult!*HttpChallengeHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getProxyAuthenticate();
    }
    pub fn getRetryAfter(self: *@This()) core.HResult!*HttpDateOrDeltaHeaderValue {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getRetryAfter();
    }
    pub fn putRetryAfter(self: *@This(), value: *HttpDateOrDeltaHeaderValue) core.HResult!void {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.putRetryAfter(value);
    }
    pub fn getTransferEncoding(self: *@This()) core.HResult!*HttpTransferCodingHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getTransferEncoding();
    }
    pub fn getWwwAuthenticate(self: *@This()) core.HResult!*HttpChallengeHeaderValueCollection {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.getWwwAuthenticate();
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.Append(name, value);
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        const this: *IHttpResponseHeaderCollection = @ptrCast(self);
        return try this.TryAppendWithoutValidation(name, value);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,HSTRING) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,HSTRING)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpResponseHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpResponseHeaderCollection.GUID;
    pub const IID: Guid = IHttpResponseHeaderCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpResponseHeaderCollection.SIGNATURE);
};
pub const HttpTransferCodingHeaderValue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        const this: *IHttpTransferCodingHeaderValue = @ptrCast(self);
        return try this.getParameters();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpTransferCodingHeaderValue = @ptrCast(self);
        return try this.getValue();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(input: HSTRING) core.HResult!*HttpTransferCodingHeaderValue {
        const _f = @This().IHttpTransferCodingHeaderValueFactoryCache.get();
        return try _f.Create(input);
    }
    pub fn Parse(input: HSTRING) core.HResult!*HttpTransferCodingHeaderValue {
        const _f = @This().IHttpTransferCodingHeaderValueStaticsCache.get();
        return try _f.Parse(input);
    }
    pub fn TryParse(input: HSTRING, transferCodingHeaderValue: *HttpTransferCodingHeaderValue) core.HResult!bool {
        const _f = @This().IHttpTransferCodingHeaderValueStaticsCache.get();
        return try _f.TryParse(input, transferCodingHeaderValue);
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpTransferCodingHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpTransferCodingHeaderValue.GUID;
    pub const IID: Guid = IHttpTransferCodingHeaderValue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpTransferCodingHeaderValue.SIGNATURE);
    var _IHttpTransferCodingHeaderValueFactoryCache: FactoryCache(IHttpTransferCodingHeaderValueFactory, RUNTIME_NAME) = .{};
    var _IHttpTransferCodingHeaderValueStaticsCache: FactoryCache(IHttpTransferCodingHeaderValueStatics, RUNTIME_NAME) = .{};
};
pub const HttpTransferCodingHeaderValueCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const this: *IHttpTransferCodingHeaderValueCollection = @ptrCast(self);
        return try this.ParseAdd(input);
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        const this: *IHttpTransferCodingHeaderValueCollection = @ptrCast(self);
        return try this.TryParseAdd(input);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(HttpTransferCodingHeaderValue) {
        var this: ?*IVector(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(HttpTransferCodingHeaderValue) {
        var this: ?*IIterable(HttpTransferCodingHeaderValue) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn ToString(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStringable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStringable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ToString();
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.HttpTransferCodingHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpTransferCodingHeaderValueCollection.GUID;
    pub const IID: Guid = IHttpTransferCodingHeaderValueCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpTransferCodingHeaderValueCollection.SIGNATURE);
};
pub const IHttpCacheDirectiveHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn getMaxAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MaxAge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_MaxAge(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxStale(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MaxStale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxStale(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_MaxStale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinFresh(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MinFresh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinFresh(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_MinFresh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharedMaxAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_SharedMaxAge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharedMaxAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_SharedMaxAge(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCacheDirectiveHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a586b89-d5d0-4fbe-bd9d-b5b3636811b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxAge: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_MaxAge: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_MaxStale: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_MaxStale: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_MinFresh: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_MinFresh: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_SharedMaxAge: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_SharedMaxAge: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpChallengeHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Scheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Token(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpChallengeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "393361af-0f7d-4820-9fdd-a2b956eeaeab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
        get_Scheme: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Token: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpChallengeHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpChallengeHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca9e5f81-aee0-4353-a10b-e625babd64c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpChallengeHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromScheme(self: *@This(), scheme: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        var _r: *HttpChallengeHeaderValue = undefined;
        const _c = self.vtable.CreateFromScheme(@ptrCast(self), scheme, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromSchemeWithToken(self: *@This(), scheme: HSTRING, token: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        var _r: *HttpChallengeHeaderValue = undefined;
        const _c = self.vtable.CreateFromSchemeWithToken(@ptrCast(self), scheme, token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpChallengeHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c452c451-d99c-40aa-9399-90eeb98fc613";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromScheme: *const fn(self: *anyopaque, scheme: HSTRING, _r: **HttpChallengeHeaderValue) callconv(.winapi) HRESULT,
        CreateFromSchemeWithToken: *const fn(self: *anyopaque, scheme: HSTRING, token: HSTRING, _r: **HttpChallengeHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpChallengeHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpChallengeHeaderValue {
        var _r: *HttpChallengeHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, challengeHeaderValue: *HttpChallengeHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, challengeHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpChallengeHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3d38a72-fc01-4d01-a008-fcb7c459d635";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpChallengeHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, challengeHeaderValue: *HttpChallengeHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpConnectionOptionHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Token(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb4af27a-4e90-45eb-8dcd-fd1408f4c44f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Token: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpConnectionOptionHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4f56c1d-5142-4e00-8e0f-019509337629";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpConnectionOptionHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), token: HSTRING) core.HResult!*HttpConnectionOptionHeaderValue {
        var _r: *HttpConnectionOptionHeaderValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d93ccc1e-0b7d-4c3f-a58d-a2a1bdeabc0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, token: HSTRING, _r: **HttpConnectionOptionHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpConnectionOptionHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpConnectionOptionHeaderValue {
        var _r: *HttpConnectionOptionHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, connectionOptionHeaderValue: *HttpConnectionOptionHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, connectionOptionHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpConnectionOptionHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaa75d37-a946-4b1f-85af-48b68b3c50bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpConnectionOptionHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, connectionOptionHeaderValue: *HttpConnectionOptionHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getContentCoding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentCoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcf7f92a-9376-4d85-bccc-9f4f9acab434";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentCoding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d221721-a6db-436e-8e83-91596192819c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), contentCoding: HSTRING) core.HResult!*HttpContentCodingHeaderValue {
        var _r: *HttpContentCodingHeaderValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), contentCoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c53d2bd7-332b-4350-8510-2e67a2289a5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, contentCoding: HSTRING, _r: **HttpContentCodingHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpContentCodingHeaderValue {
        var _r: *HttpContentCodingHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, contentCodingHeaderValue: *HttpContentCodingHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, contentCodingHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94d8602e-f9bf-42f7-aa46-ed272a41e212";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpContentCodingHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, contentCodingHeaderValue: *HttpContentCodingHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingWithQualityHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getContentCoding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentCoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Quality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94531cd5-8b13-4d73-8651-f76b38f88495";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentCoding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Quality: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingWithQualityHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c0d753e-e899-4378-b5c8-412d820711cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingWithQualityHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromValue(self: *@This(), contentCoding: HSTRING) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        var _r: *HttpContentCodingWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromValue(@ptrCast(self), contentCoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromValueWithQuality(self: *@This(), contentCoding: HSTRING, quality: f64) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        var _r: *HttpContentCodingWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromValueWithQuality(@ptrCast(self), contentCoding, quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c45eee1a-c553-46fc-ade2-d75c1d53df7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromValue: *const fn(self: *anyopaque, contentCoding: HSTRING, _r: **HttpContentCodingWithQualityHeaderValue) callconv(.winapi) HRESULT,
        CreateFromValueWithQuality: *const fn(self: *anyopaque, contentCoding: HSTRING, quality: f64, _r: **HttpContentCodingWithQualityHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentCodingWithQualityHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpContentCodingWithQualityHeaderValue {
        var _r: *HttpContentCodingWithQualityHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, contentCodingWithQualityHeaderValue: *HttpContentCodingWithQualityHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, contentCodingWithQualityHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentCodingWithQualityHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8c9357c-8f89-4801-8e75-4c9abfc3de71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpContentCodingWithQualityHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, contentCodingWithQualityHeaderValue: *HttpContentCodingWithQualityHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentDispositionHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getDispositionType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DispositionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDispositionType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DispositionType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FileName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileNameStar(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FileNameStar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFileNameStar(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FileNameStar(@ptrCast(self), value);
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
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentDispositionHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2a2eedc-2629-4b49-9908-96a168e9365e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispositionType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DispositionType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FileNameStar: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FileNameStar: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: *IReference(u64)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentDispositionHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), dispositionType: HSTRING) core.HResult!*HttpContentDispositionHeaderValue {
        var _r: *HttpContentDispositionHeaderValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), dispositionType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9915bbc4-456c-4e81-8295-b2ab3cbcf545";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, dispositionType: HSTRING, _r: **HttpContentDispositionHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentDispositionHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpContentDispositionHeaderValue {
        var _r: *HttpContentDispositionHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, contentDispositionHeaderValue: *HttpContentDispositionHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, contentDispositionHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentDispositionHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29c56067-5a37-46e4-b074-c5177d69ca66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpContentDispositionHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, contentDispositionHeaderValue: *HttpContentDispositionHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentHeaderCollection = extern struct {
    vtable: *const VTable,
    pub fn getContentDisposition(self: *@This()) core.HResult!*HttpContentDispositionHeaderValue {
        var _r: *HttpContentDispositionHeaderValue = undefined;
        const _c = self.vtable.get_ContentDisposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentDisposition(self: *@This(), value: *HttpContentDispositionHeaderValue) core.HResult!void {
        const _c = self.vtable.put_ContentDisposition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentEncoding(self: *@This()) core.HResult!*HttpContentCodingHeaderValueCollection {
        var _r: *HttpContentCodingHeaderValueCollection = undefined;
        const _c = self.vtable.get_ContentEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentLanguage(self: *@This()) core.HResult!*HttpLanguageHeaderValueCollection {
        var _r: *HttpLanguageHeaderValueCollection = undefined;
        const _c = self.vtable.get_ContentLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ContentLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentLength(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const _c = self.vtable.put_ContentLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentLocation(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentLocation(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContentLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentMD5(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ContentMD5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentMD5(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_ContentMD5(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentRange(self: *@This()) core.HResult!*HttpContentRangeHeaderValue {
        var _r: *HttpContentRangeHeaderValue = undefined;
        const _c = self.vtable.get_ContentRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentRange(self: *@This(), value: *HttpContentRangeHeaderValue) core.HResult!void {
        const _c = self.vtable.put_ContentRange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentType(self: *@This()) core.HResult!*HttpMediaTypeHeaderValue {
        var _r: *HttpMediaTypeHeaderValue = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentType(self: *@This(), value: *HttpMediaTypeHeaderValue) core.HResult!void {
        const _c = self.vtable.put_ContentType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpires(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Expires(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpires(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Expires(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastModified(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_LastModified(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastModified(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_LastModified(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryAppendWithoutValidation(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40612a44-47ae-4b7e-9124-69628b64aa18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentDisposition: *const fn(self: *anyopaque, _r: **HttpContentDispositionHeaderValue) callconv(.winapi) HRESULT,
        put_ContentDisposition: *const fn(self: *anyopaque, value: *HttpContentDispositionHeaderValue) callconv(.winapi) HRESULT,
        get_ContentEncoding: *const fn(self: *anyopaque, _r: **HttpContentCodingHeaderValueCollection) callconv(.winapi) HRESULT,
        get_ContentLanguage: *const fn(self: *anyopaque, _r: **HttpLanguageHeaderValueCollection) callconv(.winapi) HRESULT,
        get_ContentLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        put_ContentLength: *const fn(self: *anyopaque, value: *IReference(u64)) callconv(.winapi) HRESULT,
        get_ContentLocation: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContentLocation: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ContentMD5: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_ContentMD5: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ContentRange: *const fn(self: *anyopaque, _r: **HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
        put_ContentRange: *const fn(self: *anyopaque, value: *HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: **HttpMediaTypeHeaderValue) callconv(.winapi) HRESULT,
        put_ContentType: *const fn(self: *anyopaque, value: *HttpMediaTypeHeaderValue) callconv(.winapi) HRESULT,
        get_Expires: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Expires: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_LastModified: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_LastModified: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        TryAppendWithoutValidation: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentRangeHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getFirstBytePosition(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_FirstBytePosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastBytePosition(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_LastBytePosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnit(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Unit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnit(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Unit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentRangeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04d967d3-a4f6-495c-9530-8579fcba8aa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FirstBytePosition: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_LastBytePosition: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_Unit: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Unit: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentRangeHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromLength(self: *@This(), length: u64) core.HResult!*HttpContentRangeHeaderValue {
        var _r: *HttpContentRangeHeaderValue = undefined;
        const _c = self.vtable.CreateFromLength(@ptrCast(self), length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromRange(self: *@This(), from: u64, to: u64) core.HResult!*HttpContentRangeHeaderValue {
        var _r: *HttpContentRangeHeaderValue = undefined;
        const _c = self.vtable.CreateFromRange(@ptrCast(self), from, to, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromRangeWithLength(self: *@This(), from: u64, to: u64, length: u64) core.HResult!*HttpContentRangeHeaderValue {
        var _r: *HttpContentRangeHeaderValue = undefined;
        const _c = self.vtable.CreateFromRangeWithLength(@ptrCast(self), from, to, length, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentRangeHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f5bd691-a03c-4456-9a6f-ef27ecd03cae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromLength: *const fn(self: *anyopaque, length: u64, _r: **HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
        CreateFromRange: *const fn(self: *anyopaque, from: u64, to: u64, _r: **HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
        CreateFromRangeWithLength: *const fn(self: *anyopaque, from: u64, to: u64, length: u64, _r: **HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpContentRangeHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpContentRangeHeaderValue {
        var _r: *HttpContentRangeHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, contentRangeHeaderValue: *HttpContentRangeHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, contentRangeHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpContentRangeHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80a346ca-174c-4fae-821c-134cd294aa38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpContentRangeHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, contentRangeHeaderValue: *HttpContentRangeHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookiePairHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCookiePairHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbd46217-4b29-412b-bd90-b3d814ab8e1b";
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
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookiePairHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCookiePairHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3f44350-581e-4ecc-9f59-e507d04f06e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookiePairHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromName(self: *@This(), name: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        var _r: *HttpCookiePairHeaderValue = undefined;
        const _c = self.vtable.CreateFromName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNameWithValue(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        var _r: *HttpCookiePairHeaderValue = undefined;
        const _c = self.vtable.CreateFromNameWithValue(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCookiePairHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "635e326f-146f-4f56-aa21-2cb7d6d58b1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromName: *const fn(self: *anyopaque, name: HSTRING, _r: **HttpCookiePairHeaderValue) callconv(.winapi) HRESULT,
        CreateFromNameWithValue: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: **HttpCookiePairHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCookiePairHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpCookiePairHeaderValue {
        var _r: *HttpCookiePairHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, cookiePairHeaderValue: *HttpCookiePairHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, cookiePairHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCookiePairHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e866d48-06af-4462-8158-99388d5dca81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpCookiePairHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, cookiePairHeaderValue: *HttpCookiePairHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCredentialsHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScheme(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Scheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Token(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCredentialsHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c34cc3cb-542e-4177-a6c7-b674ce193fbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
        get_Scheme: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Token: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCredentialsHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromScheme(self: *@This(), scheme: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        var _r: *HttpCredentialsHeaderValue = undefined;
        const _c = self.vtable.CreateFromScheme(@ptrCast(self), scheme, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromSchemeWithToken(self: *@This(), scheme: HSTRING, token: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        var _r: *HttpCredentialsHeaderValue = undefined;
        const _c = self.vtable.CreateFromSchemeWithToken(@ptrCast(self), scheme, token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCredentialsHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f21d9e91-4d1c-4182-bfd1-34470a62f950";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromScheme: *const fn(self: *anyopaque, scheme: HSTRING, _r: **HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        CreateFromSchemeWithToken: *const fn(self: *anyopaque, scheme: HSTRING, token: HSTRING, _r: **HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpCredentialsHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpCredentialsHeaderValue {
        var _r: *HttpCredentialsHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, credentialsHeaderValue: *HttpCredentialsHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, credentialsHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpCredentialsHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a69b2be6-ce8c-4443-a35a-1b727b131036";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, credentialsHeaderValue: *HttpCredentialsHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDateOrDeltaHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelta(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Delta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eafcaa6a-c4dc-49e2-a27d-043adf5867a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Delta: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpDateOrDeltaHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpDateOrDeltaHeaderValue {
        var _r: *HttpDateOrDeltaHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, dateOrDeltaHeaderValue: *HttpDateOrDeltaHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, dateOrDeltaHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpDateOrDeltaHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c2659a8-6672-4e90-9a9a-f39766f7f576";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpDateOrDeltaHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, dateOrDeltaHeaderValue: *HttpDateOrDeltaHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpExpectationHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpExpectationHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ce585cd-3a99-43af-a2e6-ec232fea9658";
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
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpExpectationHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpExpectationHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e78521b3-a0e2-4ac4-9e66-79706cb9fd58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpExpectationHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromName(self: *@This(), name: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        var _r: *HttpExpectationHeaderValue = undefined;
        const _c = self.vtable.CreateFromName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNameWithValue(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        var _r: *HttpExpectationHeaderValue = undefined;
        const _c = self.vtable.CreateFromNameWithValue(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpExpectationHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ea275cb-d53e-4868-8856-1e21a5030dc0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromName: *const fn(self: *anyopaque, name: HSTRING, _r: **HttpExpectationHeaderValue) callconv(.winapi) HRESULT,
        CreateFromNameWithValue: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: **HttpExpectationHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpExpectationHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpExpectationHeaderValue {
        var _r: *HttpExpectationHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, expectationHeaderValue: *HttpExpectationHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, expectationHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpExpectationHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3019abe2-cfe5-473b-a57f-fba5b14eb257";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpExpectationHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, expectationHeaderValue: *HttpExpectationHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpLanguageHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpLanguageHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ebd7ca3-8219-44f6-9902-8c56dfd3340c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpLanguageRangeWithQualityHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getLanguageRange(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LanguageRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Quality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7256e102-0080-4db4-a083-7de7b2e5ba4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LanguageRange: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Quality: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpLanguageRangeWithQualityHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "885d5abd-4b4f-480a-89ce-8aedcee6e3a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpLanguageRangeWithQualityHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromLanguageRange(self: *@This(), languageRange: HSTRING) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        var _r: *HttpLanguageRangeWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromLanguageRange(@ptrCast(self), languageRange, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLanguageRangeWithQuality(self: *@This(), languageRange: HSTRING, quality: f64) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        var _r: *HttpLanguageRangeWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromLanguageRangeWithQuality(@ptrCast(self), languageRange, quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bb83970-780f-4c83-9fe4-dc3087f6bd55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromLanguageRange: *const fn(self: *anyopaque, languageRange: HSTRING, _r: **HttpLanguageRangeWithQualityHeaderValue) callconv(.winapi) HRESULT,
        CreateFromLanguageRangeWithQuality: *const fn(self: *anyopaque, languageRange: HSTRING, quality: f64, _r: **HttpLanguageRangeWithQualityHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpLanguageRangeWithQualityHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpLanguageRangeWithQualityHeaderValue {
        var _r: *HttpLanguageRangeWithQualityHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, languageRangeWithQualityHeaderValue: *HttpLanguageRangeWithQualityHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, languageRangeWithQualityHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpLanguageRangeWithQualityHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2541e146-f308-46f5-b695-42f54024ec68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpLanguageRangeWithQualityHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, languageRangeWithQualityHeaderValue: *HttpLanguageRangeWithQualityHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getCharSet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CharSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharSet(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CharSet(@ptrCast(self), value);
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
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16b28533-e728-4fcb-bdb0-08a431a14844";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CharSet: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CharSet: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MediaType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), mediaType: HSTRING) core.HResult!*HttpMediaTypeHeaderValue {
        var _r: *HttpMediaTypeHeaderValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), mediaType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bed747a8-cd17-42dd-9367-ab9c5b56dd7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, mediaType: HSTRING, _r: **HttpMediaTypeHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpMediaTypeHeaderValue {
        var _r: *HttpMediaTypeHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, mediaTypeHeaderValue: *HttpMediaTypeHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, mediaTypeHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e04d83df-1d41-4d8c-a2de-6fd2ed87399b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpMediaTypeHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, mediaTypeHeaderValue: *HttpMediaTypeHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeWithQualityHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getCharSet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CharSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharSet(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CharSet(@ptrCast(self), value);
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
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuality(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_Quality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuality(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_Quality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "188d5e32-76be-44a0-b1cd-2074bded2dde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CharSet: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CharSet: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MediaType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
        get_Quality: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_Quality: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeWithQualityHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c0c6b73-1342-4587-a056-18d02ff67165";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeWithQualityHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromMediaType(self: *@This(), mediaType: HSTRING) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        var _r: *HttpMediaTypeWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromMediaType(@ptrCast(self), mediaType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromMediaTypeWithQuality(self: *@This(), mediaType: HSTRING, quality: f64) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        var _r: *HttpMediaTypeWithQualityHeaderValue = undefined;
        const _c = self.vtable.CreateFromMediaTypeWithQuality(@ptrCast(self), mediaType, quality, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c6d20f4-9457-44e6-a323-d122b958780b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromMediaType: *const fn(self: *anyopaque, mediaType: HSTRING, _r: **HttpMediaTypeWithQualityHeaderValue) callconv(.winapi) HRESULT,
        CreateFromMediaTypeWithQuality: *const fn(self: *anyopaque, mediaType: HSTRING, quality: f64, _r: **HttpMediaTypeWithQualityHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMediaTypeWithQualityHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpMediaTypeWithQualityHeaderValue {
        var _r: *HttpMediaTypeWithQualityHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, mediaTypeWithQualityHeaderValue: *HttpMediaTypeWithQualityHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, mediaTypeWithQualityHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMediaTypeWithQualityHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b070cd9-b560-4fc8-9835-7e6c0a657b24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpMediaTypeWithQualityHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, mediaTypeWithQualityHeaderValue: *HttpMediaTypeWithQualityHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMethodHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpMethodHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43bc3ff4-6119-4adf-938c-34bfffcf92ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpNameValueHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpNameValueHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8ba7463-5b9a-4d1b-93f9-aa5b44ecfddf";
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
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpNameValueHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromName(self: *@This(), name: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        var _r: *HttpNameValueHeaderValue = undefined;
        const _c = self.vtable.CreateFromName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNameWithValue(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        var _r: *HttpNameValueHeaderValue = undefined;
        const _c = self.vtable.CreateFromNameWithValue(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpNameValueHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "770e2267-cbf8-4736-a925-93fbe10c7ca8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromName: *const fn(self: *anyopaque, name: HSTRING, _r: **HttpNameValueHeaderValue) callconv(.winapi) HRESULT,
        CreateFromNameWithValue: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: **HttpNameValueHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpNameValueHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpNameValueHeaderValue {
        var _r: *HttpNameValueHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, nameValueHeaderValue: *HttpNameValueHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, nameValueHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpNameValueHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffd4030f-1130-4152-8659-256909a9d115";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpNameValueHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, nameValueHeaderValue: *HttpNameValueHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4feee03-ebd4-4160-b9ff-807c5183b6e6";
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
        get_Version: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromName(self: *@This(), productName: HSTRING) core.HResult!*HttpProductHeaderValue {
        var _r: *HttpProductHeaderValue = undefined;
        const _c = self.vtable.CreateFromName(@ptrCast(self), productName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNameWithVersion(self: *@This(), productName: HSTRING, productVersion: HSTRING) core.HResult!*HttpProductHeaderValue {
        var _r: *HttpProductHeaderValue = undefined;
        const _c = self.vtable.CreateFromNameWithVersion(@ptrCast(self), productName, productVersion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "611aa4f5-82bc-42fb-977b-dc00536e5e86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromName: *const fn(self: *anyopaque, productName: HSTRING, _r: **HttpProductHeaderValue) callconv(.winapi) HRESULT,
        CreateFromNameWithVersion: *const fn(self: *anyopaque, productName: HSTRING, productVersion: HSTRING, _r: **HttpProductHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpProductHeaderValue {
        var _r: *HttpProductHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, productHeaderValue: *HttpProductHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, productHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90c33e29-befc-4337-be62-49f097975f53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpProductHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, productHeaderValue: *HttpProductHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductInfoHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getProduct(self: *@This()) core.HResult!*HttpProductHeaderValue {
        var _r: *HttpProductHeaderValue = undefined;
        const _c = self.vtable.get_Product(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductInfoHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b1a8732-4c35-486a-966f-646489198e4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Product: *const fn(self: *anyopaque, _r: **HttpProductHeaderValue) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductInfoHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductInfoHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "877df74a-d69b-44f8-ad4f-453af9c42ed0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductInfoHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromComment(self: *@This(), productComment: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        var _r: *HttpProductInfoHeaderValue = undefined;
        const _c = self.vtable.CreateFromComment(@ptrCast(self), productComment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNameWithVersion(self: *@This(), productName: HSTRING, productVersion: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        var _r: *HttpProductInfoHeaderValue = undefined;
        const _c = self.vtable.CreateFromNameWithVersion(@ptrCast(self), productName, productVersion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductInfoHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24220fbe-eabe-4464-b460-ec010b7c41e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromComment: *const fn(self: *anyopaque, productComment: HSTRING, _r: **HttpProductInfoHeaderValue) callconv(.winapi) HRESULT,
        CreateFromNameWithVersion: *const fn(self: *anyopaque, productName: HSTRING, productVersion: HSTRING, _r: **HttpProductInfoHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpProductInfoHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpProductInfoHeaderValue {
        var _r: *HttpProductInfoHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, productInfoHeaderValue: *HttpProductInfoHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, productInfoHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpProductInfoHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db7fd857-327a-4e73-81e5-7059a302b042";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpProductInfoHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, productInfoHeaderValue: *HttpProductInfoHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpRequestHeaderCollection = extern struct {
    vtable: *const VTable,
    pub fn getAccept(self: *@This()) core.HResult!*HttpMediaTypeWithQualityHeaderValueCollection {
        var _r: *HttpMediaTypeWithQualityHeaderValueCollection = undefined;
        const _c = self.vtable.get_Accept(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcceptEncoding(self: *@This()) core.HResult!*HttpContentCodingWithQualityHeaderValueCollection {
        var _r: *HttpContentCodingWithQualityHeaderValueCollection = undefined;
        const _c = self.vtable.get_AcceptEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcceptLanguage(self: *@This()) core.HResult!*HttpLanguageRangeWithQualityHeaderValueCollection {
        var _r: *HttpLanguageRangeWithQualityHeaderValueCollection = undefined;
        const _c = self.vtable.get_AcceptLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthorization(self: *@This()) core.HResult!*HttpCredentialsHeaderValue {
        var _r: *HttpCredentialsHeaderValue = undefined;
        const _c = self.vtable.get_Authorization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthorization(self: *@This(), value: *HttpCredentialsHeaderValue) core.HResult!void {
        const _c = self.vtable.put_Authorization(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheDirectiveHeaderValueCollection {
        var _r: *HttpCacheDirectiveHeaderValueCollection = undefined;
        const _c = self.vtable.get_CacheControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnection(self: *@This()) core.HResult!*HttpConnectionOptionHeaderValueCollection {
        var _r: *HttpConnectionOptionHeaderValueCollection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCookie(self: *@This()) core.HResult!*HttpCookiePairHeaderValueCollection {
        var _r: *HttpCookiePairHeaderValueCollection = undefined;
        const _c = self.vtable.get_Cookie(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Date(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpect(self: *@This()) core.HResult!*HttpExpectationHeaderValueCollection {
        var _r: *HttpExpectationHeaderValueCollection = undefined;
        const _c = self.vtable.get_Expect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHost(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_Host(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHost(self: *@This(), value: *HostName) core.HResult!void {
        const _c = self.vtable.put_Host(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIfModifiedSince(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_IfModifiedSince(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIfModifiedSince(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_IfModifiedSince(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIfUnmodifiedSince(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_IfUnmodifiedSince(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIfUnmodifiedSince(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_IfUnmodifiedSince(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxForwards(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxForwards(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxForwards(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_MaxForwards(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyAuthorization(self: *@This()) core.HResult!*HttpCredentialsHeaderValue {
        var _r: *HttpCredentialsHeaderValue = undefined;
        const _c = self.vtable.get_ProxyAuthorization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyAuthorization(self: *@This(), value: *HttpCredentialsHeaderValue) core.HResult!void {
        const _c = self.vtable.put_ProxyAuthorization(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReferer(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Referer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReferer(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Referer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransferEncoding(self: *@This()) core.HResult!*HttpTransferCodingHeaderValueCollection {
        var _r: *HttpTransferCodingHeaderValueCollection = undefined;
        const _c = self.vtable.get_TransferEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserAgent(self: *@This()) core.HResult!*HttpProductInfoHeaderValueCollection {
        var _r: *HttpProductInfoHeaderValueCollection = undefined;
        const _c = self.vtable.get_UserAgent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryAppendWithoutValidation(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpRequestHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af40329b-b544-469b-86b9-ac3d466fea36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Accept: *const fn(self: *anyopaque, _r: **HttpMediaTypeWithQualityHeaderValueCollection) callconv(.winapi) HRESULT,
        get_AcceptEncoding: *const fn(self: *anyopaque, _r: **HttpContentCodingWithQualityHeaderValueCollection) callconv(.winapi) HRESULT,
        get_AcceptLanguage: *const fn(self: *anyopaque, _r: **HttpLanguageRangeWithQualityHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Authorization: *const fn(self: *anyopaque, _r: **HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        put_Authorization: *const fn(self: *anyopaque, value: *HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        get_CacheControl: *const fn(self: *anyopaque, _r: **HttpCacheDirectiveHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **HttpConnectionOptionHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Cookie: *const fn(self: *anyopaque, _r: **HttpCookiePairHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Date: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Expect: *const fn(self: *anyopaque, _r: **HttpExpectationHeaderValueCollection) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Host: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        put_Host: *const fn(self: *anyopaque, value: *HostName) callconv(.winapi) HRESULT,
        get_IfModifiedSince: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_IfModifiedSince: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_IfUnmodifiedSince: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_IfUnmodifiedSince: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_MaxForwards: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_MaxForwards: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_ProxyAuthorization: *const fn(self: *anyopaque, _r: **HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        put_ProxyAuthorization: *const fn(self: *anyopaque, value: *HttpCredentialsHeaderValue) callconv(.winapi) HRESULT,
        get_Referer: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Referer: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_TransferEncoding: *const fn(self: *anyopaque, _r: **HttpTransferCodingHeaderValueCollection) callconv(.winapi) HRESULT,
        get_UserAgent: *const fn(self: *anyopaque, _r: **HttpProductInfoHeaderValueCollection) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        TryAppendWithoutValidation: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpResponseHeaderCollection = extern struct {
    vtable: *const VTable,
    pub fn getAge(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Age(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAge(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_Age(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllow(self: *@This()) core.HResult!*HttpMethodHeaderValueCollection {
        var _r: *HttpMethodHeaderValueCollection = undefined;
        const _c = self.vtable.get_Allow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCacheControl(self: *@This()) core.HResult!*HttpCacheDirectiveHeaderValueCollection {
        var _r: *HttpCacheDirectiveHeaderValueCollection = undefined;
        const _c = self.vtable.get_CacheControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnection(self: *@This()) core.HResult!*HttpConnectionOptionHeaderValueCollection {
        var _r: *HttpConnectionOptionHeaderValueCollection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_Date(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyAuthenticate(self: *@This()) core.HResult!*HttpChallengeHeaderValueCollection {
        var _r: *HttpChallengeHeaderValueCollection = undefined;
        const _c = self.vtable.get_ProxyAuthenticate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRetryAfter(self: *@This()) core.HResult!*HttpDateOrDeltaHeaderValue {
        var _r: *HttpDateOrDeltaHeaderValue = undefined;
        const _c = self.vtable.get_RetryAfter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRetryAfter(self: *@This(), value: *HttpDateOrDeltaHeaderValue) core.HResult!void {
        const _c = self.vtable.put_RetryAfter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransferEncoding(self: *@This()) core.HResult!*HttpTransferCodingHeaderValueCollection {
        var _r: *HttpTransferCodingHeaderValueCollection = undefined;
        const _c = self.vtable.get_TransferEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWwwAuthenticate(self: *@This()) core.HResult!*HttpChallengeHeaderValueCollection {
        var _r: *HttpChallengeHeaderValueCollection = undefined;
        const _c = self.vtable.get_WwwAuthenticate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Append(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!void {
        const _c = self.vtable.Append(@ptrCast(self), name, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryAppendWithoutValidation(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryAppendWithoutValidation(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpResponseHeaderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a990969-fa3f-41ed-aac6-bf957975c16b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Age: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Age: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Allow: *const fn(self: *anyopaque, _r: **HttpMethodHeaderValueCollection) callconv(.winapi) HRESULT,
        get_CacheControl: *const fn(self: *anyopaque, _r: **HttpCacheDirectiveHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **HttpConnectionOptionHeaderValueCollection) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_Date: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ProxyAuthenticate: *const fn(self: *anyopaque, _r: **HttpChallengeHeaderValueCollection) callconv(.winapi) HRESULT,
        get_RetryAfter: *const fn(self: *anyopaque, _r: **HttpDateOrDeltaHeaderValue) callconv(.winapi) HRESULT,
        put_RetryAfter: *const fn(self: *anyopaque, value: *HttpDateOrDeltaHeaderValue) callconv(.winapi) HRESULT,
        get_TransferEncoding: *const fn(self: *anyopaque, _r: **HttpTransferCodingHeaderValueCollection) callconv(.winapi) HRESULT,
        get_WwwAuthenticate: *const fn(self: *anyopaque, _r: **HttpChallengeHeaderValueCollection) callconv(.winapi) HRESULT,
        Append: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING) callconv(.winapi) HRESULT,
        TryAppendWithoutValidation: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpTransferCodingHeaderValue = extern struct {
    vtable: *const VTable,
    pub fn getParameters(self: *@This()) core.HResult!*IVector(HttpNameValueHeaderValue) {
        var _r: *IVector(HttpNameValueHeaderValue) = undefined;
        const _c = self.vtable.get_Parameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpTransferCodingHeaderValue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "436f32f9-3ded-42bd-b38a-5496a2511ce6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parameters: *const fn(self: *anyopaque, _r: **IVector(HttpNameValueHeaderValue)) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHttpTransferCodingHeaderValueCollection = extern struct {
    vtable: *const VTable,
    pub fn ParseAdd(self: *@This(), input: HSTRING) core.HResult!void {
        const _c = self.vtable.ParseAdd(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryParseAdd(self: *@This(), input: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseAdd(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "202c8c34-2c03-49b8-9665-73e27cb2fc79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ParseAdd: *const fn(self: *anyopaque, input: HSTRING) callconv(.winapi) HRESULT,
        TryParseAdd: *const fn(self: *anyopaque, input: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHttpTransferCodingHeaderValueFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), input: HSTRING) core.HResult!*HttpTransferCodingHeaderValue {
        var _r: *HttpTransferCodingHeaderValue = undefined;
        const _c = self.vtable.Create(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb62dffc-e361-4f08-8e4f-c9e723de703b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpTransferCodingHeaderValue) callconv(.winapi) HRESULT,
    };
};
pub const IHttpTransferCodingHeaderValueStatics = extern struct {
    vtable: *const VTable,
    pub fn Parse(self: *@This(), input: HSTRING) core.HResult!*HttpTransferCodingHeaderValue {
        var _r: *HttpTransferCodingHeaderValue = undefined;
        const _c = self.vtable.Parse(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParse(self: *@This(), input: HSTRING, transferCodingHeaderValue: *HttpTransferCodingHeaderValue) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParse(@ptrCast(self), input, transferCodingHeaderValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.Http.Headers.IHttpTransferCodingHeaderValueStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ab8892a-1a98-4d32-a906-7470a9875ce5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Parse: *const fn(self: *anyopaque, input: HSTRING, _r: **HttpTransferCodingHeaderValue) callconv(.winapi) HRESULT,
        TryParse: *const fn(self: *anyopaque, input: HSTRING, transferCodingHeaderValue: *HttpTransferCodingHeaderValue, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const Language = @import("../../Globalization.zig").Language;
const HttpMethod = @import("../Http.zig").HttpMethod;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Uri = @import("../../Foundation.zig").Uri;
const HRESULT = @import("../../root.zig").HRESULT;
const HostName = @import("../../Networking.zig").HostName;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const IStringable = @import("../../Foundation.zig").IStringable;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const core = @import("../../root.zig").core;
