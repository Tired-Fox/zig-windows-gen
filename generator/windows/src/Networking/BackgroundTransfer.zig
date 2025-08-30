pub const BackgroundDownloadProgress = extern struct {
    BytesReceived: u64,
    TotalBytesToReceive: u64,
    Status: BackgroundTransferStatus,
    HasResponseChanged: bool,
    HasRestarted: bool,
};
pub const BackgroundDownloader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateDownload(self: *@This(), uri: *Uri, resultFile: *IStorageFile) core.HResult!*DownloadOperation {
        const this: *IBackgroundDownloader = @ptrCast(self);
        return try this.CreateDownload(uri, resultFile);
    }
    pub fn CreateDownloadWithRequestBodyFile(self: *@This(), uri: *Uri, resultFile: *IStorageFile, requestBodyFile: *IStorageFile) core.HResult!*DownloadOperation {
        const this: *IBackgroundDownloader = @ptrCast(self);
        return try this.CreateDownloadWithRequestBodyFile(uri, resultFile, requestBodyFile);
    }
    pub fn CreateDownloadAsync(self: *@This(), uri: *Uri, resultFile: *IStorageFile, requestBodyStream: *IInputStream) core.HResult!*IAsyncOperation(DownloadOperation) {
        const this: *IBackgroundDownloader = @ptrCast(self);
        return try this.CreateDownloadAsync(uri, resultFile, requestBodyStream);
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServerCredential(credential);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProxyCredential(credential);
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMethod();
    }
    pub fn putMethod(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMethod(value);
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putGroup(value);
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCostPolicy();
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCostPolicy(value);
    }
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransferGroup();
    }
    pub fn putTransferGroup(self: *@This(), value: *BackgroundTransferGroup) core.HResult!void {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransferGroup(value);
    }
    pub fn getSuccessToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuccessToastNotification();
    }
    pub fn putSuccessToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuccessToastNotification(value);
    }
    pub fn getFailureToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFailureToastNotification();
    }
    pub fn putFailureToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFailureToastNotification(value);
    }
    pub fn getSuccessTileNotification(self: *@This()) core.HResult!*TileNotification {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuccessTileNotification();
    }
    pub fn putSuccessTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuccessTileNotification(value);
    }
    pub fn getFailureTileNotification(self: *@This()) core.HResult!*TileNotification {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFailureTileNotification();
    }
    pub fn putFailureTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        var this: ?*IBackgroundDownloader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFailureTileNotification(value);
    }
    pub fn getCompletionGroup(self: *@This()) core.HResult!*BackgroundTransferCompletionGroup {
        var this: ?*IBackgroundDownloader3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundDownloader3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompletionGroup();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundDownloader.IID)));
    }
    pub fn CreateWithCompletionGroup(completionGroup: *BackgroundTransferCompletionGroup) core.HResult!*BackgroundDownloader {
        const factory = @This().IBackgroundDownloaderFactoryCache.get();
        return try factory.CreateWithCompletionGroup(completionGroup);
    }
    pub fn RequestUnconstrainedDownloadsAsync(operations: *IIterable(DownloadOperation)) core.HResult!*IAsyncOperation(UnconstrainedTransferRequestResult) {
        const factory = @This().IBackgroundDownloaderUserConsentCache.get();
        return try factory.RequestUnconstrainedDownloadsAsync(operations);
    }
    pub fn GetCurrentDownloadsAsync() core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        const factory = @This().IBackgroundDownloaderStaticMethodsCache.get();
        return try factory.GetCurrentDownloadsAsync();
    }
    pub fn GetCurrentDownloadsAsyncWithGroup(group: HSTRING) core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        const factory = @This().IBackgroundDownloaderStaticMethodsCache.get();
        return try factory.GetCurrentDownloadsAsyncWithGroup(group);
    }
    pub fn GetCurrentDownloadsForTransferGroupAsync(group: *BackgroundTransferGroup) core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        const factory = @This().IBackgroundDownloaderStaticMethods2Cache.get();
        return try factory.GetCurrentDownloadsForTransferGroupAsync(group);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundDownloader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundDownloader.GUID;
    pub const IID: Guid = IBackgroundDownloader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundDownloader.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBackgroundDownloaderFactoryCache: FactoryCache(IBackgroundDownloaderFactory, RUNTIME_NAME) = .{};
    var _IBackgroundDownloaderUserConsentCache: FactoryCache(IBackgroundDownloaderUserConsent, RUNTIME_NAME) = .{};
    var _IBackgroundDownloaderStaticMethodsCache: FactoryCache(IBackgroundDownloaderStaticMethods, RUNTIME_NAME) = .{};
    var _IBackgroundDownloaderStaticMethods2Cache: FactoryCache(IBackgroundDownloaderStaticMethods2, RUNTIME_NAME) = .{};
};
pub const BackgroundTransferBehavior = enum(i32) {
    Parallel = 0,
    Serialized = 1,
};
pub const BackgroundTransferCompletionGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        const this: *IBackgroundTransferCompletionGroup = @ptrCast(self);
        return try this.getTrigger();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IBackgroundTransferCompletionGroup = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *IBackgroundTransferCompletionGroup = @ptrCast(self);
        return try this.Enable();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTransferCompletionGroup.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTransferCompletionGroup.GUID;
    pub const IID: Guid = IBackgroundTransferCompletionGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTransferCompletionGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BackgroundTransferCompletionGroupTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDownloads(self: *@This()) core.HResult!*IVectorView(DownloadOperation) {
        const this: *IBackgroundTransferCompletionGroupTriggerDetails = @ptrCast(self);
        return try this.getDownloads();
    }
    pub fn getUploads(self: *@This()) core.HResult!*IVectorView(UploadOperation) {
        const this: *IBackgroundTransferCompletionGroupTriggerDetails = @ptrCast(self);
        return try this.getUploads();
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferCompletionGroupTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTransferCompletionGroupTriggerDetails.GUID;
    pub const IID: Guid = IBackgroundTransferCompletionGroupTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTransferCompletionGroupTriggerDetails.SIGNATURE);
};
pub const BackgroundTransferContentPart = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const this: *IBackgroundTransferContentPart = @ptrCast(self);
        return try this.SetHeader(headerName, headerValue);
    }
    pub fn SetText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBackgroundTransferContentPart = @ptrCast(self);
        return try this.SetText(value);
    }
    pub fn SetFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const this: *IBackgroundTransferContentPart = @ptrCast(self);
        return try this.SetFile(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundTransferContentPart.IID)));
    }
    pub fn CreateWithName(name: HSTRING) core.HResult!*BackgroundTransferContentPart {
        const factory = @This().IBackgroundTransferContentPartFactoryCache.get();
        return try factory.CreateWithName(name);
    }
    pub fn CreateWithNameAndFileName(name: HSTRING, fileName: HSTRING) core.HResult!*BackgroundTransferContentPart {
        const factory = @This().IBackgroundTransferContentPartFactoryCache.get();
        return try factory.CreateWithNameAndFileName(name, fileName);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferContentPart";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTransferContentPart.GUID;
    pub const IID: Guid = IBackgroundTransferContentPart.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTransferContentPart.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBackgroundTransferContentPartFactoryCache: FactoryCache(IBackgroundTransferContentPartFactory, RUNTIME_NAME) = .{};
};
pub const BackgroundTransferCostPolicy = enum(i32) {
    Default = 0,
    UnrestrictedOnly = 1,
    Always = 2,
};
pub const BackgroundTransferError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetStatus(hresult: i32) core.HResult!WebErrorStatus {
        const factory = @This().IBackgroundTransferErrorStaticMethodsCache.get();
        return try factory.GetStatus(hresult);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundTransferErrorStaticMethodsCache: FactoryCache(IBackgroundTransferErrorStaticMethods, RUNTIME_NAME) = .{};
};
pub const BackgroundTransferFileRange = extern struct {
    Offset: u64,
    Length: u64,
};
pub const BackgroundTransferGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBackgroundTransferGroup = @ptrCast(self);
        return try this.getName();
    }
    pub fn getTransferBehavior(self: *@This()) core.HResult!BackgroundTransferBehavior {
        const this: *IBackgroundTransferGroup = @ptrCast(self);
        return try this.getTransferBehavior();
    }
    pub fn putTransferBehavior(self: *@This(), value: BackgroundTransferBehavior) core.HResult!void {
        const this: *IBackgroundTransferGroup = @ptrCast(self);
        return try this.putTransferBehavior(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateGroup(name: HSTRING) core.HResult!*BackgroundTransferGroup {
        const factory = @This().IBackgroundTransferGroupStaticsCache.get();
        return try factory.CreateGroup(name);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTransferGroup.GUID;
    pub const IID: Guid = IBackgroundTransferGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTransferGroup.SIGNATURE);
    var _IBackgroundTransferGroupStaticsCache: FactoryCache(IBackgroundTransferGroupStatics, RUNTIME_NAME) = .{};
};
pub const BackgroundTransferPriority = enum(i32) {
    Default = 0,
    High = 1,
    Low = 2,
};
pub const BackgroundTransferRangesDownloadedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWasDownloadRestarted(self: *@This()) core.HResult!bool {
        const this: *IBackgroundTransferRangesDownloadedEventArgs = @ptrCast(self);
        return try this.getWasDownloadRestarted();
    }
    pub fn getAddedRanges(self: *@This()) core.HResult!*IVector(BackgroundTransferFileRange) {
        const this: *IBackgroundTransferRangesDownloadedEventArgs = @ptrCast(self);
        return try this.getAddedRanges();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBackgroundTransferRangesDownloadedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundTransferRangesDownloadedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundTransferRangesDownloadedEventArgs.GUID;
    pub const IID: Guid = IBackgroundTransferRangesDownloadedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundTransferRangesDownloadedEventArgs.SIGNATURE);
};
pub const BackgroundTransferStatus = enum(i32) {
    Idle = 0,
    Running = 1,
    PausedByApplication = 2,
    PausedCostedNetwork = 3,
    PausedNoNetwork = 4,
    Completed = 5,
    Canceled = 6,
    Error = 7,
    PausedRecoverableWebErrorStatus = 8,
    PausedSystemPolicy = 32,
};
pub const BackgroundUploadProgress = extern struct {
    BytesReceived: u64,
    BytesSent: u64,
    TotalBytesToReceive: u64,
    TotalBytesToSend: u64,
    Status: BackgroundTransferStatus,
    HasResponseChanged: bool,
    HasRestarted: bool,
};
pub const BackgroundUploader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateUpload(self: *@This(), uri: *Uri, sourceFile: *IStorageFile) core.HResult!*UploadOperation {
        const this: *IBackgroundUploader = @ptrCast(self);
        return try this.CreateUpload(uri, sourceFile);
    }
    pub fn CreateUploadFromStreamAsync(self: *@This(), uri: *Uri, sourceStream: *IInputStream) core.HResult!*IAsyncOperation(UploadOperation) {
        const this: *IBackgroundUploader = @ptrCast(self);
        return try this.CreateUploadFromStreamAsync(uri, sourceStream);
    }
    pub fn CreateUploadAsync(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart)) core.HResult!*IAsyncOperation(UploadOperation) {
        const this: *IBackgroundUploader = @ptrCast(self);
        return try this.CreateUploadAsync(uri, parts);
    }
    pub fn CreateUploadAsyncWithSubType(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING) core.HResult!*IAsyncOperation(UploadOperation) {
        const this: *IBackgroundUploader = @ptrCast(self);
        return try this.CreateUploadAsyncWithSubType(uri, parts, subType);
    }
    pub fn CreateUploadAsyncWithSubTypeWithBoundary(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING, boundary: HSTRING) core.HResult!*IAsyncOperation(UploadOperation) {
        const this: *IBackgroundUploader = @ptrCast(self);
        return try this.CreateUploadAsyncWithSubTypeWithBoundary(uri, parts, subType, boundary);
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerCredential();
    }
    pub fn putServerCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putServerCredential(credential);
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProxyCredential();
    }
    pub fn putProxyCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProxyCredential(credential);
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMethod();
    }
    pub fn putMethod(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMethod(value);
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putGroup(value);
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCostPolicy();
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        var this: ?*IBackgroundTransferBase = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferBase.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCostPolicy(value);
    }
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransferGroup();
    }
    pub fn putTransferGroup(self: *@This(), value: *BackgroundTransferGroup) core.HResult!void {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransferGroup(value);
    }
    pub fn getSuccessToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuccessToastNotification();
    }
    pub fn putSuccessToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuccessToastNotification(value);
    }
    pub fn getFailureToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFailureToastNotification();
    }
    pub fn putFailureToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFailureToastNotification(value);
    }
    pub fn getSuccessTileNotification(self: *@This()) core.HResult!*TileNotification {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuccessTileNotification();
    }
    pub fn putSuccessTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuccessTileNotification(value);
    }
    pub fn getFailureTileNotification(self: *@This()) core.HResult!*TileNotification {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFailureTileNotification();
    }
    pub fn putFailureTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        var this: ?*IBackgroundUploader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFailureTileNotification(value);
    }
    pub fn getCompletionGroup(self: *@This()) core.HResult!*BackgroundTransferCompletionGroup {
        var this: ?*IBackgroundUploader3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundUploader3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompletionGroup();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackgroundUploader.IID)));
    }
    pub fn CreateWithCompletionGroup(completionGroup: *BackgroundTransferCompletionGroup) core.HResult!*BackgroundUploader {
        const factory = @This().IBackgroundUploaderFactoryCache.get();
        return try factory.CreateWithCompletionGroup(completionGroup);
    }
    pub fn RequestUnconstrainedUploadsAsync(operations: *IIterable(UploadOperation)) core.HResult!*IAsyncOperation(UnconstrainedTransferRequestResult) {
        const factory = @This().IBackgroundUploaderUserConsentCache.get();
        return try factory.RequestUnconstrainedUploadsAsync(operations);
    }
    pub fn GetCurrentUploadsForTransferGroupAsync(group: *BackgroundTransferGroup) core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        const factory = @This().IBackgroundUploaderStaticMethods2Cache.get();
        return try factory.GetCurrentUploadsForTransferGroupAsync(group);
    }
    pub fn GetCurrentUploadsAsync() core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        const factory = @This().IBackgroundUploaderStaticMethodsCache.get();
        return try factory.GetCurrentUploadsAsync();
    }
    pub fn GetCurrentUploadsAsyncWithGroup(group: HSTRING) core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        const factory = @This().IBackgroundUploaderStaticMethodsCache.get();
        return try factory.GetCurrentUploadsAsyncWithGroup(group);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.BackgroundUploader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundUploader.GUID;
    pub const IID: Guid = IBackgroundUploader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundUploader.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBackgroundUploaderFactoryCache: FactoryCache(IBackgroundUploaderFactory, RUNTIME_NAME) = .{};
    var _IBackgroundUploaderUserConsentCache: FactoryCache(IBackgroundUploaderUserConsent, RUNTIME_NAME) = .{};
    var _IBackgroundUploaderStaticMethods2Cache: FactoryCache(IBackgroundUploaderStaticMethods2, RUNTIME_NAME) = .{};
    var _IBackgroundUploaderStaticMethodsCache: FactoryCache(IBackgroundUploaderStaticMethods, RUNTIME_NAME) = .{};
};
pub const ContentPrefetcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ContentUris() core.HResult!*IVector(Uri) {
        const factory = @This().IContentPrefetcherCache.get();
        return try factory.getContentUris();
    }
    pub fn put_IndirectContentUri(value: *Uri) core.HResult!void {
        const factory = @This().IContentPrefetcherCache.get();
        return try factory.putIndirectContentUri(value);
    }
    pub fn get_IndirectContentUri() core.HResult!*Uri {
        const factory = @This().IContentPrefetcherCache.get();
        return try factory.getIndirectContentUri();
    }
    pub fn get_LastSuccessfulPrefetchTime() core.HResult!*IReference(DateTime) {
        const factory = @This().IContentPrefetcherTimeCache.get();
        return try factory.getLastSuccessfulPrefetchTime();
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.ContentPrefetcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IContentPrefetcherCache: FactoryCache(IContentPrefetcher, RUNTIME_NAME) = .{};
    var _IContentPrefetcherTimeCache: FactoryCache(IContentPrefetcherTime, RUNTIME_NAME) = .{};
};
pub const DownloadOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResultFile(self: *@This()) core.HResult!*IStorageFile {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.getResultFile();
    }
    pub fn getProgress(self: *@This()) core.HResult!BackgroundDownloadProgress {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.AttachAsync();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.Pause();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IDownloadOperation = @ptrCast(self);
        return try this.Resume();
    }
    pub fn getGuid(self: *@This()) core.HResult!*Guid {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGuid();
    }
    pub fn getRequestedUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestedUri();
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMethod();
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCostPolicy();
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCostPolicy(value);
    }
    pub fn GetResultStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResultStreamAt(position);
    }
    pub fn GetResponseInformation(self: *@This()) core.HResult!*ResponseInformation {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResponseInformation();
    }
    pub fn getPriority(self: *@This()) core.HResult!BackgroundTransferPriority {
        var this: ?*IBackgroundTransferOperationPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperationPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPriority();
    }
    pub fn putPriority(self: *@This(), value: BackgroundTransferPriority) core.HResult!void {
        var this: ?*IBackgroundTransferOperationPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperationPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPriority(value);
    }
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var this: ?*IDownloadOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransferGroup();
    }
    pub fn getIsRandomAccessRequired(self: *@This()) core.HResult!bool {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRandomAccessRequired();
    }
    pub fn putIsRandomAccessRequired(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsRandomAccessRequired(value);
    }
    pub fn GetResultRandomAccessStreamReference(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResultRandomAccessStreamReference();
    }
    pub fn GetDownloadedRanges(self: *@This()) core.HResult!*IVector(BackgroundTransferFileRange) {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDownloadedRanges();
    }
    pub fn addRangesDownloaded(self: *@This(), eventHandler: *TypedEventHandler(DownloadOperation,BackgroundTransferRangesDownloadedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addRangesDownloaded(eventHandler);
    }
    pub fn removeRangesDownloaded(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeRangesDownloaded(eventCookie);
    }
    pub fn putRequestedUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequestedUri(value);
    }
    pub fn getRecoverableWebErrorStatuses(self: *@This()) core.HResult!*IVector(WebErrorStatus) {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRecoverableWebErrorStatuses();
    }
    pub fn getCurrentWebErrorStatus(self: *@This()) core.HResult!*IReference(WebErrorStatus) {
        var this: ?*IDownloadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrentWebErrorStatus();
    }
    pub fn MakeCurrentInTransferGroup(self: *@This()) core.HResult!void {
        var this: ?*IDownloadOperation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MakeCurrentInTransferGroup();
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IDownloadOperation5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn RemoveRequestHeader(self: *@This(), headerName: HSTRING) core.HResult!void {
        var this: ?*IDownloadOperation5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDownloadOperation5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveRequestHeader(headerName);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.DownloadOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDownloadOperation.GUID;
    pub const IID: Guid = IDownloadOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDownloadOperation.SIGNATURE);
};
pub const IBackgroundDownloader = extern struct {
    vtable: *const VTable,
    pub fn CreateDownload(self: *@This(), uri: *Uri, resultFile: *IStorageFile) core.HResult!*DownloadOperation {
        var _r: *DownloadOperation = undefined;
        const _c = self.vtable.CreateDownload(@ptrCast(self), uri, resultFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDownloadWithResultFileWithRequestBodyFile(self: *@This(), uri: *Uri, resultFile: *IStorageFile, requestBodyFile: *IStorageFile) core.HResult!*DownloadOperation {
        var _r: *DownloadOperation = undefined;
        const _c = self.vtable.CreateDownloadWithResultFileWithRequestBodyFile(@ptrCast(self), uri, resultFile, requestBodyFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDownloadAsync(self: *@This(), uri: *Uri, resultFile: *IStorageFile, requestBodyStream: *IInputStream) core.HResult!*IAsyncOperation(DownloadOperation) {
        var _r: *IAsyncOperation(DownloadOperation) = undefined;
        const _c = self.vtable.CreateDownloadAsync(@ptrCast(self), uri, resultFile, requestBodyStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1c79333-6649-4b1d-a826-a4b3dd234d0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDownload: *const fn(self: *anyopaque, uri: *Uri, resultFile: *IStorageFile, _r: **DownloadOperation) callconv(.winapi) HRESULT,
        CreateDownloadWithResultFileWithRequestBodyFile: *const fn(self: *anyopaque, uri: *Uri, resultFile: *IStorageFile, requestBodyFile: *IStorageFile, _r: **DownloadOperation) callconv(.winapi) HRESULT,
        CreateDownloadAsync: *const fn(self: *anyopaque, uri: *Uri, resultFile: *IStorageFile, requestBodyStream: *IInputStream, _r: **IAsyncOperation(DownloadOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloader2 = extern struct {
    vtable: *const VTable,
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var _r: *BackgroundTransferGroup = undefined;
        const _c = self.vtable.get_TransferGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferGroup(self: *@This(), value: *BackgroundTransferGroup) core.HResult!void {
        const _c = self.vtable.put_TransferGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuccessToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.get_SuccessToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuccessToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        const _c = self.vtable.put_SuccessToastNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFailureToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.get_FailureToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFailureToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        const _c = self.vtable.put_FailureToastNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuccessTileNotification(self: *@This()) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.get_SuccessTileNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuccessTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        const _c = self.vtable.put_SuccessTileNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFailureTileNotification(self: *@This()) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.get_FailureTileNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFailureTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        const _c = self.vtable.put_FailureTileNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a94a5847-348d-4a35-890e-8a1ef3798479";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransferGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferGroup) callconv(.winapi) HRESULT,
        put_TransferGroup: *const fn(self: *anyopaque, value: *BackgroundTransferGroup) callconv(.winapi) HRESULT,
        get_SuccessToastNotification: *const fn(self: *anyopaque, _r: **ToastNotification) callconv(.winapi) HRESULT,
        put_SuccessToastNotification: *const fn(self: *anyopaque, value: *ToastNotification) callconv(.winapi) HRESULT,
        get_FailureToastNotification: *const fn(self: *anyopaque, _r: **ToastNotification) callconv(.winapi) HRESULT,
        put_FailureToastNotification: *const fn(self: *anyopaque, value: *ToastNotification) callconv(.winapi) HRESULT,
        get_SuccessTileNotification: *const fn(self: *anyopaque, _r: **TileNotification) callconv(.winapi) HRESULT,
        put_SuccessTileNotification: *const fn(self: *anyopaque, value: *TileNotification) callconv(.winapi) HRESULT,
        get_FailureTileNotification: *const fn(self: *anyopaque, _r: **TileNotification) callconv(.winapi) HRESULT,
        put_FailureTileNotification: *const fn(self: *anyopaque, value: *TileNotification) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloader3 = extern struct {
    vtable: *const VTable,
    pub fn getCompletionGroup(self: *@This()) core.HResult!*BackgroundTransferCompletionGroup {
        var _r: *BackgroundTransferCompletionGroup = undefined;
        const _c = self.vtable.get_CompletionGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloader3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d11a8c48-86e8-48e2-b615-6976aabf861d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompletionGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferCompletionGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithCompletionGroup(self: *@This(), completionGroup: *BackgroundTransferCompletionGroup) core.HResult!*BackgroundDownloader {
        var _r: *BackgroundDownloader = undefined;
        const _c = self.vtable.CreateWithCompletionGroup(@ptrCast(self), completionGroup, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26836c24-d89e-46f4-a29a-4f4d4f144155";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithCompletionGroup: *const fn(self: *anyopaque, completionGroup: *BackgroundTransferCompletionGroup, _r: **BackgroundDownloader) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloaderStaticMethods = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentDownloadsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        var _r: *IAsyncOperation(IVectorView(DownloadOperation)) = undefined;
        const _c = self.vtable.GetCurrentDownloadsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentDownloadsAsync(self: *@This(), group: HSTRING) core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        var _r: *IAsyncOperation(IVectorView(DownloadOperation)) = undefined;
        const _c = self.vtable.GetCurrentDownloadsAsync(@ptrCast(self), group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloaderStaticMethods";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52a65a35-c64e-426c-9919-540d0d21a650";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentDownloadsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(DownloadOperation))) callconv(.winapi) HRESULT,
        GetCurrentDownloadsAsync: *const fn(self: *anyopaque, group: HSTRING, _r: **IAsyncOperation(IVectorView(DownloadOperation))) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloaderStaticMethods2 = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentDownloadsForTransferGroupAsync(self: *@This(), group: *BackgroundTransferGroup) core.HResult!*IAsyncOperation(IVectorView(DownloadOperation)) {
        var _r: *IAsyncOperation(IVectorView(DownloadOperation)) = undefined;
        const _c = self.vtable.GetCurrentDownloadsForTransferGroupAsync(@ptrCast(self), group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloaderStaticMethods2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2faa1327-1ad4-4ca5-b2cd-08dbf0746afe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentDownloadsForTransferGroupAsync: *const fn(self: *anyopaque, group: *BackgroundTransferGroup, _r: **IAsyncOperation(IVectorView(DownloadOperation))) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundDownloaderUserConsent = extern struct {
    vtable: *const VTable,
    pub fn RequestUnconstrainedDownloadsAsync(self: *@This(), operations: *IIterable(DownloadOperation)) core.HResult!*IAsyncOperation(UnconstrainedTransferRequestResult) {
        var _r: *IAsyncOperation(UnconstrainedTransferRequestResult) = undefined;
        const _c = self.vtable.RequestUnconstrainedDownloadsAsync(@ptrCast(self), operations, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundDownloaderUserConsent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d14e906-9266-4808-bd71-5925f2a3130a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestUnconstrainedDownloadsAsync: *const fn(self: *anyopaque, operations: *IIterable(DownloadOperation), _r: **IAsyncOperation(UnconstrainedTransferRequestResult)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferBase = extern struct {
    vtable: *const VTable,
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRequestHeader(@ptrCast(self), headerName, headerValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ServerCredential(@ptrCast(self), credential);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProxyCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_ProxyCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProxyCredential(self: *@This(), credential: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_ProxyCredential(@ptrCast(self), credential);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Method(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMethod(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Method(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroup(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Group(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var _r: BackgroundTransferCostPolicy = undefined;
        const _c = self.vtable.get_CostPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        const _c = self.vtable.put_CostPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a9da250-c769-458c-afe8-feb8d4d3b2ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING, headerValue: HSTRING) callconv(.winapi) HRESULT,
        get_ServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ServerCredential: *const fn(self: *anyopaque, credential: *PasswordCredential) callconv(.winapi) HRESULT,
        get_ProxyCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_ProxyCredential: *const fn(self: *anyopaque, credential: *PasswordCredential) callconv(.winapi) HRESULT,
        get_Method: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Method: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Group: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CostPolicy: *const fn(self: *anyopaque, _r: *BackgroundTransferCostPolicy) callconv(.winapi) HRESULT,
        put_CostPolicy: *const fn(self: *anyopaque, value: BackgroundTransferCostPolicy) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferCompletionGroup = extern struct {
    vtable: *const VTable,
    pub fn getTrigger(self: *@This()) core.HResult!*IBackgroundTrigger {
        var _r: *IBackgroundTrigger = undefined;
        const _c = self.vtable.get_Trigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d930225-986b-574d-7950-0add47f5d706";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Trigger: *const fn(self: *anyopaque, _r: **IBackgroundTrigger) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferCompletionGroupTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getDownloads(self: *@This()) core.HResult!*IVectorView(DownloadOperation) {
        var _r: *IVectorView(DownloadOperation) = undefined;
        const _c = self.vtable.get_Downloads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUploads(self: *@This()) core.HResult!*IVectorView(UploadOperation) {
        var _r: *IVectorView(UploadOperation) = undefined;
        const _c = self.vtable.get_Uploads(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferCompletionGroupTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b6be286-6e47-5136-7fcb-fa4389f46f5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Downloads: *const fn(self: *anyopaque, _r: **IVectorView(DownloadOperation)) callconv(.winapi) HRESULT,
        get_Uploads: *const fn(self: *anyopaque, _r: **IVectorView(UploadOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferContentPart = extern struct {
    vtable: *const VTable,
    pub fn SetHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetHeader(@ptrCast(self), headerName, headerValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFile(self: *@This(), value: *IStorageFile) core.HResult!void {
        const _c = self.vtable.SetFile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPart";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8e15657-d7d1-4ed8-838e-674ac217ace6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetHeader: *const fn(self: *anyopaque, headerName: HSTRING, headerValue: HSTRING) callconv(.winapi) HRESULT,
        SetText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetFile: *const fn(self: *anyopaque, value: *IStorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferContentPartFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithName(self: *@This(), name: HSTRING) core.HResult!*BackgroundTransferContentPart {
        var _r: *BackgroundTransferContentPart = undefined;
        const _c = self.vtable.CreateWithName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithNameAndFileName(self: *@This(), name: HSTRING, fileName: HSTRING) core.HResult!*BackgroundTransferContentPart {
        var _r: *BackgroundTransferContentPart = undefined;
        const _c = self.vtable.CreateWithNameAndFileName(@ptrCast(self), name, fileName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferContentPartFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90ef98a9-7a01-4a0b-9f80-a0b0bb370f8d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithName: *const fn(self: *anyopaque, name: HSTRING, _r: **BackgroundTransferContentPart) callconv(.winapi) HRESULT,
        CreateWithNameAndFileName: *const fn(self: *anyopaque, name: HSTRING, fileName: HSTRING, _r: **BackgroundTransferContentPart) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferErrorStaticMethods = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This(), hresult: i32) core.HResult!WebErrorStatus {
        var _r: WebErrorStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), hresult, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferErrorStaticMethods";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aad33b04-1192-4bf4-8b68-39c5add244e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, hresult: i32, _r: *WebErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferGroup = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransferBehavior(self: *@This()) core.HResult!BackgroundTransferBehavior {
        var _r: BackgroundTransferBehavior = undefined;
        const _c = self.vtable.get_TransferBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferBehavior(self: *@This(), value: BackgroundTransferBehavior) core.HResult!void {
        const _c = self.vtable.put_TransferBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8c3e3e4-6459-4540-85eb-aaa1c8903677";
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
        get_TransferBehavior: *const fn(self: *anyopaque, _r: *BackgroundTransferBehavior) callconv(.winapi) HRESULT,
        put_TransferBehavior: *const fn(self: *anyopaque, value: BackgroundTransferBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateGroup(self: *@This(), name: HSTRING) core.HResult!*BackgroundTransferGroup {
        var _r: *BackgroundTransferGroup = undefined;
        const _c = self.vtable.CreateGroup(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02ec50b2-7d18-495b-aa22-32a97d45d3e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateGroup: *const fn(self: *anyopaque, name: HSTRING, _r: **BackgroundTransferGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferOperation = extern struct {
    vtable: *const VTable,
    pub fn getGuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Guid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_RequestedUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Method(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Group(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var _r: BackgroundTransferCostPolicy = undefined;
        const _c = self.vtable.get_CostPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        const _c = self.vtable.put_CostPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetResultStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.GetResultStreamAt(@ptrCast(self), position, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetResponseInformation(self: *@This()) core.HResult!*ResponseInformation {
        var _r: *ResponseInformation = undefined;
        const _c = self.vtable.GetResponseInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ded06846-90ca-44fb-8fb1-124154c0d539";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Guid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_RequestedUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Method: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Group: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CostPolicy: *const fn(self: *anyopaque, _r: *BackgroundTransferCostPolicy) callconv(.winapi) HRESULT,
        put_CostPolicy: *const fn(self: *anyopaque, value: BackgroundTransferCostPolicy) callconv(.winapi) HRESULT,
        GetResultStreamAt: *const fn(self: *anyopaque, position: u64, _r: **IInputStream) callconv(.winapi) HRESULT,
        GetResponseInformation: *const fn(self: *anyopaque, _r: **ResponseInformation) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferOperationPriority = extern struct {
    vtable: *const VTable,
    pub fn getPriority(self: *@This()) core.HResult!BackgroundTransferPriority {
        var _r: BackgroundTransferPriority = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPriority(self: *@This(), value: BackgroundTransferPriority) core.HResult!void {
        const _c = self.vtable.put_Priority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferOperationPriority";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04854327-5254-4b3a-915e-0aa49275c0f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *BackgroundTransferPriority) callconv(.winapi) HRESULT,
        put_Priority: *const fn(self: *anyopaque, value: BackgroundTransferPriority) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundTransferRangesDownloadedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWasDownloadRestarted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasDownloadRestarted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddedRanges(self: *@This()) core.HResult!*IVector(BackgroundTransferFileRange) {
        var _r: *IVector(BackgroundTransferFileRange) = undefined;
        const _c = self.vtable.get_AddedRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundTransferRangesDownloadedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ebc7453-bf48-4a88-9248-b0c165184f5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WasDownloadRestarted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AddedRanges: *const fn(self: *anyopaque, _r: **IVector(BackgroundTransferFileRange)) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploader = extern struct {
    vtable: *const VTable,
    pub fn CreateUpload(self: *@This(), uri: *Uri, sourceFile: *IStorageFile) core.HResult!*UploadOperation {
        var _r: *UploadOperation = undefined;
        const _c = self.vtable.CreateUpload(@ptrCast(self), uri, sourceFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUploadFromStreamAsync(self: *@This(), uri: *Uri, sourceStream: *IInputStream) core.HResult!*IAsyncOperation(UploadOperation) {
        var _r: *IAsyncOperation(UploadOperation) = undefined;
        const _c = self.vtable.CreateUploadFromStreamAsync(@ptrCast(self), uri, sourceStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUploadAsync(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart)) core.HResult!*IAsyncOperation(UploadOperation) {
        var _r: *IAsyncOperation(UploadOperation) = undefined;
        const _c = self.vtable.CreateUploadAsync(@ptrCast(self), uri, parts, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUploadAsyncWithPartsWithSubType(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING) core.HResult!*IAsyncOperation(UploadOperation) {
        var _r: *IAsyncOperation(UploadOperation) = undefined;
        const _c = self.vtable.CreateUploadAsyncWithPartsWithSubType(@ptrCast(self), uri, parts, subType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateUploadAsyncWithSubTypeWithBoundary(self: *@This(), uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING, boundary: HSTRING) core.HResult!*IAsyncOperation(UploadOperation) {
        var _r: *IAsyncOperation(UploadOperation) = undefined;
        const _c = self.vtable.CreateUploadAsyncWithSubTypeWithBoundary(@ptrCast(self), uri, parts, subType, boundary, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c595c9ae-cead-465b-8801-c55ac90a01ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateUpload: *const fn(self: *anyopaque, uri: *Uri, sourceFile: *IStorageFile, _r: **UploadOperation) callconv(.winapi) HRESULT,
        CreateUploadFromStreamAsync: *const fn(self: *anyopaque, uri: *Uri, sourceStream: *IInputStream, _r: **IAsyncOperation(UploadOperation)) callconv(.winapi) HRESULT,
        CreateUploadAsync: *const fn(self: *anyopaque, uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), _r: **IAsyncOperation(UploadOperation)) callconv(.winapi) HRESULT,
        CreateUploadAsyncWithPartsWithSubType: *const fn(self: *anyopaque, uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING, _r: **IAsyncOperation(UploadOperation)) callconv(.winapi) HRESULT,
        CreateUploadAsyncWithSubTypeWithBoundary: *const fn(self: *anyopaque, uri: *Uri, parts: *IIterable(BackgroundTransferContentPart), subType: HSTRING, boundary: HSTRING, _r: **IAsyncOperation(UploadOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploader2 = extern struct {
    vtable: *const VTable,
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var _r: *BackgroundTransferGroup = undefined;
        const _c = self.vtable.get_TransferGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferGroup(self: *@This(), value: *BackgroundTransferGroup) core.HResult!void {
        const _c = self.vtable.put_TransferGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuccessToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.get_SuccessToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuccessToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        const _c = self.vtable.put_SuccessToastNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFailureToastNotification(self: *@This()) core.HResult!*ToastNotification {
        var _r: *ToastNotification = undefined;
        const _c = self.vtable.get_FailureToastNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFailureToastNotification(self: *@This(), value: *ToastNotification) core.HResult!void {
        const _c = self.vtable.put_FailureToastNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuccessTileNotification(self: *@This()) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.get_SuccessTileNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuccessTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        const _c = self.vtable.put_SuccessTileNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFailureTileNotification(self: *@This()) core.HResult!*TileNotification {
        var _r: *TileNotification = undefined;
        const _c = self.vtable.get_FailureTileNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFailureTileNotification(self: *@This(), value: *TileNotification) core.HResult!void {
        const _c = self.vtable.put_FailureTileNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e0612ce-0c34-4463-807f-198a1b8bd4ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransferGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferGroup) callconv(.winapi) HRESULT,
        put_TransferGroup: *const fn(self: *anyopaque, value: *BackgroundTransferGroup) callconv(.winapi) HRESULT,
        get_SuccessToastNotification: *const fn(self: *anyopaque, _r: **ToastNotification) callconv(.winapi) HRESULT,
        put_SuccessToastNotification: *const fn(self: *anyopaque, value: *ToastNotification) callconv(.winapi) HRESULT,
        get_FailureToastNotification: *const fn(self: *anyopaque, _r: **ToastNotification) callconv(.winapi) HRESULT,
        put_FailureToastNotification: *const fn(self: *anyopaque, value: *ToastNotification) callconv(.winapi) HRESULT,
        get_SuccessTileNotification: *const fn(self: *anyopaque, _r: **TileNotification) callconv(.winapi) HRESULT,
        put_SuccessTileNotification: *const fn(self: *anyopaque, value: *TileNotification) callconv(.winapi) HRESULT,
        get_FailureTileNotification: *const fn(self: *anyopaque, _r: **TileNotification) callconv(.winapi) HRESULT,
        put_FailureTileNotification: *const fn(self: *anyopaque, value: *TileNotification) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploader3 = extern struct {
    vtable: *const VTable,
    pub fn getCompletionGroup(self: *@This()) core.HResult!*BackgroundTransferCompletionGroup {
        var _r: *BackgroundTransferCompletionGroup = undefined;
        const _c = self.vtable.get_CompletionGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploader3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b95e9439-5bf0-4b3a-8c47-2c6199a854b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompletionGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferCompletionGroup) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploaderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithCompletionGroup(self: *@This(), completionGroup: *BackgroundTransferCompletionGroup) core.HResult!*BackgroundUploader {
        var _r: *BackgroundUploader = undefined;
        const _c = self.vtable.CreateWithCompletionGroup(@ptrCast(self), completionGroup, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploaderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "736203c7-10e7-48a0-ac3c-1ac71095ec57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithCompletionGroup: *const fn(self: *anyopaque, completionGroup: *BackgroundTransferCompletionGroup, _r: **BackgroundUploader) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploaderStaticMethods = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentUploadsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        var _r: *IAsyncOperation(IVectorView(UploadOperation)) = undefined;
        const _c = self.vtable.GetCurrentUploadsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentUploadsAsync(self: *@This(), group: HSTRING) core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        var _r: *IAsyncOperation(IVectorView(UploadOperation)) = undefined;
        const _c = self.vtable.GetCurrentUploadsAsync(@ptrCast(self), group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploaderStaticMethods";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2875cfb-9b05-4741-9121-740a83e247df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentUploadsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UploadOperation))) callconv(.winapi) HRESULT,
        GetCurrentUploadsAsync: *const fn(self: *anyopaque, group: HSTRING, _r: **IAsyncOperation(IVectorView(UploadOperation))) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploaderStaticMethods2 = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentUploadsForTransferGroupAsync(self: *@This(), group: *BackgroundTransferGroup) core.HResult!*IAsyncOperation(IVectorView(UploadOperation)) {
        var _r: *IAsyncOperation(IVectorView(UploadOperation)) = undefined;
        const _c = self.vtable.GetCurrentUploadsForTransferGroupAsync(@ptrCast(self), group, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploaderStaticMethods2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e919ac62-ea08-42f0-a2ac-07e467549080";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentUploadsForTransferGroupAsync: *const fn(self: *anyopaque, group: *BackgroundTransferGroup, _r: **IAsyncOperation(IVectorView(UploadOperation))) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundUploaderUserConsent = extern struct {
    vtable: *const VTable,
    pub fn RequestUnconstrainedUploadsAsync(self: *@This(), operations: *IIterable(UploadOperation)) core.HResult!*IAsyncOperation(UnconstrainedTransferRequestResult) {
        var _r: *IAsyncOperation(UnconstrainedTransferRequestResult) = undefined;
        const _c = self.vtable.RequestUnconstrainedUploadsAsync(@ptrCast(self), operations, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IBackgroundUploaderUserConsent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bb384cb-0760-461d-907f-5138f84d44c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestUnconstrainedUploadsAsync: *const fn(self: *anyopaque, operations: *IIterable(UploadOperation), _r: **IAsyncOperation(UnconstrainedTransferRequestResult)) callconv(.winapi) HRESULT,
    };
};
pub const IContentPrefetcher = extern struct {
    vtable: *const VTable,
    pub fn getContentUris(self: *@This()) core.HResult!*IVector(Uri) {
        var _r: *IVector(Uri) = undefined;
        const _c = self.vtable.get_ContentUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndirectContentUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_IndirectContentUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndirectContentUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_IndirectContentUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IContentPrefetcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8d6f754-7dc1-4cd9-8810-2a6aa9417e11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentUris: *const fn(self: *anyopaque, _r: **IVector(Uri)) callconv(.winapi) HRESULT,
        put_IndirectContentUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_IndirectContentUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IContentPrefetcherTime = extern struct {
    vtable: *const VTable,
    pub fn getLastSuccessfulPrefetchTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_LastSuccessfulPrefetchTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IContentPrefetcherTime";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e361fd08-132a-4fde-a7cc-fcb0e66523af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LastSuccessfulPrefetchTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadOperation = extern struct {
    vtable: *const VTable,
    pub fn getResultFile(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_ResultFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!BackgroundDownloadProgress {
        var _r: BackgroundDownloadProgress = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) {
        var _r: *IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) {
        var _r: *IAsyncOperationWithProgress(DownloadOperation,DownloadOperation) = undefined;
        const _c = self.vtable.AttachAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IDownloadOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd87ebb0-5714-4e09-ba68-bef73903b0d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResultFile: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *BackgroundDownloadProgress) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(DownloadOperation,DownloadOperation)) callconv(.winapi) HRESULT,
        AttachAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(DownloadOperation,DownloadOperation)) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadOperation2 = extern struct {
    vtable: *const VTable,
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var _r: *BackgroundTransferGroup = undefined;
        const _c = self.vtable.get_TransferGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IDownloadOperation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3cced40-8f9c-4353-9cd4-290dee387c38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransferGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferGroup) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadOperation3 = extern struct {
    vtable: *const VTable,
    pub fn getIsRandomAccessRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRandomAccessRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRandomAccessRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRandomAccessRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetResultRandomAccessStreamReference(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.GetResultRandomAccessStreamReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDownloadedRanges(self: *@This()) core.HResult!*IVector(BackgroundTransferFileRange) {
        var _r: *IVector(BackgroundTransferFileRange) = undefined;
        const _c = self.vtable.GetDownloadedRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRangesDownloaded(self: *@This(), eventHandler: *TypedEventHandler(DownloadOperation,BackgroundTransferRangesDownloadedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RangesDownloaded(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRangesDownloaded(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RangesDownloaded(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putRequestedUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_RequestedUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecoverableWebErrorStatuses(self: *@This()) core.HResult!*IVector(WebErrorStatus) {
        var _r: *IVector(WebErrorStatus) = undefined;
        const _c = self.vtable.get_RecoverableWebErrorStatuses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentWebErrorStatus(self: *@This()) core.HResult!*IReference(WebErrorStatus) {
        var _r: *IReference(WebErrorStatus) = undefined;
        const _c = self.vtable.get_CurrentWebErrorStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IDownloadOperation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5027351c-7d5e-4adc-b8d3-df5c6031b9cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsRandomAccessRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRandomAccessRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetResultRandomAccessStreamReference: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        GetDownloadedRanges: *const fn(self: *anyopaque, _r: **IVector(BackgroundTransferFileRange)) callconv(.winapi) HRESULT,
        add_RangesDownloaded: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(DownloadOperation,BackgroundTransferRangesDownloadedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RangesDownloaded: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        put_RequestedUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_RecoverableWebErrorStatuses: *const fn(self: *anyopaque, _r: **IVector(WebErrorStatus)) callconv(.winapi) HRESULT,
        get_CurrentWebErrorStatus: *const fn(self: *anyopaque, _r: **IReference(WebErrorStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadOperation4 = extern struct {
    vtable: *const VTable,
    pub fn MakeCurrentInTransferGroup(self: *@This()) core.HResult!void {
        const _c = self.vtable.MakeCurrentInTransferGroup(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IDownloadOperation4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cdaaef4-8cef-404a-966d-f058400bed80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MakeCurrentInTransferGroup: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDownloadOperation5 = extern struct {
    vtable: *const VTable,
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRequestHeader(@ptrCast(self), headerName, headerValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveRequestHeader(self: *@This(), headerName: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveRequestHeader(@ptrCast(self), headerName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IDownloadOperation5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a699a86f-5590-463a-b8d6-1e491a2760a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING, headerValue: HSTRING) callconv(.winapi) HRESULT,
        RemoveRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IResponseInformation = extern struct {
    vtable: *const VTable,
    pub fn getIsResumable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResumable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActualUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ActualUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatusCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_StatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaders(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Headers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IResponseInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8bb9a12-f713-4792-8b68-d9d297f91d2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsResumable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ActualUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_StatusCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Headers: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IUnconstrainedTransferRequestResult = extern struct {
    vtable: *const VTable,
    pub fn getIsUnconstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUnconstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IUnconstrainedTransferRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c24b81f-d944-4112-a98e-6a69522b7ebb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsUnconstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUploadOperation = extern struct {
    vtable: *const VTable,
    pub fn getSourceFile(self: *@This()) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.get_SourceFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgress(self: *@This()) core.HResult!BackgroundUploadProgress {
        var _r: BackgroundUploadProgress = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(UploadOperation,UploadOperation) {
        var _r: *IAsyncOperationWithProgress(UploadOperation,UploadOperation) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(UploadOperation,UploadOperation) {
        var _r: *IAsyncOperationWithProgress(UploadOperation,UploadOperation) = undefined;
        const _c = self.vtable.AttachAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IUploadOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e5624e0-7389-434c-8b35-427fd36bbdae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceFile: *const fn(self: *anyopaque, _r: **IStorageFile) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *BackgroundUploadProgress) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(UploadOperation,UploadOperation)) callconv(.winapi) HRESULT,
        AttachAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(UploadOperation,UploadOperation)) callconv(.winapi) HRESULT,
    };
};
pub const IUploadOperation2 = extern struct {
    vtable: *const VTable,
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var _r: *BackgroundTransferGroup = undefined;
        const _c = self.vtable.get_TransferGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IUploadOperation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "556189f2-2774-4df6-9fa5-209f2bfb12f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransferGroup: *const fn(self: *anyopaque, _r: **BackgroundTransferGroup) callconv(.winapi) HRESULT,
    };
};
pub const IUploadOperation3 = extern struct {
    vtable: *const VTable,
    pub fn MakeCurrentInTransferGroup(self: *@This()) core.HResult!void {
        const _c = self.vtable.MakeCurrentInTransferGroup(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IUploadOperation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42c92ca3-de39-4546-bc62-3774b4294de3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MakeCurrentInTransferGroup: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUploadOperation4 = extern struct {
    vtable: *const VTable,
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        const _c = self.vtable.SetRequestHeader(@ptrCast(self), headerName, headerValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveRequestHeader(self: *@This(), headerName: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveRequestHeader(@ptrCast(self), headerName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.IUploadOperation4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50edef31-fac5-41ee-b030-dc77caee9faa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING, headerValue: HSTRING) callconv(.winapi) HRESULT,
        RemoveRequestHeader: *const fn(self: *anyopaque, headerName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ResponseInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsResumable(self: *@This()) core.HResult!bool {
        const this: *IResponseInformation = @ptrCast(self);
        return try this.getIsResumable();
    }
    pub fn getActualUri(self: *@This()) core.HResult!*Uri {
        const this: *IResponseInformation = @ptrCast(self);
        return try this.getActualUri();
    }
    pub fn getStatusCode(self: *@This()) core.HResult!u32 {
        const this: *IResponseInformation = @ptrCast(self);
        return try this.getStatusCode();
    }
    pub fn getHeaders(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IResponseInformation = @ptrCast(self);
        return try this.getHeaders();
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.ResponseInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IResponseInformation.GUID;
    pub const IID: Guid = IResponseInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IResponseInformation.SIGNATURE);
};
pub const UnconstrainedTransferRequestResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsUnconstrained(self: *@This()) core.HResult!bool {
        const this: *IUnconstrainedTransferRequestResult = @ptrCast(self);
        return try this.getIsUnconstrained();
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.UnconstrainedTransferRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnconstrainedTransferRequestResult.GUID;
    pub const IID: Guid = IUnconstrainedTransferRequestResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnconstrainedTransferRequestResult.SIGNATURE);
};
pub const UploadOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceFile(self: *@This()) core.HResult!*IStorageFile {
        const this: *IUploadOperation = @ptrCast(self);
        return try this.getSourceFile();
    }
    pub fn getProgress(self: *@This()) core.HResult!BackgroundUploadProgress {
        const this: *IUploadOperation = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(UploadOperation,UploadOperation) {
        const this: *IUploadOperation = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn AttachAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(UploadOperation,UploadOperation) {
        const this: *IUploadOperation = @ptrCast(self);
        return try this.AttachAsync();
    }
    pub fn getGuid(self: *@This()) core.HResult!*Guid {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGuid();
    }
    pub fn getRequestedUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestedUri();
    }
    pub fn getMethod(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMethod();
    }
    pub fn getGroup(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGroup();
    }
    pub fn getCostPolicy(self: *@This()) core.HResult!BackgroundTransferCostPolicy {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCostPolicy();
    }
    pub fn putCostPolicy(self: *@This(), value: BackgroundTransferCostPolicy) core.HResult!void {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCostPolicy(value);
    }
    pub fn GetResultStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResultStreamAt(position);
    }
    pub fn GetResponseInformation(self: *@This()) core.HResult!*ResponseInformation {
        var this: ?*IBackgroundTransferOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResponseInformation();
    }
    pub fn getPriority(self: *@This()) core.HResult!BackgroundTransferPriority {
        var this: ?*IBackgroundTransferOperationPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperationPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPriority();
    }
    pub fn putPriority(self: *@This(), value: BackgroundTransferPriority) core.HResult!void {
        var this: ?*IBackgroundTransferOperationPriority = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBackgroundTransferOperationPriority.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPriority(value);
    }
    pub fn getTransferGroup(self: *@This()) core.HResult!*BackgroundTransferGroup {
        var this: ?*IUploadOperation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUploadOperation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransferGroup();
    }
    pub fn MakeCurrentInTransferGroup(self: *@This()) core.HResult!void {
        var this: ?*IUploadOperation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUploadOperation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MakeCurrentInTransferGroup();
    }
    pub fn SetRequestHeader(self: *@This(), headerName: HSTRING, headerValue: HSTRING) core.HResult!void {
        var this: ?*IUploadOperation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUploadOperation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRequestHeader(headerName, headerValue);
    }
    pub fn RemoveRequestHeader(self: *@This(), headerName: HSTRING) core.HResult!void {
        var this: ?*IUploadOperation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUploadOperation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveRequestHeader(headerName);
    }
    pub const NAME: []const u8 = "Windows.Networking.BackgroundTransfer.UploadOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUploadOperation.GUID;
    pub const IID: Guid = IUploadOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUploadOperation.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const TileNotification = @import("../UI/Notifications.zig").TileNotification;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IReference = @import("../Foundation.zig").IReference;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const WebErrorStatus = @import("../Web.zig").WebErrorStatus;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const ToastNotification = @import("../UI/Notifications.zig").ToastNotification;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IBackgroundTrigger = @import("../ApplicationModel/Background.zig").IBackgroundTrigger;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
