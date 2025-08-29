pub const BitmapCreateOptions = enum(i32) {
    None = 0,
    IgnoreImageCache = 8,
};
pub const BitmapSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        const this: *IBitmapSource = @ptrCast(self);
        return try this.getPixelWidth();
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        const this: *IBitmapSource = @ptrCast(self);
        return try this.getPixelHeight();
    }
    pub fn SetSource(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!void {
        const this: *IBitmapSource = @ptrCast(self);
        return try this.SetSource(streamSource);
    }
    pub fn SetSourceAsync(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const this: *IBitmapSource = @ptrCast(self);
        return try this.SetSourceAsync(streamSource);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getPixelWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapSourceStaticsCache.get();
        return try factory.getPixelWidthProperty();
    }
    pub fn getPixelHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapSourceStaticsCache.get();
        return try factory.getPixelHeightProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BitmapSource {
        const factory = @This().IBitmapSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.BitmapSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapSource.GUID;
    pub const IID: Guid = IBitmapSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapSource.SIGNATURE);
    var _IBitmapSourceStaticsCache: FactoryCache(IBitmapSourceStatics, RUNTIME_NAME) = .{};
    var _IBitmapSourceFactoryCache: FactoryCache(IBitmapSourceFactory, RUNTIME_NAME) = .{};
};
pub const BitmapImage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCreateOptions(self: *@This()) core.HResult!BitmapCreateOptions {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.getCreateOptions();
    }
    pub fn putCreateOptions(self: *@This(), value: BitmapCreateOptions) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.putCreateOptions(value);
    }
    pub fn getUriSource(self: *@This()) core.HResult!*Uri {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.getUriSource();
    }
    pub fn putUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.putUriSource(value);
    }
    pub fn getDecodePixelWidth(self: *@This()) core.HResult!i32 {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.getDecodePixelWidth();
    }
    pub fn putDecodePixelWidth(self: *@This(), value: i32) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.putDecodePixelWidth(value);
    }
    pub fn getDecodePixelHeight(self: *@This()) core.HResult!i32 {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.getDecodePixelHeight();
    }
    pub fn putDecodePixelHeight(self: *@This(), value: i32) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.putDecodePixelHeight(value);
    }
    pub fn addDownloadProgress(self: *@This(), handler: *DownloadProgressEventHandler) core.HResult!EventRegistrationToken {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.addDownloadProgress(handler);
    }
    pub fn removeDownloadProgress(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.removeDownloadProgress(token);
    }
    pub fn addImageOpened(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.addImageOpened(handler);
    }
    pub fn removeImageOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.removeImageOpened(token);
    }
    pub fn addImageFailed(self: *@This(), handler: *ExceptionRoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.addImageFailed(handler);
    }
    pub fn removeImageFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBitmapImage = @ptrCast(self);
        return try this.removeImageFailed(token);
    }
    pub fn getDecodePixelType(self: *@This()) core.HResult!DecodePixelType {
        var this: ?*IBitmapImage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDecodePixelType();
    }
    pub fn putDecodePixelType(self: *@This(), value: DecodePixelType) core.HResult!void {
        var this: ?*IBitmapImage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDecodePixelType(value);
    }
    pub fn getIsAnimatedBitmap(self: *@This()) core.HResult!bool {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAnimatedBitmap();
    }
    pub fn getIsPlaying(self: *@This()) core.HResult!bool {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPlaying();
    }
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoPlay();
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoPlay(value);
    }
    pub fn Play(self: *@This()) core.HResult!void {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Play();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IBitmapImage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBitmapImage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBitmapImage.IID)));
    }
    pub fn CreateInstanceWithUriSource(uriSource: *Uri) core.HResult!*BitmapImage {
        const factory = @This().IBitmapImageFactoryCache.get();
        return try factory.CreateInstanceWithUriSource(uriSource);
    }
    pub fn getDecodePixelTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStatics2Cache.get();
        return try factory.getDecodePixelTypeProperty();
    }
    pub fn getCreateOptionsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStaticsCache.get();
        return try factory.getCreateOptionsProperty();
    }
    pub fn getUriSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStaticsCache.get();
        return try factory.getUriSourceProperty();
    }
    pub fn getDecodePixelWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStaticsCache.get();
        return try factory.getDecodePixelWidthProperty();
    }
    pub fn getDecodePixelHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStaticsCache.get();
        return try factory.getDecodePixelHeightProperty();
    }
    pub fn getIsAnimatedBitmapProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStatics3Cache.get();
        return try factory.getIsAnimatedBitmapProperty();
    }
    pub fn getIsPlayingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStatics3Cache.get();
        return try factory.getIsPlayingProperty();
    }
    pub fn getAutoPlayProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBitmapImageStatics3Cache.get();
        return try factory.getAutoPlayProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.BitmapImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapImage.GUID;
    pub const IID: Guid = IBitmapImage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapImage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBitmapImageFactoryCache: FactoryCache(IBitmapImageFactory, RUNTIME_NAME) = .{};
    var _IBitmapImageStatics2Cache: FactoryCache(IBitmapImageStatics2, RUNTIME_NAME) = .{};
    var _IBitmapImageStaticsCache: FactoryCache(IBitmapImageStatics, RUNTIME_NAME) = .{};
    var _IBitmapImageStatics3Cache: FactoryCache(IBitmapImageStatics3, RUNTIME_NAME) = .{};
};
pub const DecodePixelType = enum(i32) {
    Physical = 0,
    Logical = 1,
};
pub const DownloadProgressEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProgress(self: *@This()) core.HResult!i32 {
        const this: *IDownloadProgressEventArgs = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn putProgress(self: *@This(), value: i32) core.HResult!void {
        const this: *IDownloadProgressEventArgs = @ptrCast(self);
        return try this.putProgress(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.DownloadProgressEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDownloadProgressEventArgs.GUID;
    pub const IID: Guid = IDownloadProgressEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDownloadProgressEventArgs.SIGNATURE);
};
pub const DownloadProgressEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DownloadProgressEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DownloadProgressEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DownloadProgressEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.DownloadProgressEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1abaee23-74ee-4cc7-99ba-b171e3cda61e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DownloadProgressEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IBitmapImage = extern struct {
    vtable: *const VTable,
    pub fn getCreateOptions(self: *@This()) core.HResult!BitmapCreateOptions {
        var _r: BitmapCreateOptions = undefined;
        const _c = self.vtable.get_CreateOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCreateOptions(self: *@This(), value: BitmapCreateOptions) core.HResult!void {
        const _c = self.vtable.put_CreateOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUriSource(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_UriSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_UriSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecodePixelWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DecodePixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodePixelWidth(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DecodePixelWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecodePixelHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DecodePixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodePixelHeight(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DecodePixelHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadProgress(self: *@This(), handler: *DownloadProgressEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadProgress(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadProgress(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadProgress(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addImageOpened(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImageOpened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImageOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImageOpened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addImageFailed(self: *@This(), handler: *ExceptionRoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImageFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImageFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImageFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31af3271-e3b4-442d-a341-4c0226b2725b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CreateOptions: *const fn(self: *anyopaque, _r: *BitmapCreateOptions) callconv(.winapi) HRESULT,
        put_CreateOptions: *const fn(self: *anyopaque, value: BitmapCreateOptions) callconv(.winapi) HRESULT,
        get_UriSource: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_UriSource: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_DecodePixelWidth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DecodePixelWidth: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_DecodePixelHeight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DecodePixelHeight: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        add_DownloadProgress: *const fn(self: *anyopaque, handler: *DownloadProgressEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadProgress: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ImageOpened: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImageOpened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ImageFailed: *const fn(self: *anyopaque, handler: *ExceptionRoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImageFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImage2 = extern struct {
    vtable: *const VTable,
    pub fn getDecodePixelType(self: *@This()) core.HResult!DecodePixelType {
        var _r: DecodePixelType = undefined;
        const _c = self.vtable.get_DecodePixelType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodePixelType(self: *@This(), value: DecodePixelType) core.HResult!void {
        const _c = self.vtable.put_DecodePixelType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1069c1b6-8c9b-4762-be3d-759f5698f2b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DecodePixelType: *const fn(self: *anyopaque, _r: *DecodePixelType) callconv(.winapi) HRESULT,
        put_DecodePixelType: *const fn(self: *anyopaque, value: DecodePixelType) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImage3 = extern struct {
    vtable: *const VTable,
    pub fn getIsAnimatedBitmap(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnimatedBitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlaying(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlaying(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoPlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoPlay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Play(self: *@This()) core.HResult!void {
        const _c = self.vtable.Play(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1de6f26-3c73-453f-a7ba-9b85c18b3733";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAnimatedBitmap: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlaying: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AutoPlay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoPlay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        Play: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithUriSource(self: *@This(), uriSource: *Uri) core.HResult!*BitmapImage {
        var _r: *BitmapImage = undefined;
        const _c = self.vtable.CreateInstanceWithUriSource(@ptrCast(self), uriSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9132978-4810-4e5e-8087-03671ee60d85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithUriSource: *const fn(self: *anyopaque, uriSource: *Uri, _r: **BitmapImage) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImageStatics = extern struct {
    vtable: *const VTable,
    pub fn getCreateOptionsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CreateOptionsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUriSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_UriSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecodePixelWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DecodePixelWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecodePixelHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DecodePixelHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e282143-70e8-437c-9fa4-2cbf295cff84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CreateOptionsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_UriSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DecodePixelWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DecodePixelHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImageStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getDecodePixelTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DecodePixelTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5f5576a-75af-41a4-b893-8fe91fee2882";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DecodePixelTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapImageStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getIsAnimatedBitmapProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsAnimatedBitmapProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlayingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsPlayingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoPlayProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AutoPlayProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapImageStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b44e30d-f6d5-4411-a8cd-bf7603c4faa0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAnimatedBitmapProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsPlayingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AutoPlayProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapSource = extern struct {
    vtable: *const VTable,
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSource(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.SetSource(@ptrCast(self), streamSource);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSourceAsync(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetSourceAsync(@ptrCast(self), streamSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23d86411-202f-41b2-8c5b-a8a3b333800b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelWidth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PixelHeight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        SetSource: *const fn(self: *anyopaque, streamSource: *IRandomAccessStream) callconv(.winapi) HRESULT,
        SetSourceAsync: *const fn(self: *anyopaque, streamSource: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BitmapSource {
        var _r: *BitmapSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e240420e-d4a7-49a4-a0b4-a59fdd77e508";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **BitmapSource) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn getPixelWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PixelWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PixelHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IBitmapSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a9c9981-827b-4e51-891b-8a15b511842d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PixelHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadProgressEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProgress(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProgress(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Progress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IDownloadProgressEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7311e0d4-fe94-4e70-9b90-cdd47ac23afb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Progress: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IRenderTargetBitmap = extern struct {
    vtable: *const VTable,
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_PixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderAsync(self: *@This(), element: *UIElement) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenderAsync(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderAsync(self: *@This(), element: *UIElement, scaledWidth: i32, scaledHeight: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RenderAsync(@ptrCast(self), element, scaledWidth, scaledHeight, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPixelsAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.GetPixelsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "500dee81-893c-4c0a-8fec-4678ac717589";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelWidth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PixelHeight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        RenderAsync: *const fn(self: *anyopaque, element: *UIElement, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RenderAsync: *const fn(self: *anyopaque, element: *UIElement, scaledWidth: i32, scaledHeight: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetPixelsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const IRenderTargetBitmapStatics = extern struct {
    vtable: *const VTable,
    pub fn getPixelWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PixelWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PixelHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IRenderTargetBitmapStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0a1efee-c131-4d40-9c47-f7d7cf2b077f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PixelHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISoftwareBitmapSource = extern struct {
    vtable: *const VTable,
    pub fn SetBitmapAsync(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetBitmapAsync(@ptrCast(self), softwareBitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISoftwareBitmapSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2dd9ed0-d3c5-4056-91b5-b7c1d1e8130e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetBitmapAsync: *const fn(self: *anyopaque, softwareBitmap: *SoftwareBitmap, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ISurfaceImageSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISurfaceImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62f7d416-c714-4c4c-8273-f839bc58135c";
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
pub const ISurfaceImageSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithDimensions(self: *@This(), pixelWidth: i32, pixelHeight: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SurfaceImageSource {
        var _r: *SurfaceImageSource = undefined;
        const _c = self.vtable.CreateInstanceWithDimensions(@ptrCast(self), pixelWidth, pixelHeight, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDimensionsAndOpacity(self: *@This(), pixelWidth: i32, pixelHeight: i32, isOpaque: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SurfaceImageSource {
        var _r: *SurfaceImageSource = undefined;
        const _c = self.vtable.CreateInstanceWithDimensionsAndOpacity(@ptrCast(self), pixelWidth, pixelHeight, isOpaque, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISurfaceImageSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ab2212a-ef65-4a5f-bfac-73993e8c12c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithDimensions: *const fn(self: *anyopaque, pixelWidth: i32, pixelHeight: i32, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SurfaceImageSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDimensionsAndOpacity: *const fn(self: *anyopaque, pixelWidth: i32, pixelHeight: i32, isOpaque: bool, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SurfaceImageSource) callconv(.winapi) HRESULT,
    };
};
pub const ISvgImageSource = extern struct {
    vtable: *const VTable,
    pub fn getUriSource(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_UriSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_UriSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRasterizePixelWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RasterizePixelWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRasterizePixelWidth(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RasterizePixelWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRasterizePixelHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RasterizePixelHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRasterizePixelHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RasterizePixelHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOpened(self: *@This(), handler: *TypedEventHandler(SvgImageSource,SvgImageSourceOpenedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Opened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Opened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(SvgImageSource,SvgImageSourceFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OpenFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OpenFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSourceAsync(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!*IAsyncOperation(SvgImageSourceLoadStatus) {
        var _r: *IAsyncOperation(SvgImageSourceLoadStatus) = undefined;
        const _c = self.vtable.SetSourceAsync(@ptrCast(self), streamSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISvgImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e1cec3-0ca8-4a4e-8d7c-c808a0838586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UriSource: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_UriSource: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_RasterizePixelWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RasterizePixelWidth: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RasterizePixelHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RasterizePixelHeight: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        add_Opened: *const fn(self: *anyopaque, handler: *TypedEventHandler(SvgImageSource,SvgImageSourceOpenedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Opened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_OpenFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SvgImageSource,SvgImageSourceFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OpenFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetSourceAsync: *const fn(self: *anyopaque, streamSource: *IRandomAccessStream, _r: **IAsyncOperation(SvgImageSourceLoadStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ISvgImageSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SvgImageSource {
        var _r: *SvgImageSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithUriSource(self: *@This(), uriSource: *Uri, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SvgImageSource {
        var _r: *SvgImageSource = undefined;
        const _c = self.vtable.CreateInstanceWithUriSource(@ptrCast(self), uriSource, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c794e9e7-cf23-4d72-bf1a-dfaa16d8ea52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SvgImageSource) callconv(.winapi) HRESULT,
        CreateInstanceWithUriSource: *const fn(self: *anyopaque, uriSource: *Uri, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SvgImageSource) callconv(.winapi) HRESULT,
    };
};
pub const ISvgImageSourceFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!SvgImageSourceLoadStatus {
        var _r: SvgImageSourceLoadStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISvgImageSourceFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68bb3170-3ccc-4035-ac01-9834543d744e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *SvgImageSourceLoadStatus) callconv(.winapi) HRESULT,
    };
};
pub const ISvgImageSourceOpenedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISvgImageSourceOpenedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85ef4c16-748e-4008-95c7-6a23dd7316db";
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
pub const ISvgImageSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn getUriSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_UriSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRasterizePixelWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RasterizePixelWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRasterizePixelHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RasterizePixelHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.ISvgImageSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c6638ce-bed1-4aab-acbb-d3e2185d315a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UriSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RasterizePixelWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RasterizePixelHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IVirtualSurfaceImageSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a711fea-bfac-11e0-a06a-9de44724019b";
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
pub const IVirtualSurfaceImageSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithDimensions(self: *@This(), pixelWidth: i32, pixelHeight: i32) core.HResult!*VirtualSurfaceImageSource {
        var _r: *VirtualSurfaceImageSource = undefined;
        const _c = self.vtable.CreateInstanceWithDimensions(@ptrCast(self), pixelWidth, pixelHeight, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDimensionsAndOpacity(self: *@This(), pixelWidth: i32, pixelHeight: i32, isOpaque: bool) core.HResult!*VirtualSurfaceImageSource {
        var _r: *VirtualSurfaceImageSource = undefined;
        const _c = self.vtable.CreateInstanceWithDimensionsAndOpacity(@ptrCast(self), pixelWidth, pixelHeight, isOpaque, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IVirtualSurfaceImageSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ab2212a-bfac-11e0-8a92-69e44724019b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithDimensions: *const fn(self: *anyopaque, pixelWidth: i32, pixelHeight: i32, _r: **VirtualSurfaceImageSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDimensionsAndOpacity: *const fn(self: *anyopaque, pixelWidth: i32, pixelHeight: i32, isOpaque: bool, _r: **VirtualSurfaceImageSource) callconv(.winapi) HRESULT,
    };
};
pub const IWriteableBitmap = extern struct {
    vtable: *const VTable,
    pub fn getPixelBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PixelBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Invalidate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Invalidate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IWriteableBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf0b7e6f-df7c-4a85-8413-a1216285835c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        Invalidate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWriteableBitmapFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithDimensions(self: *@This(), pixelWidth: i32, pixelHeight: i32) core.HResult!*WriteableBitmap {
        var _r: *WriteableBitmap = undefined;
        const _c = self.vtable.CreateInstanceWithDimensions(@ptrCast(self), pixelWidth, pixelHeight, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IWriteableBitmapFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5563ebb1-3ef2-42c5-9c6d-1cf5dcc041ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithDimensions: *const fn(self: *anyopaque, pixelWidth: i32, pixelHeight: i32, _r: **WriteableBitmap) callconv(.winapi) HRESULT,
    };
};
pub const IXamlRenderingBackgroundTask = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d5fe9aa-533e-44b8-a975-fc5f1e3bff52";
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
pub const IXamlRenderingBackgroundTaskFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlRenderingBackgroundTask {
        var _r: *XamlRenderingBackgroundTask = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3d1bb63-38f8-4da3-9fca-fd8128a2cbf9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **XamlRenderingBackgroundTask) callconv(.winapi) HRESULT,
    };
};
pub const IXamlRenderingBackgroundTaskOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnRun(self: *@This(), taskInstance: *IBackgroundTaskInstance) core.HResult!void {
        const _c = self.vtable.OnRun(@ptrCast(self), taskInstance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.IXamlRenderingBackgroundTaskOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c2a6997-a908-4711-b4b2-a960db3d8e5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnRun: *const fn(self: *anyopaque, taskInstance: *IBackgroundTaskInstance) callconv(.winapi) HRESULT,
    };
};
pub const RenderTargetBitmap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPixelWidth(self: *@This()) core.HResult!i32 {
        const this: *IRenderTargetBitmap = @ptrCast(self);
        return try this.getPixelWidth();
    }
    pub fn getPixelHeight(self: *@This()) core.HResult!i32 {
        const this: *IRenderTargetBitmap = @ptrCast(self);
        return try this.getPixelHeight();
    }
    pub fn RenderAsync(self: *@This(), element: *UIElement) core.HResult!*IAsyncAction {
        const this: *IRenderTargetBitmap = @ptrCast(self);
        return try this.RenderAsync(element);
    }
    pub fn RenderAsync(self: *@This(), element: *UIElement, scaledWidth: i32, scaledHeight: i32) core.HResult!*IAsyncAction {
        const this: *IRenderTargetBitmap = @ptrCast(self);
        return try this.RenderAsync(element, scaledWidth, scaledHeight);
    }
    pub fn GetPixelsAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IRenderTargetBitmap = @ptrCast(self);
        return try this.GetPixelsAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRenderTargetBitmap.IID)));
    }
    pub fn getPixelWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRenderTargetBitmapStaticsCache.get();
        return try factory.getPixelWidthProperty();
    }
    pub fn getPixelHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRenderTargetBitmapStaticsCache.get();
        return try factory.getPixelHeightProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.RenderTargetBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRenderTargetBitmap.GUID;
    pub const IID: Guid = IRenderTargetBitmap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRenderTargetBitmap.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRenderTargetBitmapStaticsCache: FactoryCache(IRenderTargetBitmapStatics, RUNTIME_NAME) = .{};
};
pub const SoftwareBitmapSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetBitmapAsync(self: *@This(), softwareBitmap: *SoftwareBitmap) core.HResult!*IAsyncAction {
        const this: *ISoftwareBitmapSource = @ptrCast(self);
        return try this.SetBitmapAsync(softwareBitmap);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISoftwareBitmapSource.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.SoftwareBitmapSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISoftwareBitmapSource.GUID;
    pub const IID: Guid = ISoftwareBitmapSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISoftwareBitmapSource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SurfaceImageSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithDimensions(pixelWidth: i32, pixelHeight: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SurfaceImageSource {
        const factory = @This().ISurfaceImageSourceFactoryCache.get();
        return try factory.CreateInstanceWithDimensions(pixelWidth, pixelHeight, baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDimensionsAndOpacity(pixelWidth: i32, pixelHeight: i32, isOpaque: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SurfaceImageSource {
        const factory = @This().ISurfaceImageSourceFactoryCache.get();
        return try factory.CreateInstanceWithDimensionsAndOpacity(pixelWidth, pixelHeight, isOpaque, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.SurfaceImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISurfaceImageSource.GUID;
    pub const IID: Guid = ISurfaceImageSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISurfaceImageSource.SIGNATURE);
    var _ISurfaceImageSourceFactoryCache: FactoryCache(ISurfaceImageSourceFactory, RUNTIME_NAME) = .{};
};
pub const SvgImageSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUriSource(self: *@This()) core.HResult!*Uri {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.getUriSource();
    }
    pub fn putUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.putUriSource(value);
    }
    pub fn getRasterizePixelWidth(self: *@This()) core.HResult!f64 {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.getRasterizePixelWidth();
    }
    pub fn putRasterizePixelWidth(self: *@This(), value: f64) core.HResult!void {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.putRasterizePixelWidth(value);
    }
    pub fn getRasterizePixelHeight(self: *@This()) core.HResult!f64 {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.getRasterizePixelHeight();
    }
    pub fn putRasterizePixelHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.putRasterizePixelHeight(value);
    }
    pub fn addOpened(self: *@This(), handler: *TypedEventHandler(SvgImageSource,SvgImageSourceOpenedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.addOpened(handler);
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.removeOpened(token);
    }
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(SvgImageSource,SvgImageSourceFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.addOpenFailed(handler);
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.removeOpenFailed(token);
    }
    pub fn SetSourceAsync(self: *@This(), streamSource: *IRandomAccessStream) core.HResult!*IAsyncOperation(SvgImageSourceLoadStatus) {
        const this: *ISvgImageSource = @ptrCast(self);
        return try this.SetSourceAsync(streamSource);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getUriSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISvgImageSourceStaticsCache.get();
        return try factory.getUriSourceProperty();
    }
    pub fn getRasterizePixelWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISvgImageSourceStaticsCache.get();
        return try factory.getRasterizePixelWidthProperty();
    }
    pub fn getRasterizePixelHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISvgImageSourceStaticsCache.get();
        return try factory.getRasterizePixelHeightProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SvgImageSource {
        const factory = @This().ISvgImageSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithUriSource(uriSource: *Uri, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SvgImageSource {
        const factory = @This().ISvgImageSourceFactoryCache.get();
        return try factory.CreateInstanceWithUriSource(uriSource, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.SvgImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISvgImageSource.GUID;
    pub const IID: Guid = ISvgImageSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISvgImageSource.SIGNATURE);
    var _ISvgImageSourceStaticsCache: FactoryCache(ISvgImageSourceStatics, RUNTIME_NAME) = .{};
    var _ISvgImageSourceFactoryCache: FactoryCache(ISvgImageSourceFactory, RUNTIME_NAME) = .{};
};
pub const SvgImageSourceFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!SvgImageSourceLoadStatus {
        const this: *ISvgImageSourceFailedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.SvgImageSourceFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISvgImageSourceFailedEventArgs.GUID;
    pub const IID: Guid = ISvgImageSourceFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISvgImageSourceFailedEventArgs.SIGNATURE);
};
pub const SvgImageSourceLoadStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    InvalidFormat = 2,
    Other = 3,
};
pub const SvgImageSourceOpenedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.SvgImageSourceOpenedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISvgImageSourceOpenedEventArgs.GUID;
    pub const IID: Guid = ISvgImageSourceOpenedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISvgImageSourceOpenedEventArgs.SIGNATURE);
};
pub const VirtualSurfaceImageSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithDimensions(pixelWidth: i32, pixelHeight: i32) core.HResult!*VirtualSurfaceImageSource {
        const factory = @This().IVirtualSurfaceImageSourceFactoryCache.get();
        return try factory.CreateInstanceWithDimensions(pixelWidth, pixelHeight);
    }
    pub fn CreateInstanceWithDimensionsAndOpacity(pixelWidth: i32, pixelHeight: i32, isOpaque: bool) core.HResult!*VirtualSurfaceImageSource {
        const factory = @This().IVirtualSurfaceImageSourceFactoryCache.get();
        return try factory.CreateInstanceWithDimensionsAndOpacity(pixelWidth, pixelHeight, isOpaque);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.VirtualSurfaceImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVirtualSurfaceImageSource.GUID;
    pub const IID: Guid = IVirtualSurfaceImageSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVirtualSurfaceImageSource.SIGNATURE);
    var _IVirtualSurfaceImageSourceFactoryCache: FactoryCache(IVirtualSurfaceImageSourceFactory, RUNTIME_NAME) = .{};
};
pub const WriteableBitmap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPixelBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IWriteableBitmap = @ptrCast(self);
        return try this.getPixelBuffer();
    }
    pub fn Invalidate(self: *@This()) core.HResult!void {
        const this: *IWriteableBitmap = @ptrCast(self);
        return try this.Invalidate();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithDimensions(pixelWidth: i32, pixelHeight: i32) core.HResult!*WriteableBitmap {
        const factory = @This().IWriteableBitmapFactoryCache.get();
        return try factory.CreateInstanceWithDimensions(pixelWidth, pixelHeight);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.WriteableBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWriteableBitmap.GUID;
    pub const IID: Guid = IWriteableBitmap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWriteableBitmap.SIGNATURE);
    var _IWriteableBitmapFactoryCache: FactoryCache(IWriteableBitmapFactory, RUNTIME_NAME) = .{};
};
pub const XamlRenderingBackgroundTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OnRun(self: *@This(), taskInstance: *IBackgroundTaskInstance) core.HResult!void {
        var this: ?*IXamlRenderingBackgroundTaskOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlRenderingBackgroundTaskOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnRun(taskInstance);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlRenderingBackgroundTask {
        const factory = @This().IXamlRenderingBackgroundTaskFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Imaging.XamlRenderingBackgroundTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlRenderingBackgroundTask.GUID;
    pub const IID: Guid = IXamlRenderingBackgroundTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlRenderingBackgroundTask.SIGNATURE);
    var _IXamlRenderingBackgroundTaskFactoryCache: FactoryCache(IXamlRenderingBackgroundTaskFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const IBuffer = @import("../../../Storage/Streams.zig").IBuffer;
const IRandomAccessStream = @import("../../../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const IBackgroundTaskInstance = @import("../../../ApplicationModel/Background.zig").IBackgroundTaskInstance;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const ExceptionRoutedEventHandler = @import("../../Xaml.zig").ExceptionRoutedEventHandler;
const SoftwareBitmap = @import("../../../Graphics/Imaging.zig").SoftwareBitmap;
const IClosable = @import("../../../Foundation.zig").IClosable;
const HSTRING = @import("../../../root.zig").HSTRING;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const IAgileObject = @import("../../../root.zig").IAgileObject;
const Uri = @import("../../../Foundation.zig").Uri;
const UIElement = @import("../../Xaml.zig").UIElement;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const RoutedEventHandler = @import("../../Xaml.zig").RoutedEventHandler;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
