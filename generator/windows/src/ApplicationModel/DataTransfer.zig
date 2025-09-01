pub const Clipboard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetHistoryItemsAsync() core.HResult!*IAsyncOperation(ClipboardHistoryItemsResult) {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.GetHistoryItemsAsync();
    }
    pub fn ClearHistory() core.HResult!bool {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.ClearHistory();
    }
    pub fn DeleteItemFromHistory(item: *ClipboardHistoryItem) core.HResult!bool {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.DeleteItemFromHistory(item);
    }
    pub fn SetHistoryItemAsContent(item: *ClipboardHistoryItem) core.HResult!SetHistoryItemAsContentStatus {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.SetHistoryItemAsContent(item);
    }
    pub fn IsHistoryEnabled() core.HResult!bool {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.IsHistoryEnabled();
    }
    pub fn IsRoamingEnabled() core.HResult!bool {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.IsRoamingEnabled();
    }
    pub fn SetContentWithOptions(content: *DataPackage, options: *ClipboardContentOptions) core.HResult!bool {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.SetContentWithOptions(content, options);
    }
    pub fn addHistoryChanged(handler: *EventHandler(ClipboardHistoryChangedEventArgs)) core.HResult!EventRegistrationToken {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.addHistoryChanged(handler);
    }
    pub fn removeHistoryChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.removeHistoryChanged(token);
    }
    pub fn addRoamingEnabledChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.addRoamingEnabledChanged(handler);
    }
    pub fn removeRoamingEnabledChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.removeRoamingEnabledChanged(token);
    }
    pub fn addHistoryEnabledChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.addHistoryEnabledChanged(handler);
    }
    pub fn removeHistoryEnabledChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IClipboardStatics2Cache.get();
        return try _f.removeHistoryEnabledChanged(token);
    }
    pub fn GetContent() core.HResult!*DataPackageView {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.GetContent();
    }
    pub fn SetContent(content: *DataPackage) core.HResult!void {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.SetContent(content);
    }
    pub fn Flush() core.HResult!void {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.Flush();
    }
    pub fn Clear() core.HResult!void {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.Clear();
    }
    pub fn addContentChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.addContentChanged(handler);
    }
    pub fn removeContentChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IClipboardStaticsCache.get();
        return try _f.removeContentChanged(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.Clipboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IClipboardStatics2Cache: FactoryCache(IClipboardStatics2, RUNTIME_NAME) = .{};
    var _IClipboardStaticsCache: FactoryCache(IClipboardStatics, RUNTIME_NAME) = .{};
};
pub const ClipboardContentOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.getIsRoamable();
    }
    pub fn putIsRoamable(self: *@This(), value: bool) core.HResult!void {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.putIsRoamable(value);
    }
    pub fn getIsAllowedInHistory(self: *@This()) core.HResult!bool {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.getIsAllowedInHistory();
    }
    pub fn putIsAllowedInHistory(self: *@This(), value: bool) core.HResult!void {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.putIsAllowedInHistory(value);
    }
    pub fn getRoamingFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.getRoamingFormats();
    }
    pub fn getHistoryFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IClipboardContentOptions = @ptrCast(self);
        return try this.getHistoryFormats();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IClipboardContentOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ClipboardContentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClipboardContentOptions.GUID;
    pub const IID: Guid = IClipboardContentOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClipboardContentOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ClipboardHistoryChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ClipboardHistoryChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClipboardHistoryChangedEventArgs.GUID;
    pub const IID: Guid = IClipboardHistoryChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClipboardHistoryChangedEventArgs.SIGNATURE);
};
pub const ClipboardHistoryItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IClipboardHistoryItem = @ptrCast(self);
        return try this.getId();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IClipboardHistoryItem = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getContent(self: *@This()) core.HResult!*DataPackageView {
        const this: *IClipboardHistoryItem = @ptrCast(self);
        return try this.getContent();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ClipboardHistoryItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClipboardHistoryItem.GUID;
    pub const IID: Guid = IClipboardHistoryItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClipboardHistoryItem.SIGNATURE);
};
pub const ClipboardHistoryItemsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ClipboardHistoryItemsResultStatus {
        const this: *IClipboardHistoryItemsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(ClipboardHistoryItem) {
        const this: *IClipboardHistoryItemsResult = @ptrCast(self);
        return try this.getItems();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ClipboardHistoryItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClipboardHistoryItemsResult.GUID;
    pub const IID: Guid = IClipboardHistoryItemsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClipboardHistoryItemsResult.SIGNATURE);
};
pub const ClipboardHistoryItemsResultStatus = enum(i32) {
    Success = 0,
    AccessDenied = 1,
    ClipboardHistoryDisabled = 2,
};
pub const DataPackage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetView(self: *@This()) core.HResult!*DataPackageView {
        const this: *IDataPackage = @ptrCast(self);
        return try this.GetView();
    }
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySet {
        const this: *IDataPackage = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getRequestedOperation(self: *@This()) core.HResult!DataPackageOperation {
        const this: *IDataPackage = @ptrCast(self);
        return try this.getRequestedOperation();
    }
    pub fn putRequestedOperation(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.putRequestedOperation(value);
    }
    pub fn addOperationCompleted(self: *@This(), handler: *TypedEventHandler(DataPackage,OperationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDataPackage = @ptrCast(self);
        return try this.addOperationCompleted(handler);
    }
    pub fn removeOperationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.removeOperationCompleted(token);
    }
    pub fn addDestroyed(self: *@This(), handler: *TypedEventHandler(DataPackage,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDataPackage = @ptrCast(self);
        return try this.addDestroyed(handler);
    }
    pub fn removeDestroyed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.removeDestroyed(token);
    }
    pub fn SetData(self: *@This(), formatId: HSTRING, value: *IInspectable) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetData(formatId, value);
    }
    pub fn SetDataProvider(self: *@This(), formatId: HSTRING, delayRenderer: *DataProviderHandler) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetDataProvider(formatId, delayRenderer);
    }
    pub fn SetText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetText(value);
    }
    pub fn SetUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetUri(value);
    }
    pub fn SetHtmlFormat(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetHtmlFormat(value);
    }
    pub fn getResourceMap(self: *@This()) core.HResult!*IMap(HSTRING,RandomAccessStreamReference) {
        const this: *IDataPackage = @ptrCast(self);
        return try this.getResourceMap();
    }
    pub fn SetRtf(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetRtf(value);
    }
    pub fn SetBitmap(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetBitmap(value);
    }
    pub fn SetStorageItems(self: *@This(), value: *IIterable(IStorageItem)) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetStorageItems(value);
    }
    pub fn SetStorageItemsWithReadOnly(self: *@This(), value: *IIterable(IStorageItem), readOnly: bool) core.HResult!void {
        const this: *IDataPackage = @ptrCast(self);
        return try this.SetStorageItemsWithReadOnly(value, readOnly);
    }
    pub fn SetApplicationLink(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDataPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetApplicationLink(value);
    }
    pub fn SetWebLink(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDataPackage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetWebLink(value);
    }
    pub fn addShareCompleted(self: *@This(), handler: *TypedEventHandler(DataPackage,ShareCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IDataPackage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addShareCompleted(handler);
    }
    pub fn removeShareCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDataPackage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeShareCompleted(token);
    }
    pub fn addShareCanceled(self: *@This(), handler: *TypedEventHandler(DataPackage,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IDataPackage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addShareCanceled(handler);
    }
    pub fn removeShareCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDataPackage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeShareCanceled(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDataPackage.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPackage.GUID;
    pub const IID: Guid = IDataPackage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPackage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DataPackageOperation = enum(i32) {
    None = 0,
    Copy = 1,
    Move = 2,
    Link = 4,
};
pub const DataPackagePropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getFileTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getFileTypes();
    }
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getApplicationName();
    }
    pub fn putApplicationName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.putApplicationName(value);
    }
    pub fn getApplicationListingUri(self: *@This()) core.HResult!*Uri {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.getApplicationListingUri();
    }
    pub fn putApplicationListingUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IDataPackagePropertySet = @ptrCast(self);
        return try this.putApplicationListingUri(value);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceWebLink();
    }
    pub fn putContentSourceWebLink(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentSourceWebLink(value);
    }
    pub fn getContentSourceApplicationLink(self: *@This()) core.HResult!*Uri {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceApplicationLink();
    }
    pub fn putContentSourceApplicationLink(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentSourceApplicationLink(value);
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackageFamilyName();
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPackageFamilyName(value);
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSquare30x30Logo();
    }
    pub fn putSquare30x30Logo(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSquare30x30Logo(value);
    }
    pub fn getLogoBackgroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLogoBackgroundColor();
    }
    pub fn putLogoBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        var this: ?*IDataPackagePropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLogoBackgroundColor(value);
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySet3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnterpriseId();
    }
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDataPackagePropertySet3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEnterpriseId(value);
    }
    pub fn getContentSourceUserActivityJson(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySet4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceUserActivityJson();
    }
    pub fn putContentSourceUserActivityJson(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDataPackagePropertySet4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySet4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentSourceUserActivityJson(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataPackagePropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPackagePropertySet.GUID;
    pub const IID: Guid = IDataPackagePropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPackagePropertySet.SIGNATURE);
};
pub const DataPackagePropertySetView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn getFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getFileTypes();
    }
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getApplicationName();
    }
    pub fn getApplicationListingUri(self: *@This()) core.HResult!*Uri {
        const this: *IDataPackagePropertySetView = @ptrCast(self);
        return try this.getApplicationListingUri();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySetView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPackageFamilyName();
    }
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        var this: ?*IDataPackagePropertySetView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceWebLink();
    }
    pub fn getContentSourceApplicationLink(self: *@This()) core.HResult!*Uri {
        var this: ?*IDataPackagePropertySetView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceApplicationLink();
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IDataPackagePropertySetView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSquare30x30Logo();
    }
    pub fn getLogoBackgroundColor(self: *@This()) core.HResult!Color {
        var this: ?*IDataPackagePropertySetView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLogoBackgroundColor();
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySetView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnterpriseId();
    }
    pub fn getContentSourceUserActivityJson(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDataPackagePropertySetView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentSourceUserActivityJson();
    }
    pub fn getIsFromRoamingClipboard(self: *@This()) core.HResult!bool {
        var this: ?*IDataPackagePropertySetView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackagePropertySetView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromRoamingClipboard();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,IInspectable), second: *IMapView(HSTRING,IInspectable)) core.HResult!void {
        var this: ?*IMapView(HSTRING,IInspectable) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPackagePropertySetView.GUID;
    pub const IID: Guid = IDataPackagePropertySetView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPackagePropertySetView.SIGNATURE);
};
pub const DataPackageView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySetView {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getRequestedOperation(self: *@This()) core.HResult!DataPackageOperation {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.getRequestedOperation();
    }
    pub fn ReportOperationCompleted(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.ReportOperationCompleted(value);
    }
    pub fn getAvailableFormats(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.getAvailableFormats();
    }
    pub fn Contains(self: *@This(), formatId: HSTRING) core.HResult!bool {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.Contains(formatId);
    }
    pub fn GetDataAsync(self: *@This(), formatId: HSTRING) core.HResult!*IAsyncOperation(IInspectable) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetDataAsync(formatId);
    }
    pub fn GetTextAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetTextAsync();
    }
    pub fn GetTextAsyncWithFormatId(self: *@This(), formatId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetTextAsyncWithFormatId(formatId);
    }
    pub fn GetUriAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetUriAsync();
    }
    pub fn GetHtmlFormatAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetHtmlFormatAsync();
    }
    pub fn GetResourceMapAsync(self: *@This()) core.HResult!*IAsyncOperation(IMapView(HSTRING,RandomAccessStreamReference)) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetResourceMapAsync();
    }
    pub fn GetRtfAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetRtfAsync();
    }
    pub fn GetBitmapAsync(self: *@This()) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetBitmapAsync();
    }
    pub fn GetStorageItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        const this: *IDataPackageView = @ptrCast(self);
        return try this.GetStorageItemsAsync();
    }
    pub fn GetApplicationLinkAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var this: ?*IDataPackageView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetApplicationLinkAsync();
    }
    pub fn GetWebLinkAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var this: ?*IDataPackageView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetWebLinkAsync();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var this: ?*IDataPackageView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsync();
    }
    pub fn RequestAccessAsyncWithEnterpriseId(self: *@This(), enterpriseId: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var this: ?*IDataPackageView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestAccessAsyncWithEnterpriseId(enterpriseId);
    }
    pub fn UnlockAndAssumeEnterpriseIdentity(self: *@This()) core.HResult!ProtectionPolicyEvaluationResult {
        var this: ?*IDataPackageView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UnlockAndAssumeEnterpriseIdentity();
    }
    pub fn SetAcceptedFormatId(self: *@This(), formatId: HSTRING) core.HResult!void {
        var this: ?*IDataPackageView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataPackageView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAcceptedFormatId(formatId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataPackageView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPackageView.GUID;
    pub const IID: Guid = IDataPackageView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPackageView.SIGNATURE);
};
pub const DataProviderDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IDataProviderDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataProviderDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataProviderDeferral.GUID;
    pub const IID: Guid = IDataProviderDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataProviderDeferral.SIGNATURE);
};
pub const DataProviderHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, request: *DataProviderRequest) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, request: *DataProviderRequest) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, request: *DataProviderRequest) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, request);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataProviderHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7ecd720-f2f4-4a2d-920e-170a2f482a27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, request: *DataProviderRequest) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DataProviderRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormatId(self: *@This()) core.HResult!HSTRING {
        const this: *IDataProviderRequest = @ptrCast(self);
        return try this.getFormatId();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IDataProviderRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DataProviderDeferral {
        const this: *IDataProviderRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetData(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IDataProviderRequest = @ptrCast(self);
        return try this.SetData(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataProviderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataProviderRequest.GUID;
    pub const IID: Guid = IDataProviderRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataProviderRequest.SIGNATURE);
};
pub const DataRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        const this: *IDataRequest = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *DataPackage) core.HResult!void {
        const this: *IDataRequest = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IDataRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn FailWithDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDataRequest = @ptrCast(self);
        return try this.FailWithDisplayText(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DataRequestDeferral {
        const this: *IDataRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataRequest.GUID;
    pub const IID: Guid = IDataRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataRequest.SIGNATURE);
};
pub const DataRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IDataRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataRequestDeferral.GUID;
    pub const IID: Guid = IDataRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataRequestDeferral.SIGNATURE);
};
pub const DataRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*DataRequest {
        const this: *IDataRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataRequestedEventArgs.GUID;
    pub const IID: Guid = IDataRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataRequestedEventArgs.SIGNATURE);
};
pub const DataTransferManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addDataRequested(self: *@This(), handler: *TypedEventHandler(DataTransferManager,DataRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDataTransferManager = @ptrCast(self);
        return try this.addDataRequested(handler);
    }
    pub fn removeDataRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDataTransferManager = @ptrCast(self);
        return try this.removeDataRequested(token);
    }
    pub fn addTargetApplicationChosen(self: *@This(), handler: *TypedEventHandler(DataTransferManager,TargetApplicationChosenEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDataTransferManager = @ptrCast(self);
        return try this.addTargetApplicationChosen(handler);
    }
    pub fn removeTargetApplicationChosen(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDataTransferManager = @ptrCast(self);
        return try this.removeTargetApplicationChosen(token);
    }
    pub fn addShareProvidersRequested(self: *@This(), handler: *TypedEventHandler(DataTransferManager,ShareProvidersRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IDataTransferManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataTransferManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addShareProvidersRequested(handler);
    }
    pub fn removeShareProvidersRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDataTransferManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataTransferManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeShareProvidersRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowShareUIWithOptions(options: *ShareUIOptions) core.HResult!void {
        const _f = @This().IDataTransferManagerStatics3Cache.get();
        return try _f.ShowShareUI(options);
    }
    pub fn IsSupported() core.HResult!bool {
        const _f = @This().IDataTransferManagerStatics2Cache.get();
        return try _f.IsSupported();
    }
    pub fn ShowShareUI() core.HResult!void {
        const _f = @This().IDataTransferManagerStaticsCache.get();
        return try _f.ShowShareUI();
    }
    pub fn GetForCurrentView() core.HResult!*DataTransferManager {
        const _f = @This().IDataTransferManagerStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.DataTransferManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataTransferManager.GUID;
    pub const IID: Guid = IDataTransferManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataTransferManager.SIGNATURE);
    var _IDataTransferManagerStatics3Cache: FactoryCache(IDataTransferManagerStatics3, RUNTIME_NAME) = .{};
    var _IDataTransferManagerStatics2Cache: FactoryCache(IDataTransferManagerStatics2, RUNTIME_NAME) = .{};
    var _IDataTransferManagerStaticsCache: FactoryCache(IDataTransferManagerStatics, RUNTIME_NAME) = .{};
};
pub const HtmlFormatHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStaticFragment(htmlFormat: HSTRING) core.HResult!HSTRING {
        const _f = @This().IHtmlFormatHelperStaticsCache.get();
        return try _f.GetStaticFragment(htmlFormat);
    }
    pub fn CreateHtmlFormat(htmlFragment: HSTRING) core.HResult!HSTRING {
        const _f = @This().IHtmlFormatHelperStaticsCache.get();
        return try _f.CreateHtmlFormat(htmlFragment);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.HtmlFormatHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IHtmlFormatHelperStaticsCache: FactoryCache(IHtmlFormatHelperStatics, RUNTIME_NAME) = .{};
};
pub const IClipboardContentOptions = extern struct {
    vtable: *const VTable,
    pub fn getIsRoamable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRoamable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRoamable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRoamable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAllowedInHistory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAllowedInHistory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAllowedInHistory(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAllowedInHistory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoamingFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_RoamingFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHistoryFormats(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_HistoryFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardContentOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e888a98c-ad4b-5447-a056-ab3556276d2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRoamable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRoamable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAllowedInHistory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAllowedInHistory: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RoamingFormats: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_HistoryFormats: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IClipboardHistoryChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardHistoryChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0be453f-8ea2-53ce-9aba-8d2212573452";
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
pub const IClipboardHistoryItem = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContent(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardHistoryItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0173bd8a-afff-5c50-ab92-3d19f481ec58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
    };
};
pub const IClipboardHistoryItemsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ClipboardHistoryItemsResultStatus {
        var _r: ClipboardHistoryItemsResultStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItems(self: *@This()) core.HResult!*IVectorView(ClipboardHistoryItem) {
        var _r: *IVectorView(ClipboardHistoryItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardHistoryItemsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6dfdee6-0ee2-52e3-852b-f295db65939a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ClipboardHistoryItemsResultStatus) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVectorView(ClipboardHistoryItem)) callconv(.winapi) HRESULT,
    };
};
pub const IClipboardStatics = extern struct {
    vtable: *const VTable,
    pub fn GetContent(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.GetContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContent(self: *@This(), content: *DataPackage) core.HResult!void {
        const _c = self.vtable.SetContent(@ptrCast(self), content);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Flush(self: *@This()) core.HResult!void {
        const _c = self.vtable.Flush(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addContentChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContentChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c627e291-34e2-4963-8eed-93cbb0ea3d70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetContent: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        SetContent: *const fn(self: *anyopaque, content: *DataPackage) callconv(.winapi) HRESULT,
        Flush: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_ContentChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContentChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClipboardStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetHistoryItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(ClipboardHistoryItemsResult) {
        var _r: *IAsyncOperation(ClipboardHistoryItemsResult) = undefined;
        const _c = self.vtable.GetHistoryItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearHistory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ClearHistory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteItemFromHistory(self: *@This(), item: *ClipboardHistoryItem) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.DeleteItemFromHistory(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHistoryItemAsContent(self: *@This(), item: *ClipboardHistoryItem) core.HResult!SetHistoryItemAsContentStatus {
        var _r: SetHistoryItemAsContentStatus = undefined;
        const _c = self.vtable.SetHistoryItemAsContent(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsHistoryEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsHistoryEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsRoamingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsRoamingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContentWithOptions(self: *@This(), content: *DataPackage, options: *ClipboardContentOptions) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetContentWithOptions(@ptrCast(self), content, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addHistoryChanged(self: *@This(), handler: *EventHandler(ClipboardHistoryChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HistoryChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHistoryChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HistoryChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRoamingEnabledChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RoamingEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRoamingEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RoamingEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHistoryEnabledChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HistoryEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHistoryEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HistoryEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IClipboardStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2ac1b6a-d29f-554b-b303-f0452345fe02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHistoryItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClipboardHistoryItemsResult)) callconv(.winapi) HRESULT,
        ClearHistory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        DeleteItemFromHistory: *const fn(self: *anyopaque, item: *ClipboardHistoryItem, _r: *bool) callconv(.winapi) HRESULT,
        SetHistoryItemAsContent: *const fn(self: *anyopaque, item: *ClipboardHistoryItem, _r: *SetHistoryItemAsContentStatus) callconv(.winapi) HRESULT,
        IsHistoryEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsRoamingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetContentWithOptions: *const fn(self: *anyopaque, content: *DataPackage, options: *ClipboardContentOptions, _r: *bool) callconv(.winapi) HRESULT,
        add_HistoryChanged: *const fn(self: *anyopaque, handler: *EventHandler(ClipboardHistoryChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HistoryChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RoamingEnabledChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RoamingEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HistoryEnabledChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HistoryEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackage = extern struct {
    vtable: *const VTable,
    pub fn GetView(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.GetView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySet {
        var _r: *DataPackagePropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedOperation(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_RequestedOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequestedOperation(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const _c = self.vtable.put_RequestedOperation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOperationCompleted(self: *@This(), handler: *TypedEventHandler(DataPackage,OperationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OperationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOperationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OperationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDestroyed(self: *@This(), handler: *TypedEventHandler(DataPackage,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Destroyed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDestroyed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Destroyed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetData(self: *@This(), formatId: HSTRING, value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetData(@ptrCast(self), formatId, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDataProvider(self: *@This(), formatId: HSTRING, delayRenderer: *DataProviderHandler) core.HResult!void {
        const _c = self.vtable.SetDataProvider(@ptrCast(self), formatId, delayRenderer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.SetUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetHtmlFormat(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetHtmlFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResourceMap(self: *@This()) core.HResult!*IMap(HSTRING,RandomAccessStreamReference) {
        var _r: *IMap(HSTRING,RandomAccessStreamReference) = undefined;
        const _c = self.vtable.get_ResourceMap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRtf(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRtf(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetBitmap(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.SetBitmap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStorageItems(self: *@This(), value: *IIterable(IStorageItem)) core.HResult!void {
        const _c = self.vtable.SetStorageItems(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStorageItemsWithReadOnly(self: *@This(), value: *IIterable(IStorageItem), readOnly: bool) core.HResult!void {
        const _c = self.vtable.SetStorageItemsWithReadOnly(@ptrCast(self), value, readOnly);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61ebf5c7-efea-4346-9554-981d7e198ffe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetView: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **DataPackagePropertySet) callconv(.winapi) HRESULT,
        get_RequestedOperation: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
        put_RequestedOperation: *const fn(self: *anyopaque, value: DataPackageOperation) callconv(.winapi) HRESULT,
        add_OperationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataPackage,OperationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OperationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Destroyed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataPackage,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Destroyed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetData: *const fn(self: *anyopaque, formatId: HSTRING, value: *IInspectable) callconv(.winapi) HRESULT,
        SetDataProvider: *const fn(self: *anyopaque, formatId: HSTRING, delayRenderer: *DataProviderHandler) callconv(.winapi) HRESULT,
        SetText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        SetHtmlFormat: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ResourceMap: *const fn(self: *anyopaque, _r: **IMap(HSTRING,RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        SetRtf: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetBitmap: *const fn(self: *anyopaque, value: *RandomAccessStreamReference) callconv(.winapi) HRESULT,
        SetStorageItems: *const fn(self: *anyopaque, value: *IIterable(IStorageItem)) callconv(.winapi) HRESULT,
        SetStorageItemsWithReadOnly: *const fn(self: *anyopaque, value: *IIterable(IStorageItem), readOnly: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackage2 = extern struct {
    vtable: *const VTable,
    pub fn SetApplicationLink(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.SetApplicationLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetWebLink(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.SetWebLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "041c1fe9-2409-45e1-a538-4c53eeee04a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetApplicationLink: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        SetWebLink: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackage3 = extern struct {
    vtable: *const VTable,
    pub fn addShareCompleted(self: *@This(), handler: *TypedEventHandler(DataPackage,ShareCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShareCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShareCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShareCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88f31f5d-787b-4d32-965a-a9838105a056";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ShareCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataPackage,ShareCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShareCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackage4 = extern struct {
    vtable: *const VTable,
    pub fn addShareCanceled(self: *@This(), handler: *TypedEventHandler(DataPackage,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShareCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShareCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShareCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackage4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13a24ec8-9382-536f-852a-3045e1b29a3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ShareCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataPackage,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShareCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySet = extern struct {
    vtable: *const VTable,
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
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFileTypes(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FileTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putApplicationName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ApplicationName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getApplicationListingUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationListingUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putApplicationListingUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ApplicationListingUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd1c93eb-4c4c-443a-a8d3-f5c241e91689";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_FileTypes: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ApplicationName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ApplicationName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ApplicationListingUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ApplicationListingUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySet2 = extern struct {
    vtable: *const VTable,
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentSourceWebLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentSourceWebLink(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContentSourceWebLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentSourceApplicationLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentSourceApplicationLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentSourceApplicationLink(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContentSourceApplicationLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPackageFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PackageFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Square30x30Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSquare30x30Logo(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Square30x30Logo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogoBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LogoBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogoBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_LogoBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb505d4a-9800-46aa-b181-7b6f0f2b919a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentSourceWebLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContentSourceWebLink: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ContentSourceApplicationLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContentSourceApplicationLink: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PackageFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Square30x30Logo: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Square30x30Logo: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_LogoBackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_LogoBackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySet3 = extern struct {
    vtable: *const VTable,
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnterpriseId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EnterpriseId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e87fd9b-5205-401b-874a-455653bd39e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EnterpriseId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySet4 = extern struct {
    vtable: *const VTable,
    pub fn getContentSourceUserActivityJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentSourceUserActivityJson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentSourceUserActivityJson(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentSourceUserActivityJson(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySet4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6390ebf5-1739-4c74-b22f-865fab5e8545";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentSourceUserActivityJson: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentSourceUserActivityJson: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySetView = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFileTypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_FileTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationListingUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ApplicationListingUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b94cec01-0c1a-4c57-be55-75d01289735d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_FileTypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_ApplicationName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ApplicationListingUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySetView2 = extern struct {
    vtable: *const VTable,
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentSourceWebLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentSourceApplicationLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentSourceApplicationLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSquare30x30Logo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Square30x30Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogoBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_LogoBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6054509b-8ebe-4feb-9c1e-75e69de54b84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContentSourceWebLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ContentSourceApplicationLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Square30x30Logo: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_LogoBackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySetView3 = extern struct {
    vtable: *const VTable,
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db764ce5-d174-495c-84fc-1a51f6ab45d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnterpriseId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySetView4 = extern struct {
    vtable: *const VTable,
    pub fn getContentSourceUserActivityJson(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentSourceUserActivityJson(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4474c80d-d16f-40ae-9580-6f8562b94235";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentSourceUserActivityJson: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackagePropertySetView5 = extern struct {
    vtable: *const VTable,
    pub fn getIsFromRoamingClipboard(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromRoamingClipboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackagePropertySetView5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f0a9445-3760-50bb-8523-c4202ded7d78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFromRoamingClipboard: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackageView = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*DataPackagePropertySetView {
        var _r: *DataPackagePropertySetView = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedOperation(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_RequestedOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportOperationCompleted(self: *@This(), value: DataPackageOperation) core.HResult!void {
        const _c = self.vtable.ReportOperationCompleted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAvailableFormats(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AvailableFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Contains(self: *@This(), formatId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Contains(@ptrCast(self), formatId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataAsync(self: *@This(), formatId: HSTRING) core.HResult!*IAsyncOperation(IInspectable) {
        var _r: *IAsyncOperation(IInspectable) = undefined;
        const _c = self.vtable.GetDataAsync(@ptrCast(self), formatId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetTextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextAsyncWithFormatId(self: *@This(), formatId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetTextAsyncWithFormatId(@ptrCast(self), formatId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUriAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var _r: *IAsyncOperation(Uri) = undefined;
        const _c = self.vtable.GetUriAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHtmlFormatAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetHtmlFormatAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetResourceMapAsync(self: *@This()) core.HResult!*IAsyncOperation(IMapView(HSTRING,RandomAccessStreamReference)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,RandomAccessStreamReference)) = undefined;
        const _c = self.vtable.GetResourceMapAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRtfAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetRtfAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBitmapAsync(self: *@This()) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        var _r: *IAsyncOperation(RandomAccessStreamReference) = undefined;
        const _c = self.vtable.GetBitmapAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStorageItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IStorageItem)) {
        var _r: *IAsyncOperation(IVectorView(IStorageItem)) = undefined;
        const _c = self.vtable.GetStorageItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackageView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b840471-5900-4d85-a90b-10cb85fe3552";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **DataPackagePropertySetView) callconv(.winapi) HRESULT,
        get_RequestedOperation: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
        ReportOperationCompleted: *const fn(self: *anyopaque, value: DataPackageOperation) callconv(.winapi) HRESULT,
        get_AvailableFormats: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        Contains: *const fn(self: *anyopaque, formatId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        GetDataAsync: *const fn(self: *anyopaque, formatId: HSTRING, _r: **IAsyncOperation(IInspectable)) callconv(.winapi) HRESULT,
        GetTextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetTextAsyncWithFormatId: *const fn(self: *anyopaque, formatId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetUriAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Uri)) callconv(.winapi) HRESULT,
        GetHtmlFormatAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetResourceMapAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IMapView(HSTRING,RandomAccessStreamReference))) callconv(.winapi) HRESULT,
        GetRtfAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetBitmapAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        GetStorageItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IStorageItem))) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackageView2 = extern struct {
    vtable: *const VTable,
    pub fn GetApplicationLinkAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var _r: *IAsyncOperation(Uri) = undefined;
        const _c = self.vtable.GetApplicationLinkAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWebLinkAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var _r: *IAsyncOperation(Uri) = undefined;
        const _c = self.vtable.GetWebLinkAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackageView2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40ecba95-2450-4c1d-b6b4-ed45463dee9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetApplicationLinkAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Uri)) callconv(.winapi) HRESULT,
        GetWebLinkAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Uri)) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackageView3 = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsyncWithEnterpriseId(self: *@This(), enterpriseId: HSTRING) core.HResult!*IAsyncOperation(ProtectionPolicyEvaluationResult) {
        var _r: *IAsyncOperation(ProtectionPolicyEvaluationResult) = undefined;
        const _c = self.vtable.RequestAccessAsyncWithEnterpriseId(@ptrCast(self), enterpriseId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnlockAndAssumeEnterpriseIdentity(self: *@This()) core.HResult!ProtectionPolicyEvaluationResult {
        var _r: ProtectionPolicyEvaluationResult = undefined;
        const _c = self.vtable.UnlockAndAssumeEnterpriseIdentity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackageView3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d37771a8-ddad-4288-8428-d1cae394128b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        RequestAccessAsyncWithEnterpriseId: *const fn(self: *anyopaque, enterpriseId: HSTRING, _r: **IAsyncOperation(ProtectionPolicyEvaluationResult)) callconv(.winapi) HRESULT,
        UnlockAndAssumeEnterpriseIdentity: *const fn(self: *anyopaque, _r: *ProtectionPolicyEvaluationResult) callconv(.winapi) HRESULT,
    };
};
pub const IDataPackageView4 = extern struct {
    vtable: *const VTable,
    pub fn SetAcceptedFormatId(self: *@This(), formatId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAcceptedFormatId(@ptrCast(self), formatId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataPackageView4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfe96f1f-e042-4433-a09f-26d6ffda8b85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAcceptedFormatId: *const fn(self: *anyopaque, formatId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataProviderDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataProviderDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2cf2373-2d26-43d9-b69d-dcb86d03f6da";
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
pub const IDataProviderRequest = extern struct {
    vtable: *const VTable,
    pub fn getFormatId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormatId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DataProviderDeferral {
        var _r: *DataProviderDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetData(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataProviderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebbc7157-d3c8-47da-acde-f82388d5f716";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FormatId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **DataProviderDeferral) callconv(.winapi) HRESULT,
        SetData: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IDataRequest = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackage {
        var _r: *DataPackage = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *DataPackage) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FailWithDisplayText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.FailWithDisplayText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*DataRequestDeferral {
        var _r: *DataRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4341ae3b-fc12-4e53-8c02-ac714c415a27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackage) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *DataPackage) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        FailWithDisplayText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **DataRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IDataRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6dc4b89f-0386-4263-87c1-ed7dce30890e";
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
pub const IDataRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*DataRequest {
        var _r: *DataRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb8ba807-6ac5-43c9-8ac5-9ba232163182";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **DataRequest) callconv(.winapi) HRESULT,
    };
};
pub const IDataTransferManager = extern struct {
    vtable: *const VTable,
    pub fn addDataRequested(self: *@This(), handler: *TypedEventHandler(DataTransferManager,DataRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTargetApplicationChosen(self: *@This(), handler: *TypedEventHandler(DataTransferManager,TargetApplicationChosenEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TargetApplicationChosen(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTargetApplicationChosen(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TargetApplicationChosen(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataTransferManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5caee9b-8708-49d1-8d36-67d25a8da00c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_DataRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataTransferManager,DataRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TargetApplicationChosen: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataTransferManager,TargetApplicationChosenEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TargetApplicationChosen: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDataTransferManager2 = extern struct {
    vtable: *const VTable,
    pub fn addShareProvidersRequested(self: *@This(), handler: *TypedEventHandler(DataTransferManager,ShareProvidersRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShareProvidersRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShareProvidersRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShareProvidersRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataTransferManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30ae7d71-8ba8-4c02-8e3f-ddb23b388715";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ShareProvidersRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(DataTransferManager,ShareProvidersRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShareProvidersRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDataTransferManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowShareUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowShareUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetForCurrentView(self: *@This()) core.HResult!*DataTransferManager {
        var _r: *DataTransferManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataTransferManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9da01aa-e00e-4cfe-aa44-2dd932dca3d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowShareUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **DataTransferManager) callconv(.winapi) HRESULT,
    };
};
pub const IDataTransferManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataTransferManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c54ec2ec-9f97-4d63-9868-395e271ad8f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDataTransferManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn ShowShareUI(self: *@This(), options: *ShareUIOptions) core.HResult!void {
        const _c = self.vtable.ShowShareUI(@ptrCast(self), options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IDataTransferManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05845473-6c82-4f5c-ac23-62e458361fac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowShareUI: *const fn(self: *anyopaque, options: *ShareUIOptions) callconv(.winapi) HRESULT,
    };
};
pub const IHtmlFormatHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn GetStaticFragment(self: *@This(), htmlFormat: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStaticFragment(@ptrCast(self), htmlFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateHtmlFormat(self: *@This(), htmlFragment: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.CreateHtmlFormat(@ptrCast(self), htmlFragment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IHtmlFormatHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e22e7749-dd70-446f-aefc-61cee59f655e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStaticFragment: *const fn(self: *anyopaque, htmlFormat: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
        CreateHtmlFormat: *const fn(self: *anyopaque, htmlFragment: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IOperationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOperation(self: *@This()) core.HResult!DataPackageOperation {
        var _r: DataPackageOperation = undefined;
        const _c = self.vtable.get_Operation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IOperationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7af329d-051d-4fab-b1a9-47fd77f70a41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Operation: *const fn(self: *anyopaque, _r: *DataPackageOperation) callconv(.winapi) HRESULT,
    };
};
pub const IOperationCompletedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getAcceptedFormatId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AcceptedFormatId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IOperationCompletedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "858fa073-1e19-4105-b2f7-c8478808d562";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AcceptedFormatId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IShareCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getShareTarget(self: *@This()) core.HResult!*ShareTargetInfo {
        var _r: *ShareTargetInfo = undefined;
        const _c = self.vtable.get_ShareTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4574c442-f913-4f60-9df7-cc4060ab1916";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShareTarget: *const fn(self: *anyopaque, _r: **ShareTargetInfo) callconv(.winapi) HRESULT,
    };
};
pub const IShareProvider = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayIcon(self: *@This()) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.get_DisplayIcon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2fabe026-443e-4cda-af25-8d81070efd80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayIcon: *const fn(self: *anyopaque, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IShareProviderFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), title: HSTRING, displayIcon: *RandomAccessStreamReference, backgroundColor: Color, handler: *ShareProviderHandler) core.HResult!*ShareProvider {
        var _r: *ShareProvider = undefined;
        const _c = self.vtable.Create(@ptrCast(self), title, displayIcon, backgroundColor, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareProviderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "172a174c-e79e-4f6d-b07d-128f469e0296";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, title: HSTRING, displayIcon: *RandomAccessStreamReference, backgroundColor: Color, handler: *ShareProviderHandler, _r: **ShareProvider) callconv(.winapi) HRESULT,
    };
};
pub const IShareProviderOperation = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProvider(self: *@This()) core.HResult!*ShareProvider {
        var _r: *ShareProvider = undefined;
        const _c = self.vtable.get_Provider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareProviderOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19cef937-d435-4179-b6af-14e0492b69f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        get_Provider: *const fn(self: *anyopaque, _r: **ShareProvider) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IShareProvidersRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProviders(self: *@This()) core.HResult!*IVector(ShareProvider) {
        var _r: *IVector(ShareProvider) = undefined;
        const _c = self.vtable.get_Providers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        var _r: *DataPackageView = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareProvidersRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f888f356-a3f8-4fce-85e4-8826e63be799";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Providers: *const fn(self: *anyopaque, _r: **IVector(ShareProvider)) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **DataPackageView) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IShareTargetInfo = extern struct {
    vtable: *const VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShareProvider(self: *@This()) core.HResult!*ShareProvider {
        var _r: *ShareProvider = undefined;
        const _c = self.vtable.get_ShareProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareTargetInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "385be607-c6e8-4114-b294-28f3bb6f9904";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ShareProvider: *const fn(self: *anyopaque, _r: **ShareProvider) callconv(.winapi) HRESULT,
    };
};
pub const IShareUIOptions = extern struct {
    vtable: *const VTable,
    pub fn getTheme(self: *@This()) core.HResult!ShareUITheme {
        var _r: ShareUITheme = undefined;
        const _c = self.vtable.get_Theme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTheme(self: *@This(), value: ShareUITheme) core.HResult!void {
        const _c = self.vtable.put_Theme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionRect(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_SelectionRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const _c = self.vtable.put_SelectionRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IShareUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72fa8a80-342f-4d90-9551-2ae04e37680c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Theme: *const fn(self: *anyopaque, _r: *ShareUITheme) callconv(.winapi) HRESULT,
        put_Theme: *const fn(self: *anyopaque, value: ShareUITheme) callconv(.winapi) HRESULT,
        get_SelectionRect: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        put_SelectionRect: *const fn(self: *anyopaque, value: *IReference(Rect)) callconv(.winapi) HRESULT,
    };
};
pub const ISharedStorageAccessManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AddFile(self: *@This(), file: *IStorageFile) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.AddFile(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RedeemTokenForFileAsync(self: *@This(), token: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.RedeemTokenForFileAsync(@ptrCast(self), token, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveFile(self: *@This(), token: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveFile(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ISharedStorageAccessManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6132ada-34b1-4849-bd5f-d09fee3158c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddFile: *const fn(self: *anyopaque, file: *IStorageFile, _r: *HSTRING) callconv(.winapi) HRESULT,
        RedeemTokenForFileAsync: *const fn(self: *anyopaque, token: HSTRING, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
        RemoveFile: *const fn(self: *anyopaque, token: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardDataFormatsStatics = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHtml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Html(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRtf(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Rtf(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmap(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorageItems(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StorageItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IStandardDataFormatsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ed681a1-a880-40c9-b4ed-0bee1e15f549";
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
        get_Uri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Html: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Rtf: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Bitmap: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StorageItems: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardDataFormatsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getWebLink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WebLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApplicationLink(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IStandardDataFormatsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42a254f4-9d76-42e8-861b-47c25dd0cf71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebLink: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ApplicationLink: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStandardDataFormatsStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getUserActivityJsonArray(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserActivityJsonArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.IStandardDataFormatsStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b57b069-01d4-474c-8b5f-bc8e27f38b21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserActivityJsonArray: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITargetApplicationChosenEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ApplicationName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ITargetApplicationChosenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca6fb8ac-2987-4ee3-9c54-d8afbcb86c1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const OperationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperation(self: *@This()) core.HResult!DataPackageOperation {
        const this: *IOperationCompletedEventArgs = @ptrCast(self);
        return try this.getOperation();
    }
    pub fn getAcceptedFormatId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IOperationCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOperationCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAcceptedFormatId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.OperationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOperationCompletedEventArgs.GUID;
    pub const IID: Guid = IOperationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOperationCompletedEventArgs.SIGNATURE);
};
pub const SetHistoryItemAsContentStatus = enum(i32) {
    Success = 0,
    AccessDenied = 1,
    ItemDeleted = 2,
};
pub const ShareCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShareTarget(self: *@This()) core.HResult!*ShareTargetInfo {
        const this: *IShareCompletedEventArgs = @ptrCast(self);
        return try this.getShareTarget();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareCompletedEventArgs.GUID;
    pub const IID: Guid = IShareCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareCompletedEventArgs.SIGNATURE);
};
pub const ShareProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IShareProvider = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDisplayIcon(self: *@This()) core.HResult!*RandomAccessStreamReference {
        const this: *IShareProvider = @ptrCast(self);
        return try this.getDisplayIcon();
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!Color {
        const this: *IShareProvider = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        const this: *IShareProvider = @ptrCast(self);
        return try this.getTag();
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IShareProvider = @ptrCast(self);
        return try this.putTag(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(title: HSTRING, displayIcon: *RandomAccessStreamReference, backgroundColor: Color, handler: *ShareProviderHandler) core.HResult!*ShareProvider {
        const _f = @This().IShareProviderFactoryCache.get();
        return try _f.Create(title, displayIcon, backgroundColor, handler);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareProvider.GUID;
    pub const IID: Guid = IShareProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareProvider.SIGNATURE);
    var _IShareProviderFactoryCache: FactoryCache(IShareProviderFactory, RUNTIME_NAME) = .{};
};
pub const ShareProviderHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, operation: *ShareProviderOperation) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, operation: *ShareProviderOperation) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, operation: *ShareProviderOperation) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, operation);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareProviderHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7f9d9ba-e1ba-4e4d-bd65-d43845d3212f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, operation: *ShareProviderOperation) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ShareProviderOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        const this: *IShareProviderOperation = @ptrCast(self);
        return try this.getData();
    }
    pub fn getProvider(self: *@This()) core.HResult!*ShareProvider {
        const this: *IShareProviderOperation = @ptrCast(self);
        return try this.getProvider();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IShareProviderOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareProviderOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareProviderOperation.GUID;
    pub const IID: Guid = IShareProviderOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareProviderOperation.SIGNATURE);
};
pub const ShareProvidersRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviders(self: *@This()) core.HResult!*IVector(ShareProvider) {
        const this: *IShareProvidersRequestedEventArgs = @ptrCast(self);
        return try this.getProviders();
    }
    pub fn getData(self: *@This()) core.HResult!*DataPackageView {
        const this: *IShareProvidersRequestedEventArgs = @ptrCast(self);
        return try this.getData();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IShareProvidersRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareProvidersRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareProvidersRequestedEventArgs.GUID;
    pub const IID: Guid = IShareProvidersRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareProvidersRequestedEventArgs.SIGNATURE);
};
pub const ShareTargetInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IShareTargetInfo = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn getShareProvider(self: *@This()) core.HResult!*ShareProvider {
        const this: *IShareTargetInfo = @ptrCast(self);
        return try this.getShareProvider();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareTargetInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareTargetInfo.GUID;
    pub const IID: Guid = IShareTargetInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareTargetInfo.SIGNATURE);
};
pub const ShareUIOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTheme(self: *@This()) core.HResult!ShareUITheme {
        const this: *IShareUIOptions = @ptrCast(self);
        return try this.getTheme();
    }
    pub fn putTheme(self: *@This(), value: ShareUITheme) core.HResult!void {
        const this: *IShareUIOptions = @ptrCast(self);
        return try this.putTheme(value);
    }
    pub fn getSelectionRect(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *IShareUIOptions = @ptrCast(self);
        return try this.getSelectionRect();
    }
    pub fn putSelectionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const this: *IShareUIOptions = @ptrCast(self);
        return try this.putSelectionRect(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IShareUIOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.ShareUIOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShareUIOptions.GUID;
    pub const IID: Guid = IShareUIOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShareUIOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ShareUITheme = enum(i32) {
    Default = 0,
    Light = 1,
    Dark = 2,
};
pub const SharedStorageAccessManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AddFile(file: *IStorageFile) core.HResult!HSTRING {
        const _f = @This().ISharedStorageAccessManagerStaticsCache.get();
        return try _f.AddFile(file);
    }
    pub fn RedeemTokenForFileAsync(token: HSTRING) core.HResult!*IAsyncOperation(StorageFile) {
        const _f = @This().ISharedStorageAccessManagerStaticsCache.get();
        return try _f.RedeemTokenForFileAsync(token);
    }
    pub fn RemoveFile(token: HSTRING) core.HResult!void {
        const _f = @This().ISharedStorageAccessManagerStaticsCache.get();
        return try _f.RemoveFile(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.SharedStorageAccessManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISharedStorageAccessManagerStaticsCache: FactoryCache(ISharedStorageAccessManagerStatics, RUNTIME_NAME) = .{};
};
pub const StandardDataFormats = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getUserActivityJsonArray() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStatics3Cache.get();
        return try _f.getUserActivityJsonArray();
    }
    pub fn getWebLink() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStatics2Cache.get();
        return try _f.getWebLink();
    }
    pub fn getApplicationLink() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStatics2Cache.get();
        return try _f.getApplicationLink();
    }
    pub fn getText() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getText();
    }
    pub fn getUri() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getUri();
    }
    pub fn getHtml() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getHtml();
    }
    pub fn getRtf() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getRtf();
    }
    pub fn getBitmap() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getBitmap();
    }
    pub fn getStorageItems() core.HResult!HSTRING {
        const _f = @This().IStandardDataFormatsStaticsCache.get();
        return try _f.getStorageItems();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.StandardDataFormats";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStandardDataFormatsStatics3Cache: FactoryCache(IStandardDataFormatsStatics3, RUNTIME_NAME) = .{};
    var _IStandardDataFormatsStatics2Cache: FactoryCache(IStandardDataFormatsStatics2, RUNTIME_NAME) = .{};
    var _IStandardDataFormatsStaticsCache: FactoryCache(IStandardDataFormatsStatics, RUNTIME_NAME) = .{};
};
pub const TargetApplicationChosenEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getApplicationName(self: *@This()) core.HResult!HSTRING {
        const this: *ITargetApplicationChosenEventArgs = @ptrCast(self);
        return try this.getApplicationName();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.DataTransfer.TargetApplicationChosenEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITargetApplicationChosenEventArgs.GUID;
    pub const IID: Guid = ITargetApplicationChosenEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITargetApplicationChosenEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const RandomAccessStreamReference = @import("../Storage/Streams.zig").RandomAccessStreamReference;
const Deferral = @import("../Foundation.zig").Deferral;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const StorageFile = @import("../Storage.zig").StorageFile;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IStorageItem = @import("../Storage.zig").IStorageItem;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const ProtectionPolicyEvaluationResult = @import("../Security/EnterpriseData.zig").ProtectionPolicyEvaluationResult;
const IAgileObject = @import("../root.zig").IAgileObject;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
pub const DragDrop = @import("./DataTransfer/DragDrop.zig");
pub const ShareTarget = @import("./DataTransfer/ShareTarget.zig");
