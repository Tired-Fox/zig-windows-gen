pub const EmailAttachment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFileName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailAttachment = @ptrCast(self);
        return try this.getFileName();
    }
    pub fn putFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailAttachment = @ptrCast(self);
        return try this.putFileName(value);
    }
    pub fn getData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IEmailAttachment = @ptrCast(self);
        return try this.getData();
    }
    pub fn putData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IEmailAttachment = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentId();
    }
    pub fn putContentId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentId(value);
    }
    pub fn getContentLocation(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentLocation();
    }
    pub fn putContentLocation(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContentLocation(value);
    }
    pub fn getDownloadState(self: *@This()) core.HResult!EmailAttachmentDownloadState {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDownloadState();
    }
    pub fn putDownloadState(self: *@This(), value: EmailAttachmentDownloadState) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDownloadState(value);
    }
    pub fn getEstimatedDownloadSizeInBytes(self: *@This()) core.HResult!u64 {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEstimatedDownloadSizeInBytes();
    }
    pub fn putEstimatedDownloadSizeInBytes(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEstimatedDownloadSizeInBytes(value);
    }
    pub fn getIsFromBaseMessage(self: *@This()) core.HResult!bool {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFromBaseMessage();
    }
    pub fn getIsInline(self: *@This()) core.HResult!bool {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsInline();
    }
    pub fn putIsInline(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsInline(value);
    }
    pub fn getMimeType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMimeType();
    }
    pub fn putMimeType(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMimeType(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailAttachment.IID)));
    }
    pub fn Create(fileName: HSTRING, data: *IRandomAccessStreamReference) core.HResult!*EmailAttachment {
        const factory = @This().IEmailAttachmentFactoryCache.get();
        return try factory.Create(fileName, data);
    }
    pub fn CreateWithMimeType(fileName: HSTRING, data: *IRandomAccessStreamReference, mimeType: HSTRING) core.HResult!*EmailAttachment {
        const factory = @This().IEmailAttachmentFactory2Cache.get();
        return try factory.Create(fileName, data, mimeType);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailAttachment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailAttachment.GUID;
    pub const IID: Guid = IEmailAttachment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailAttachment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEmailAttachmentFactoryCache: FactoryCache(IEmailAttachmentFactory, RUNTIME_NAME) = .{};
    var _IEmailAttachmentFactory2Cache: FactoryCache(IEmailAttachmentFactory2, RUNTIME_NAME) = .{};
};
pub const EmailAttachmentDownloadState = enum(i32) {
    NotDownloaded = 0,
    Downloading = 1,
    Downloaded = 2,
    Failed = 3,
};
pub const EmailBatchStatus = enum(i32) {
    Success = 0,
    ServerSearchSyncManagerError = 1,
    ServerSearchUnknownError = 2,
};
pub const EmailCertificateValidationStatus = enum(i32) {
    Success = 0,
    NoMatch = 1,
    InvalidUsage = 2,
    InvalidCertificate = 3,
    Revoked = 4,
    ChainRevoked = 5,
    RevocationServerFailure = 6,
    Expired = 7,
    Untrusted = 8,
    ServerError = 9,
    UnknownFailure = 10,
};
pub const EmailConversation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getMailboxId();
    }
    pub fn getFlagState(self: *@This()) core.HResult!EmailFlagState {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getFlagState();
    }
    pub fn getHasAttachment(self: *@This()) core.HResult!bool {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getHasAttachment();
    }
    pub fn getImportance(self: *@This()) core.HResult!EmailImportance {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getImportance();
    }
    pub fn getLastEmailResponseKind(self: *@This()) core.HResult!EmailMessageResponseKind {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getLastEmailResponseKind();
    }
    pub fn getMessageCount(self: *@This()) core.HResult!u32 {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getMessageCount();
    }
    pub fn getMostRecentMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getMostRecentMessageId();
    }
    pub fn getMostRecentMessageTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getMostRecentMessageTime();
    }
    pub fn getPreview(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getPreview();
    }
    pub fn getLatestSender(self: *@This()) core.HResult!*EmailRecipient {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getLatestSender();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getUnreadMessageCount(self: *@This()) core.HResult!u32 {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.getUnreadMessageCount();
    }
    pub fn FindMessagesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMessage)) {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.FindMessagesAsync();
    }
    pub fn FindMessagesAsyncWithCount(self: *@This(), count: u32) core.HResult!*IAsyncOperation(IVectorView(EmailMessage)) {
        const this: *IEmailConversation = @ptrCast(self);
        return try this.FindMessagesAsyncWithCount(count);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailConversation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailConversation.GUID;
    pub const IID: Guid = IEmailConversation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailConversation.SIGNATURE);
};
pub const EmailConversationBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConversations(self: *@This()) core.HResult!*IVectorView(EmailConversation) {
        const this: *IEmailConversationBatch = @ptrCast(self);
        return try this.getConversations();
    }
    pub fn getStatus(self: *@This()) core.HResult!EmailBatchStatus {
        const this: *IEmailConversationBatch = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailConversationBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailConversationBatch.GUID;
    pub const IID: Guid = IEmailConversationBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailConversationBatch.SIGNATURE);
};
pub const EmailConversationReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailConversationBatch) {
        const this: *IEmailConversationReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailConversationReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailConversationReader.GUID;
    pub const IID: Guid = IEmailConversationReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailConversationReader.SIGNATURE);
};
pub const EmailFlagState = enum(i32) {
    Unflagged = 0,
    Flagged = 1,
    Completed = 2,
    Cleared = 3,
};
pub const EmailFolder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getId();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getMailboxId();
    }
    pub fn getParentFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getParentFolderId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getIsSyncEnabled(self: *@This()) core.HResult!bool {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getIsSyncEnabled();
    }
    pub fn putIsSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.putIsSyncEnabled(value);
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getLastSuccessfulSyncTime();
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.putLastSuccessfulSyncTime(value);
    }
    pub fn getKind(self: *@This()) core.HResult!EmailSpecialFolderKind {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.getKind();
    }
    pub fn CreateFolderAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.CreateFolderAsync(name);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn FindChildFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailFolder)) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.FindChildFoldersAsync();
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetConversationReader();
    }
    pub fn GetConversationReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetConversationReaderWithOptions(options);
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetMessageAsync(id);
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetMessageReader();
    }
    pub fn GetMessageReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetMessageReaderWithOptions(options);
    }
    pub fn GetMessageCountsAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailItemCounts) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.GetMessageCountsAsync();
    }
    pub fn TryMoveAsync(self: *@This(), newParentFolder: *EmailFolder) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.TryMoveAsync(newParentFolder);
    }
    pub fn TryMoveAsyncWithNewFolderName(self: *@This(), newParentFolder: *EmailFolder, newFolderName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.TryMoveAsyncWithNewFolderName(newParentFolder, newFolderName);
    }
    pub fn TrySaveAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.TrySaveAsync();
    }
    pub fn SaveMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        const this: *IEmailFolder = @ptrCast(self);
        return try this.SaveMessageAsync(message);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailFolder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailFolder.GUID;
    pub const IID: Guid = IEmailFolder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailFolder.SIGNATURE);
};
pub const EmailImportance = enum(i32) {
    Normal = 0,
    High = 1,
    Low = 2,
};
pub const EmailIrmInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanEdit(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanEdit();
    }
    pub fn putCanEdit(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanEdit(value);
    }
    pub fn getCanExtractData(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanExtractData();
    }
    pub fn putCanExtractData(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanExtractData(value);
    }
    pub fn getCanForward(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanForward();
    }
    pub fn putCanForward(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanForward(value);
    }
    pub fn getCanModifyRecipientsOnResponse(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanModifyRecipientsOnResponse();
    }
    pub fn putCanModifyRecipientsOnResponse(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanModifyRecipientsOnResponse(value);
    }
    pub fn getCanPrintData(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanPrintData();
    }
    pub fn putCanPrintData(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanPrintData(value);
    }
    pub fn getCanRemoveIrmOnResponse(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanRemoveIrmOnResponse();
    }
    pub fn putCanRemoveIrmOnResponse(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanRemoveIrmOnResponse(value);
    }
    pub fn getCanReply(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanReply();
    }
    pub fn putCanReply(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanReply(value);
    }
    pub fn getCanReplyAll(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getCanReplyAll();
    }
    pub fn putCanReplyAll(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putCanReplyAll(value);
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn putExpirationDate(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putExpirationDate(value);
    }
    pub fn getIsIrmOriginator(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getIsIrmOriginator();
    }
    pub fn putIsIrmOriginator(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putIsIrmOriginator(value);
    }
    pub fn getIsProgramaticAccessAllowed(self: *@This()) core.HResult!bool {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getIsProgramaticAccessAllowed();
    }
    pub fn putIsProgramaticAccessAllowed(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putIsProgramaticAccessAllowed(value);
    }
    pub fn getTemplate(self: *@This()) core.HResult!*EmailIrmTemplate {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.getTemplate();
    }
    pub fn putTemplate(self: *@This(), value: *EmailIrmTemplate) core.HResult!void {
        const this: *IEmailIrmInfo = @ptrCast(self);
        return try this.putTemplate(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailIrmInfo.IID)));
    }
    pub fn Create(expiration: DateTime, irmTemplate: *EmailIrmTemplate) core.HResult!*EmailIrmInfo {
        const factory = @This().IEmailIrmInfoFactoryCache.get();
        return try factory.Create(expiration, irmTemplate);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailIrmInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailIrmInfo.GUID;
    pub const IID: Guid = IEmailIrmInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailIrmInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEmailIrmInfoFactoryCache: FactoryCache(IEmailIrmInfoFactory, RUNTIME_NAME) = .{};
};
pub const EmailIrmTemplate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailIrmTemplate = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailIrmTemplate.IID)));
    }
    pub fn Create(id: HSTRING, name: HSTRING, description: HSTRING) core.HResult!*EmailIrmTemplate {
        const factory = @This().IEmailIrmTemplateFactoryCache.get();
        return try factory.Create(id, name, description);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailIrmTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailIrmTemplate.GUID;
    pub const IID: Guid = IEmailIrmTemplate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailIrmTemplate.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEmailIrmTemplateFactoryCache: FactoryCache(IEmailIrmTemplateFactory, RUNTIME_NAME) = .{};
};
pub const EmailItemCounts = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFlagged(self: *@This()) core.HResult!u32 {
        const this: *IEmailItemCounts = @ptrCast(self);
        return try this.getFlagged();
    }
    pub fn getImportant(self: *@This()) core.HResult!u32 {
        const this: *IEmailItemCounts = @ptrCast(self);
        return try this.getImportant();
    }
    pub fn getTotal(self: *@This()) core.HResult!u32 {
        const this: *IEmailItemCounts = @ptrCast(self);
        return try this.getTotal();
    }
    pub fn getUnread(self: *@This()) core.HResult!u32 {
        const this: *IEmailItemCounts = @ptrCast(self);
        return try this.getUnread();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailItemCounts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailItemCounts.GUID;
    pub const IID: Guid = IEmailItemCounts.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailItemCounts.SIGNATURE);
};
pub const EmailMailbox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*EmailMailboxCapabilities {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*EmailMailboxChangeTracker {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getChangeTracker();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsOwnedByCurrentApp(self: *@This()) core.HResult!bool {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getIsOwnedByCurrentApp();
    }
    pub fn getIsDataEncryptedUnderLock(self: *@This()) core.HResult!bool {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getIsDataEncryptedUnderLock();
    }
    pub fn getMailAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getMailAddress();
    }
    pub fn putMailAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.putMailAddress(value);
    }
    pub fn getMailAddressAliases(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getMailAddressAliases();
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!EmailMailboxOtherAppReadAccess {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: EmailMailboxOtherAppReadAccess) core.HResult!void {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!EmailMailboxOtherAppWriteAccess {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getOtherAppWriteAccess();
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: EmailMailboxOtherAppWriteAccess) core.HResult!void {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.putOtherAppWriteAccess(value);
    }
    pub fn getPolicies(self: *@This()) core.HResult!*EmailMailboxPolicies {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getPolicies();
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getSourceDisplayName();
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*EmailMailboxSyncManager {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getSyncManager();
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetConversationReader();
    }
    pub fn GetConversationReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetConversationReaderWithOptions(options);
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetMessageReader();
    }
    pub fn GetMessageReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetMessageReaderWithOptions(options);
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn GetConversationAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailConversation) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetConversationAsync(id);
    }
    pub fn GetFolderAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetFolderAsync(id);
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetMessageAsync(id);
    }
    pub fn GetSpecialFolderAsync(self: *@This(), folderType: EmailSpecialFolderKind) core.HResult!*IAsyncOperation(EmailFolder) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.GetSpecialFolderAsync(folderType);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn MarkMessageAsSeenAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.MarkMessageAsSeenAsync(messageId);
    }
    pub fn MarkFolderAsSeenAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.MarkFolderAsSeenAsync(folderId);
    }
    pub fn MarkMessageReadAsync(self: *@This(), messageId: HSTRING, isRead: bool) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.MarkMessageReadAsync(messageId, isRead);
    }
    pub fn ChangeMessageFlagStateAsync(self: *@This(), messageId: HSTRING, flagState: EmailFlagState) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.ChangeMessageFlagStateAsync(messageId, flagState);
    }
    pub fn TryMoveMessageAsync(self: *@This(), messageId: HSTRING, newParentFolderId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryMoveMessageAsync(messageId, newParentFolderId);
    }
    pub fn TryMoveFolderAsync(self: *@This(), folderId: HSTRING, newParentFolderId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryMoveFolderAsync(folderId, newParentFolderId);
    }
    pub fn TryMoveFolderAsyncWithNewFolderName(self: *@This(), folderId: HSTRING, newParentFolderId: HSTRING, newFolderName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryMoveFolderAsyncWithNewFolderName(folderId, newParentFolderId, newFolderName);
    }
    pub fn DeleteMessageAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.DeleteMessageAsync(messageId);
    }
    pub fn MarkFolderSyncEnabledAsync(self: *@This(), folderId: HSTRING, isSyncEnabled: bool) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.MarkFolderSyncEnabledAsync(folderId, isSyncEnabled);
    }
    pub fn SendMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.SendMessageAsync(message);
    }
    pub fn SaveDraftAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.SaveDraftAsync(message);
    }
    pub fn DownloadMessageAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.DownloadMessageAsync(messageId);
    }
    pub fn DownloadAttachmentAsync(self: *@This(), attachmentId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.DownloadAttachmentAsync(attachmentId);
    }
    pub fn CreateResponseMessageAsync(self: *@This(), messageId: HSTRING, responseType: EmailMessageResponseKind, subject: HSTRING, responseHeaderType: EmailMessageBodyKind, responseHeader: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.CreateResponseMessageAsync(messageId, responseType, subject, responseHeaderType, responseHeader);
    }
    pub fn TryUpdateMeetingResponseAsync(self: *@This(), meeting: *EmailMessage, response: EmailMeetingResponseType, subject: HSTRING, comment: HSTRING, sendUpdate: bool) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryUpdateMeetingResponseAsync(meeting, response, subject, comment, sendUpdate);
    }
    pub fn TryForwardMeetingAsync(self: *@This(), meeting: *EmailMessage, recipients: *IIterable(EmailRecipient), subject: HSTRING, forwardHeaderType: EmailMessageBodyKind, forwardHeader: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryForwardMeetingAsync(meeting, recipients, subject, forwardHeaderType, forwardHeader, comment);
    }
    pub fn TryProposeNewTimeForMeetingAsync(self: *@This(), meeting: *EmailMessage, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryProposeNewTimeForMeetingAsync(meeting, newStartTime, newDuration, subject, comment);
    }
    pub fn addMailboxChanged(self: *@This(), pHandler: *TypedEventHandler(EmailMailbox,EmailMailboxChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.addMailboxChanged(pHandler);
    }
    pub fn removeMailboxChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.removeMailboxChanged(token);
    }
    pub fn SendMessageAsyncWithSmartSend(self: *@This(), message: *EmailMessage, smartSend: bool) core.HResult!*IAsyncAction {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.SendMessageAsyncWithSmartSend(message, smartSend);
    }
    pub fn TrySetAutoReplySettingsAsync(self: *@This(), autoReplySettings: *EmailMailboxAutoReplySettings) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TrySetAutoReplySettingsAsync(autoReplySettings);
    }
    pub fn TryGetAutoReplySettingsAsync(self: *@This(), requestedFormat: EmailMailboxAutoReplyMessageResponseKind) core.HResult!*IAsyncOperation(EmailMailboxAutoReplySettings) {
        const this: *IEmailMailbox = @ptrCast(self);
        return try this.TryGetAutoReplySettingsAsync(requestedFormat);
    }
    pub fn getLinkedMailboxId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMailbox2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLinkedMailboxId();
    }
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMailbox2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNetworkAccountId();
    }
    pub fn getNetworkId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMailbox2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNetworkId();
    }
    pub fn ResolveRecipientsAsync(self: *@This(), recipients: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(EmailRecipientResolutionResult)) {
        var this: ?*IEmailMailbox3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ResolveRecipientsAsync(recipients);
    }
    pub fn ValidateCertificatesAsync(self: *@This(), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IVectorView(EmailCertificateValidationStatus)) {
        var this: ?*IEmailMailbox3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ValidateCertificatesAsync(certificates);
    }
    pub fn TryEmptyFolderAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxEmptyFolderStatus) {
        var this: ?*IEmailMailbox3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryEmptyFolderAsync(folderId);
    }
    pub fn TryCreateFolderAsync(self: *@This(), parentFolderId: HSTRING, name: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxCreateFolderResult) {
        var this: ?*IEmailMailbox3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateFolderAsync(parentFolderId, name);
    }
    pub fn TryDeleteFolderAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxDeleteFolderStatus) {
        var this: ?*IEmailMailbox3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDeleteFolderAsync(folderId);
    }
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IEmailMailbox4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterSyncManagerAsync();
    }
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*EmailMailboxChangeTracker {
        var this: ?*IEmailMailbox5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailbox5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChangeTracker(identity);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailbox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailbox.GUID;
    pub const IID: Guid = IEmailMailbox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailbox.SIGNATURE);
};
pub const EmailMailboxAction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!EmailMailboxActionKind {
        const this: *IEmailMailboxAction = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        const this: *IEmailMailboxAction = @ptrCast(self);
        return try this.getChangeNumber();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxAction.GUID;
    pub const IID: Guid = IEmailMailboxAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxAction.SIGNATURE);
};
pub const EmailMailboxActionKind = enum(i32) {
    MarkMessageAsSeen = 0,
    MarkMessageRead = 1,
    ChangeMessageFlagState = 2,
    MoveMessage = 3,
    SaveDraft = 4,
    SendMessage = 5,
    CreateResponseReplyMessage = 6,
    CreateResponseReplyAllMessage = 7,
    CreateResponseForwardMessage = 8,
    MoveFolder = 9,
    MarkFolderForSyncEnabled = 10,
};
pub const EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation = enum(i32) {
    None = 0,
    StrongAlgorithm = 1,
    AnyAlgorithm = 2,
};
pub const EmailMailboxAutoReply = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxAutoReply = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailMailboxAutoReply = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getResponse(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxAutoReply = @ptrCast(self);
        return try this.getResponse();
    }
    pub fn putResponse(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMailboxAutoReply = @ptrCast(self);
        return try this.putResponse(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxAutoReply";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxAutoReply.GUID;
    pub const IID: Guid = IEmailMailboxAutoReply.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxAutoReply.SIGNATURE);
};
pub const EmailMailboxAutoReplyMessageResponseKind = enum(i32) {
    Html = 0,
    PlainText = 1,
};
pub const EmailMailboxAutoReplySettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getResponseKind(self: *@This()) core.HResult!EmailMailboxAutoReplyMessageResponseKind {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getResponseKind();
    }
    pub fn putResponseKind(self: *@This(), value: EmailMailboxAutoReplyMessageResponseKind) core.HResult!void {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.putResponseKind(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn putEndTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.putEndTime(value);
    }
    pub fn getInternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getInternalReply();
    }
    pub fn getKnownExternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getKnownExternalReply();
    }
    pub fn getUnknownExternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        const this: *IEmailMailboxAutoReplySettings = @ptrCast(self);
        return try this.getUnknownExternalReply();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailMailboxAutoReplySettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxAutoReplySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxAutoReplySettings.GUID;
    pub const IID: Guid = IEmailMailboxAutoReplySettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxAutoReplySettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EmailMailboxCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanForwardMeetings(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanForwardMeetings();
    }
    pub fn getCanGetAndSetExternalAutoReplies(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanGetAndSetExternalAutoReplies();
    }
    pub fn getCanGetAndSetInternalAutoReplies(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanGetAndSetInternalAutoReplies();
    }
    pub fn getCanUpdateMeetingResponses(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanUpdateMeetingResponses();
    }
    pub fn getCanServerSearchFolders(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanServerSearchFolders();
    }
    pub fn getCanServerSearchMailbox(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanServerSearchMailbox();
    }
    pub fn getCanProposeNewTimeForMeetings(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanProposeNewTimeForMeetings();
    }
    pub fn getCanSmartSend(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxCapabilities = @ptrCast(self);
        return try this.getCanSmartSend();
    }
    pub fn getCanResolveRecipients(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanResolveRecipients();
    }
    pub fn getCanValidateCertificates(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanValidateCertificates();
    }
    pub fn getCanEmptyFolder(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanEmptyFolder();
    }
    pub fn getCanCreateFolder(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanCreateFolder();
    }
    pub fn getCanDeleteFolder(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanDeleteFolder();
    }
    pub fn getCanMoveFolder(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanMoveFolder();
    }
    pub fn putCanForwardMeetings(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanForwardMeetings(value);
    }
    pub fn putCanGetAndSetExternalAutoReplies(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanGetAndSetExternalAutoReplies(value);
    }
    pub fn putCanGetAndSetInternalAutoReplies(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanGetAndSetInternalAutoReplies(value);
    }
    pub fn putCanUpdateMeetingResponses(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanUpdateMeetingResponses(value);
    }
    pub fn putCanServerSearchFolders(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanServerSearchFolders(value);
    }
    pub fn putCanServerSearchMailbox(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanServerSearchMailbox(value);
    }
    pub fn putCanProposeNewTimeForMeetings(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanProposeNewTimeForMeetings(value);
    }
    pub fn putCanSmartSend(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanSmartSend(value);
    }
    pub fn putCanResolveRecipients(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanResolveRecipients(value);
    }
    pub fn putCanValidateCertificates(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanValidateCertificates(value);
    }
    pub fn putCanEmptyFolder(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanEmptyFolder(value);
    }
    pub fn putCanCreateFolder(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanCreateFolder(value);
    }
    pub fn putCanDeleteFolder(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanDeleteFolder(value);
    }
    pub fn putCanMoveFolder(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxCapabilities3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxCapabilities3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanMoveFolder(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxCapabilities.GUID;
    pub const IID: Guid = IEmailMailboxCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxCapabilities.SIGNATURE);
};
pub const EmailMailboxChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeType(self: *@This()) core.HResult!EmailMailboxChangeType {
        const this: *IEmailMailboxChange = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getMailboxActions(self: *@This()) core.HResult!*IVector(EmailMailboxAction) {
        const this: *IEmailMailboxChange = @ptrCast(self);
        return try this.getMailboxActions();
    }
    pub fn getMessage(self: *@This()) core.HResult!*EmailMessage {
        const this: *IEmailMailboxChange = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getFolder(self: *@This()) core.HResult!*EmailFolder {
        const this: *IEmailMailboxChange = @ptrCast(self);
        return try this.getFolder();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxChange.GUID;
    pub const IID: Guid = IEmailMailboxChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxChange.SIGNATURE);
};
pub const EmailMailboxChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const this: *IEmailMailboxChangeReader = @ptrCast(self);
        return try this.AcceptChanges();
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAcknowledge: *EmailMailboxChange) core.HResult!void {
        const this: *IEmailMailboxChangeReader = @ptrCast(self);
        return try this.AcceptChangesThrough(lastChangeToAcknowledge);
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailboxChange)) {
        const this: *IEmailMailboxChangeReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxChangeReader.GUID;
    pub const IID: Guid = IEmailMailboxChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxChangeReader.SIGNATURE);
};
pub const EmailMailboxChangeTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxChangeTracker = @ptrCast(self);
        return try this.getIsTracking();
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *IEmailMailboxChangeTracker = @ptrCast(self);
        return try this.Enable();
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*EmailMailboxChangeReader {
        const this: *IEmailMailboxChangeTracker = @ptrCast(self);
        return try this.GetChangeReader();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IEmailMailboxChangeTracker = @ptrCast(self);
        return try this.Reset();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxChangeTracker.GUID;
    pub const IID: Guid = IEmailMailboxChangeTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxChangeTracker.SIGNATURE);
};
pub const EmailMailboxChangeType = enum(i32) {
    MessageCreated = 0,
    MessageModified = 1,
    MessageDeleted = 2,
    FolderCreated = 3,
    FolderModified = 4,
    FolderDeleted = 5,
    ChangeTrackingLost = 6,
};
pub const EmailMailboxChangedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IEmailMailboxChangedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxChangedDeferral.GUID;
    pub const IID: Guid = IEmailMailboxChangedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxChangedDeferral.SIGNATURE);
};
pub const EmailMailboxChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*EmailMailboxChangedDeferral {
        const this: *IEmailMailboxChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxChangedEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxChangedEventArgs.SIGNATURE);
};
pub const EmailMailboxCreateFolderResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailMailboxCreateFolderStatus {
        const this: *IEmailMailboxCreateFolderResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getFolder(self: *@This()) core.HResult!*EmailFolder {
        const this: *IEmailMailboxCreateFolderResult = @ptrCast(self);
        return try this.getFolder();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxCreateFolderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxCreateFolderResult.GUID;
    pub const IID: Guid = IEmailMailboxCreateFolderResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxCreateFolderResult.SIGNATURE);
};
pub const EmailMailboxCreateFolderStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    PermissionsError = 2,
    ServerError = 3,
    UnknownFailure = 4,
    NameCollision = 5,
    ServerRejected = 6,
};
pub const EmailMailboxDeleteFolderStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    PermissionsError = 2,
    ServerError = 3,
    UnknownFailure = 4,
    CouldNotDeleteEverything = 5,
};
pub const EmailMailboxEmptyFolderStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    PermissionsError = 2,
    ServerError = 3,
    UnknownFailure = 4,
    CouldNotDeleteEverything = 5,
};
pub const EmailMailboxOtherAppReadAccess = enum(i32) {
    SystemOnly = 0,
    Full = 1,
    None = 2,
};
pub const EmailMailboxOtherAppWriteAccess = enum(i32) {
    None = 0,
    Limited = 1,
};
pub const EmailMailboxPolicies = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowedSmimeEncryptionAlgorithmNegotiation(self: *@This()) core.HResult!EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation {
        const this: *IEmailMailboxPolicies = @ptrCast(self);
        return try this.getAllowedSmimeEncryptionAlgorithmNegotiation();
    }
    pub fn getAllowSmimeSoftCertificates(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxPolicies = @ptrCast(self);
        return try this.getAllowSmimeSoftCertificates();
    }
    pub fn getRequiredSmimeEncryptionAlgorithm(self: *@This()) core.HResult!*IReference(EmailMailboxSmimeEncryptionAlgorithm) {
        const this: *IEmailMailboxPolicies = @ptrCast(self);
        return try this.getRequiredSmimeEncryptionAlgorithm();
    }
    pub fn getRequiredSmimeSigningAlgorithm(self: *@This()) core.HResult!*IReference(EmailMailboxSmimeSigningAlgorithm) {
        const this: *IEmailMailboxPolicies = @ptrCast(self);
        return try this.getRequiredSmimeSigningAlgorithm();
    }
    pub fn getMustEncryptSmimeMessages(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxPolicies2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMustEncryptSmimeMessages();
    }
    pub fn getMustSignSmimeMessages(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMailboxPolicies2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMustSignSmimeMessages();
    }
    pub fn putAllowedSmimeEncryptionAlgorithmNegotiation(self: *@This(), value: EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowedSmimeEncryptionAlgorithmNegotiation(value);
    }
    pub fn putAllowSmimeSoftCertificates(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowSmimeSoftCertificates(value);
    }
    pub fn putRequiredSmimeEncryptionAlgorithm(self: *@This(), value: *IReference(EmailMailboxSmimeEncryptionAlgorithm)) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequiredSmimeEncryptionAlgorithm(value);
    }
    pub fn putRequiredSmimeSigningAlgorithm(self: *@This(), value: *IReference(EmailMailboxSmimeSigningAlgorithm)) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRequiredSmimeSigningAlgorithm(value);
    }
    pub fn putMustEncryptSmimeMessages(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMustEncryptSmimeMessages(value);
    }
    pub fn putMustSignSmimeMessages(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMailboxPolicies3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxPolicies3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMustSignSmimeMessages(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxPolicies";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxPolicies.GUID;
    pub const IID: Guid = IEmailMailboxPolicies.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxPolicies.SIGNATURE);
};
pub const EmailMailboxSmimeEncryptionAlgorithm = enum(i32) {
    Any = 0,
    TripleDes = 1,
    Des = 2,
    RC2128Bit = 3,
    RC264Bit = 4,
    RC240Bit = 5,
};
pub const EmailMailboxSmimeSigningAlgorithm = enum(i32) {
    Any = 0,
    Sha1 = 1,
    MD5 = 2,
};
pub const EmailMailboxSyncManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailMailboxSyncStatus {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.getLastSuccessfulSyncTime();
    }
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.getLastAttemptedSyncTime();
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.SyncAsync();
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(EmailMailboxSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.addSyncStatusChanged(handler);
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailMailboxSyncManager = @ptrCast(self);
        return try this.removeSyncStatusChanged(token);
    }
    pub fn putStatus(self: *@This(), value: EmailMailboxSyncStatus) core.HResult!void {
        var this: ?*IEmailMailboxSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStatus(value);
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IEmailMailboxSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastSuccessfulSyncTime(value);
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IEmailMailboxSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMailboxSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastAttemptedSyncTime(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMailboxSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxSyncManager.GUID;
    pub const IID: Guid = IEmailMailboxSyncManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxSyncManager.SIGNATURE);
};
pub const EmailMailboxSyncStatus = enum(i32) {
    Idle = 0,
    Syncing = 1,
    UpToDate = 2,
    AuthenticationError = 3,
    PolicyError = 4,
    UnknownError = 5,
    ManualAccountRemovalRequired = 6,
};
pub const EmailManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowComposeNewEmailAsync(message: *EmailMessage) core.HResult!*IAsyncAction {
        const factory = @This().IEmailManagerStaticsCache.get();
        return try factory.ShowComposeNewEmailAsync(message);
    }
    pub fn RequestStoreAsync(accessType: EmailStoreAccessType) core.HResult!*IAsyncOperation(EmailStore) {
        const factory = @This().IEmailManagerStatics2Cache.get();
        return try factory.RequestStoreAsync(accessType);
    }
    pub fn GetForUser(user: *User) core.HResult!*EmailManagerForUser {
        const factory = @This().IEmailManagerStatics3Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IEmailManagerStaticsCache: FactoryCache(IEmailManagerStatics, RUNTIME_NAME) = .{};
    var _IEmailManagerStatics2Cache: FactoryCache(IEmailManagerStatics2, RUNTIME_NAME) = .{};
    var _IEmailManagerStatics3Cache: FactoryCache(IEmailManagerStatics3, RUNTIME_NAME) = .{};
};
pub const EmailManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ShowComposeNewEmailAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        const this: *IEmailManagerForUser = @ptrCast(self);
        return try this.ShowComposeNewEmailAsync(message);
    }
    pub fn RequestStoreAsync(self: *@This(), accessType: EmailStoreAccessType) core.HResult!*IAsyncOperation(EmailStore) {
        const this: *IEmailManagerForUser = @ptrCast(self);
        return try this.RequestStoreAsync(accessType);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IEmailManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailManagerForUser.GUID;
    pub const IID: Guid = IEmailManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailManagerForUser.SIGNATURE);
};
pub const EmailMeetingInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowNewTimeProposal(self: *@This()) core.HResult!bool {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getAllowNewTimeProposal();
    }
    pub fn putAllowNewTimeProposal(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putAllowNewTimeProposal(value);
    }
    pub fn getAppointmentRoamingId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getAppointmentRoamingId();
    }
    pub fn putAppointmentRoamingId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putAppointmentRoamingId(value);
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getAppointmentOriginalStartTime();
    }
    pub fn putAppointmentOriginalStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putAppointmentOriginalStartTime(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getIsAllDay(self: *@This()) core.HResult!bool {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getIsAllDay();
    }
    pub fn putIsAllDay(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putIsAllDay(value);
    }
    pub fn getIsResponseRequested(self: *@This()) core.HResult!bool {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getIsResponseRequested();
    }
    pub fn putIsResponseRequested(self: *@This(), value: bool) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putIsResponseRequested(value);
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getProposedStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getProposedStartTime();
    }
    pub fn putProposedStartTime(self: *@This(), proposedStartTime: *IReference(DateTime)) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putProposedStartTime(proposedStartTime);
    }
    pub fn getProposedDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getProposedDuration();
    }
    pub fn putProposedDuration(self: *@This(), duration: *IReference(TimeSpan)) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putProposedDuration(duration);
    }
    pub fn getRecurrenceStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getRecurrenceStartTime();
    }
    pub fn putRecurrenceStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putRecurrenceStartTime(value);
    }
    pub fn getRecurrence(self: *@This()) core.HResult!*AppointmentRecurrence {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getRecurrence();
    }
    pub fn putRecurrence(self: *@This(), value: *AppointmentRecurrence) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putRecurrence(value);
    }
    pub fn getRemoteChangeNumber(self: *@This()) core.HResult!u64 {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getRemoteChangeNumber();
    }
    pub fn putRemoteChangeNumber(self: *@This(), value: u64) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putRemoteChangeNumber(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IEmailMeetingInfo = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getIsReportedOutOfDateByServer(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMeetingInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMeetingInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReportedOutOfDateByServer();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailMeetingInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMeetingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMeetingInfo.GUID;
    pub const IID: Guid = IEmailMeetingInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMeetingInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EmailMeetingResponseType = enum(i32) {
    Accept = 0,
    Decline = 1,
    Tentative = 2,
};
pub const EmailMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.putSubject(value);
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.putBody(value);
    }
    pub fn getTo(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getTo();
    }
    pub fn getCC(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getCC();
    }
    pub fn getBcc(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getBcc();
    }
    pub fn getAttachments(self: *@This()) core.HResult!*IVector(EmailAttachment) {
        const this: *IEmailMessage = @ptrCast(self);
        return try this.getAttachments();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMailboxId();
    }
    pub fn getConversationId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConversationId();
    }
    pub fn getFolderId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFolderId();
    }
    pub fn getAllowInternetImages(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowInternetImages();
    }
    pub fn putAllowInternetImages(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowInternetImages(value);
    }
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeNumber();
    }
    pub fn getDownloadState(self: *@This()) core.HResult!EmailMessageDownloadState {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDownloadState();
    }
    pub fn putDownloadState(self: *@This(), value: EmailMessageDownloadState) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDownloadState(value);
    }
    pub fn getEstimatedDownloadSizeInBytes(self: *@This()) core.HResult!u32 {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEstimatedDownloadSizeInBytes();
    }
    pub fn putEstimatedDownloadSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEstimatedDownloadSizeInBytes(value);
    }
    pub fn getFlagState(self: *@This()) core.HResult!EmailFlagState {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFlagState();
    }
    pub fn putFlagState(self: *@This(), value: EmailFlagState) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFlagState(value);
    }
    pub fn getHasPartialBodies(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasPartialBodies();
    }
    pub fn getImportance(self: *@This()) core.HResult!EmailImportance {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getImportance();
    }
    pub fn putImportance(self: *@This(), value: EmailImportance) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putImportance(value);
    }
    pub fn getInResponseToMessageId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInResponseToMessageId();
    }
    pub fn getIrmInfo(self: *@This()) core.HResult!*EmailIrmInfo {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIrmInfo();
    }
    pub fn putIrmInfo(self: *@This(), value: *EmailIrmInfo) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIrmInfo(value);
    }
    pub fn getIsDraftMessage(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDraftMessage();
    }
    pub fn getIsRead(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRead();
    }
    pub fn putIsRead(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsRead(value);
    }
    pub fn getIsSeen(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSeen();
    }
    pub fn putIsSeen(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsSeen(value);
    }
    pub fn getIsServerSearchMessage(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsServerSearchMessage();
    }
    pub fn getIsSmartSendable(self: *@This()) core.HResult!bool {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSmartSendable();
    }
    pub fn getMessageClass(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageClass();
    }
    pub fn putMessageClass(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMessageClass(value);
    }
    pub fn getNormalizedSubject(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNormalizedSubject();
    }
    pub fn getOriginalCodePage(self: *@This()) core.HResult!i32 {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalCodePage();
    }
    pub fn putOriginalCodePage(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOriginalCodePage(value);
    }
    pub fn getPreview(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreview();
    }
    pub fn putPreview(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreview(value);
    }
    pub fn getLastResponseKind(self: *@This()) core.HResult!EmailMessageResponseKind {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastResponseKind();
    }
    pub fn putLastResponseKind(self: *@This(), value: EmailMessageResponseKind) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastResponseKind(value);
    }
    pub fn getSender(self: *@This()) core.HResult!*EmailRecipient {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSender();
    }
    pub fn putSender(self: *@This(), value: *EmailRecipient) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSender(value);
    }
    pub fn getSentTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSentTime();
    }
    pub fn putSentTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSentTime(value);
    }
    pub fn getMeetingInfo(self: *@This()) core.HResult!*EmailMeetingInfo {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMeetingInfo();
    }
    pub fn putMeetingInfo(self: *@This(), value: *EmailMeetingInfo) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMeetingInfo(value);
    }
    pub fn GetBodyStream(self: *@This(), ty: EmailMessageBodyKind) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBodyStream(ty);
    }
    pub fn SetBodyStream(self: *@This(), ty: EmailMessageBodyKind, stream: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IEmailMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetBodyStream(ty, stream);
    }
    pub fn getSmimeData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IEmailMessage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmimeData();
    }
    pub fn putSmimeData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IEmailMessage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSmimeData(value);
    }
    pub fn getSmimeKind(self: *@This()) core.HResult!EmailMessageSmimeKind {
        var this: ?*IEmailMessage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmimeKind();
    }
    pub fn putSmimeKind(self: *@This(), value: EmailMessageSmimeKind) core.HResult!void {
        var this: ?*IEmailMessage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSmimeKind(value);
    }
    pub fn getReplyTo(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        var this: ?*IEmailMessage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReplyTo();
    }
    pub fn getSentRepresenting(self: *@This()) core.HResult!*EmailRecipient {
        var this: ?*IEmailMessage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSentRepresenting();
    }
    pub fn putSentRepresenting(self: *@This(), value: *EmailRecipient) core.HResult!void {
        var this: ?*IEmailMessage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailMessage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSentRepresenting(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMessage.GUID;
    pub const IID: Guid = IEmailMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EmailMessageBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessages(self: *@This()) core.HResult!*IVectorView(EmailMessage) {
        const this: *IEmailMessageBatch = @ptrCast(self);
        return try this.getMessages();
    }
    pub fn getStatus(self: *@This()) core.HResult!EmailBatchStatus {
        const this: *IEmailMessageBatch = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMessageBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMessageBatch.GUID;
    pub const IID: Guid = IEmailMessageBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMessageBatch.SIGNATURE);
};
pub const EmailMessageBodyKind = enum(i32) {
    Html = 0,
    PlainText = 1,
};
pub const EmailMessageDownloadState = enum(i32) {
    PartiallyDownloaded = 0,
    Downloading = 1,
    Downloaded = 2,
    Failed = 3,
};
pub const EmailMessageReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailMessageBatch) {
        const this: *IEmailMessageReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailMessageReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMessageReader.GUID;
    pub const IID: Guid = IEmailMessageReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMessageReader.SIGNATURE);
};
pub const EmailMessageResponseKind = enum(i32) {
    None = 0,
    Reply = 1,
    ReplyAll = 2,
    Forward = 3,
};
pub const EmailMessageSmimeKind = enum(i32) {
    None = 0,
    ClearSigned = 1,
    OpaqueSigned = 2,
    Encrypted = 3,
};
pub const EmailQueryKind = enum(i32) {
    All = 0,
    Important = 1,
    Flagged = 2,
    Unread = 3,
    Read = 4,
    Unseen = 5,
};
pub const EmailQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextSearch(self: *@This()) core.HResult!*EmailQueryTextSearch {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.getTextSearch();
    }
    pub fn getSortDirection(self: *@This()) core.HResult!EmailQuerySortDirection {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.getSortDirection();
    }
    pub fn putSortDirection(self: *@This(), value: EmailQuerySortDirection) core.HResult!void {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.putSortDirection(value);
    }
    pub fn getSortProperty(self: *@This()) core.HResult!EmailQuerySortProperty {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.getSortProperty();
    }
    pub fn putSortProperty(self: *@This(), value: EmailQuerySortProperty) core.HResult!void {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.putSortProperty(value);
    }
    pub fn getKind(self: *@This()) core.HResult!EmailQueryKind {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: EmailQueryKind) core.HResult!void {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getFolderIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IEmailQueryOptions = @ptrCast(self);
        return try this.getFolderIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailQueryOptions.IID)));
    }
    pub fn CreateWithText(text: HSTRING) core.HResult!*EmailQueryOptions {
        const factory = @This().IEmailQueryOptionsFactoryCache.get();
        return try factory.CreateWithText(text);
    }
    pub fn CreateWithTextAndFields(text: HSTRING, fields: EmailQuerySearchFields) core.HResult!*EmailQueryOptions {
        const factory = @This().IEmailQueryOptionsFactoryCache.get();
        return try factory.CreateWithTextAndFields(text, fields);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailQueryOptions.GUID;
    pub const IID: Guid = IEmailQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEmailQueryOptionsFactoryCache: FactoryCache(IEmailQueryOptionsFactory, RUNTIME_NAME) = .{};
};
pub const EmailQuerySearchFields = enum(i32) {
    None = 0,
    Subject = 1,
    Sender = 2,
    Preview = 4,
    Recipients = 8,
    All = -1,
};
pub const EmailQuerySearchScope = enum(i32) {
    Local = 0,
    Server = 1,
};
pub const EmailQuerySortDirection = enum(i32) {
    Descending = 0,
    Ascending = 1,
};
pub const EmailQuerySortProperty = enum(i32) {
    Date = 0,
};
pub const EmailQueryTextSearch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFields(self: *@This()) core.HResult!EmailQuerySearchFields {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.getFields();
    }
    pub fn putFields(self: *@This(), value: EmailQuerySearchFields) core.HResult!void {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.putFields(value);
    }
    pub fn getSearchScope(self: *@This()) core.HResult!EmailQuerySearchScope {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.getSearchScope();
    }
    pub fn putSearchScope(self: *@This(), value: EmailQuerySearchScope) core.HResult!void {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.putSearchScope(value);
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailQueryTextSearch = @ptrCast(self);
        return try this.putText(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailQueryTextSearch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailQueryTextSearch.GUID;
    pub const IID: Guid = IEmailQueryTextSearch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailQueryTextSearch.SIGNATURE);
};
pub const EmailRecipient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailRecipient = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailRecipient = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailRecipient = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IEmailRecipient = @ptrCast(self);
        return try this.putAddress(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailRecipient.IID)));
    }
    pub fn Create(address: HSTRING) core.HResult!*EmailRecipient {
        const factory = @This().IEmailRecipientFactoryCache.get();
        return try factory.Create(address);
    }
    pub fn CreateWithName(address: HSTRING, name: HSTRING) core.HResult!*EmailRecipient {
        const factory = @This().IEmailRecipientFactoryCache.get();
        return try factory.CreateWithName(address, name);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailRecipient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailRecipient.GUID;
    pub const IID: Guid = IEmailRecipient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailRecipient.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEmailRecipientFactoryCache: FactoryCache(IEmailRecipientFactory, RUNTIME_NAME) = .{};
};
pub const EmailRecipientResolutionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailRecipientResolutionStatus {
        const this: *IEmailRecipientResolutionResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getPublicKeys(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *IEmailRecipientResolutionResult = @ptrCast(self);
        return try this.getPublicKeys();
    }
    pub fn putStatus(self: *@This(), value: EmailRecipientResolutionStatus) core.HResult!void {
        var this: ?*IEmailRecipientResolutionResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailRecipientResolutionResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStatus(value);
    }
    pub fn SetPublicKeys(self: *@This(), value: *IIterable(Certificate)) core.HResult!void {
        var this: ?*IEmailRecipientResolutionResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEmailRecipientResolutionResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPublicKeys(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEmailRecipientResolutionResult.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailRecipientResolutionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailRecipientResolutionResult.GUID;
    pub const IID: Guid = IEmailRecipientResolutionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailRecipientResolutionResult.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EmailRecipientResolutionStatus = enum(i32) {
    Success = 0,
    RecipientNotFound = 1,
    AmbiguousRecipient = 2,
    NoCertificate = 3,
    CertificateRequestLimitReached = 4,
    CannotResolveDistributionList = 5,
    ServerError = 6,
    UnknownFailure = 7,
};
pub const EmailSpecialFolderKind = enum(i32) {
    None = 0,
    Root = 1,
    Inbox = 2,
    Outbox = 3,
    Drafts = 4,
    DeletedItems = 5,
    Sent = 6,
};
pub const EmailStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindMailboxesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailbox)) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.FindMailboxesAsync();
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetConversationReader();
    }
    pub fn GetConversationReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetConversationReaderWithOptions(options);
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetMessageReader();
    }
    pub fn GetMessageReaderWithOptions(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetMessageReaderWithOptions(options);
    }
    pub fn GetMailboxAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetMailboxAsync(id);
    }
    pub fn GetConversationAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailConversation) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetConversationAsync(id);
    }
    pub fn GetFolderAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetFolderAsync(id);
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.GetMessageAsync(id);
    }
    pub fn CreateMailboxAsync(self: *@This(), accountName: HSTRING, accountAddress: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.CreateMailboxAsync(accountName, accountAddress);
    }
    pub fn CreateMailboxAsyncWithUserDataAccountId(self: *@This(), accountName: HSTRING, accountAddress: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        const this: *IEmailStore = @ptrCast(self);
        return try this.CreateMailboxAsyncWithUserDataAccountId(accountName, accountAddress, userDataAccountId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailStore.GUID;
    pub const IID: Guid = IEmailStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailStore.SIGNATURE);
};
pub const EmailStoreAccessType = enum(i32) {
    AppMailboxesReadWrite = 0,
    AllMailboxesLimitedReadWrite = 1,
};
pub const EmailStoreNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.EmailStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailStoreNotificationTriggerDetails.GUID;
    pub const IID: Guid = IEmailStoreNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailStoreNotificationTriggerDetails.SIGNATURE);
};
pub const IEmailAttachment = extern struct {
    vtable: *const VTable,
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
    pub fn getData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailAttachment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f353caf9-57c8-4adb-b992-60fceb584f54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IEmailAttachment2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDownloadState(self: *@This()) core.HResult!EmailAttachmentDownloadState {
        var _r: EmailAttachmentDownloadState = undefined;
        const _c = self.vtable.get_DownloadState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDownloadState(self: *@This(), value: EmailAttachmentDownloadState) core.HResult!void {
        const _c = self.vtable.put_DownloadState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEstimatedDownloadSizeInBytes(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_EstimatedDownloadSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEstimatedDownloadSizeInBytes(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_EstimatedDownloadSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFromBaseMessage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFromBaseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInline(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMimeType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MimeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMimeType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MimeType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailAttachment2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "225f1070-b0ff-4571-9d54-a706c48d55c6";
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
        get_ContentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentLocation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentLocation: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DownloadState: *const fn(self: *anyopaque, _r: *EmailAttachmentDownloadState) callconv(.winapi) HRESULT,
        put_DownloadState: *const fn(self: *anyopaque, value: EmailAttachmentDownloadState) callconv(.winapi) HRESULT,
        get_EstimatedDownloadSizeInBytes: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_EstimatedDownloadSizeInBytes: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_IsFromBaseMessage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInline: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MimeType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MimeType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailAttachmentFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), fileName: HSTRING, data: *IRandomAccessStreamReference) core.HResult!*EmailAttachment {
        var _r: *EmailAttachment = undefined;
        const _c = self.vtable.Create(@ptrCast(self), fileName, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailAttachmentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "796eac46-ed56-4979-8708-abb8bc854b7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, fileName: HSTRING, data: *IRandomAccessStreamReference, _r: **EmailAttachment) callconv(.winapi) HRESULT,
    };
};
pub const IEmailAttachmentFactory2 = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), fileName: HSTRING, data: *IRandomAccessStreamReference, mimeType: HSTRING) core.HResult!*EmailAttachment {
        var _r: *EmailAttachment = undefined;
        const _c = self.vtable.Create(@ptrCast(self), fileName, data, mimeType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailAttachmentFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23259435-51f9-427d-adcd-241023c8cfb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, fileName: HSTRING, data: *IRandomAccessStreamReference, mimeType: HSTRING, _r: **EmailAttachment) callconv(.winapi) HRESULT,
    };
};
pub const IEmailConversation = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlagState(self: *@This()) core.HResult!EmailFlagState {
        var _r: EmailFlagState = undefined;
        const _c = self.vtable.get_FlagState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasAttachment(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasAttachment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportance(self: *@This()) core.HResult!EmailImportance {
        var _r: EmailImportance = undefined;
        const _c = self.vtable.get_Importance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastEmailResponseKind(self: *@This()) core.HResult!EmailMessageResponseKind {
        var _r: EmailMessageResponseKind = undefined;
        const _c = self.vtable.get_LastEmailResponseKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MessageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMostRecentMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MostRecentMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMostRecentMessageTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_MostRecentMessageTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreview(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Preview(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLatestSender(self: *@This()) core.HResult!*EmailRecipient {
        var _r: *EmailRecipient = undefined;
        const _c = self.vtable.get_LatestSender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnreadMessageCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UnreadMessageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindMessagesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMessage)) {
        var _r: *IAsyncOperation(IVectorView(EmailMessage)) = undefined;
        const _c = self.vtable.FindMessagesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindMessagesAsync(self: *@This(), count: u32) core.HResult!*IAsyncOperation(IVectorView(EmailMessage)) {
        var _r: *IAsyncOperation(IVectorView(EmailMessage)) = undefined;
        const _c = self.vtable.FindMessagesAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailConversation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da18c248-a0bc-4349-902d-90f66389f51b";
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
        get_MailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FlagState: *const fn(self: *anyopaque, _r: *EmailFlagState) callconv(.winapi) HRESULT,
        get_HasAttachment: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Importance: *const fn(self: *anyopaque, _r: *EmailImportance) callconv(.winapi) HRESULT,
        get_LastEmailResponseKind: *const fn(self: *anyopaque, _r: *EmailMessageResponseKind) callconv(.winapi) HRESULT,
        get_MessageCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MostRecentMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MostRecentMessageTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Preview: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LatestSender: *const fn(self: *anyopaque, _r: **EmailRecipient) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UnreadMessageCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        FindMessagesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EmailMessage))) callconv(.winapi) HRESULT,
        FindMessagesAsync: *const fn(self: *anyopaque, count: u32, _r: **IAsyncOperation(IVectorView(EmailMessage))) callconv(.winapi) HRESULT,
    };
};
pub const IEmailConversationBatch = extern struct {
    vtable: *const VTable,
    pub fn getConversations(self: *@This()) core.HResult!*IVectorView(EmailConversation) {
        var _r: *IVectorView(EmailConversation) = undefined;
        const _c = self.vtable.get_Conversations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!EmailBatchStatus {
        var _r: EmailBatchStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailConversationBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8c1ab81-01c5-432a-9df1-fe85d98a279a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Conversations: *const fn(self: *anyopaque, _r: **IVectorView(EmailConversation)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *EmailBatchStatus) callconv(.winapi) HRESULT,
    };
};
pub const IEmailConversationReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailConversationBatch) {
        var _r: *IAsyncOperation(EmailConversationBatch) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailConversationReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4630f82-2875-44c8-9b8c-85beb3a3c653";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(EmailConversationBatch)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailFolder = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ParentFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSyncEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSyncEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSyncEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastSuccessfulSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastSuccessfulSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!EmailSpecialFolderKind {
        var _r: EmailSpecialFolderKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFolderAsync(self: *@This(), name: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        var _r: *IAsyncOperation(EmailFolder) = undefined;
        const _c = self.vtable.CreateFolderAsync(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindChildFoldersAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailFolder)) {
        var _r: *IAsyncOperation(IVectorView(EmailFolder)) = undefined;
        const _c = self.vtable.FindChildFoldersAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        var _r: *IAsyncOperation(EmailMessage) = undefined;
        const _c = self.vtable.GetMessageAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageCountsAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailItemCounts) {
        var _r: *IAsyncOperation(EmailItemCounts) = undefined;
        const _c = self.vtable.GetMessageCountsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveAsync(self: *@This(), newParentFolder: *EmailFolder) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryMoveAsync(@ptrCast(self), newParentFolder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveAsyncWithNewFolderName(self: *@This(), newParentFolder: *EmailFolder, newFolderName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryMoveAsyncWithNewFolderName(@ptrCast(self), newParentFolder, newFolderName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySaveAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailFolder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a24f7771-996c-4864-b1ba-ed1240e57d11";
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
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ParentFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsSyncEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSyncEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LastSuccessfulSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_LastSuccessfulSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *EmailSpecialFolderKind) callconv(.winapi) HRESULT,
        CreateFolderAsync: *const fn(self: *anyopaque, name: HSTRING, _r: **IAsyncOperation(EmailFolder)) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FindChildFoldersAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EmailFolder))) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetMessageAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailMessage)) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        GetMessageCountsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(EmailItemCounts)) callconv(.winapi) HRESULT,
        TryMoveAsync: *const fn(self: *anyopaque, newParentFolder: *EmailFolder, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryMoveAsyncWithNewFolderName: *const fn(self: *anyopaque, newParentFolder: *EmailFolder, newFolderName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySaveAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SaveMessageAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailIrmInfo = extern struct {
    vtable: *const VTable,
    pub fn getCanEdit(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanEdit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanEdit(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanEdit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanExtractData(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanExtractData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanExtractData(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanExtractData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanForward(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanForward(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanForward(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanForward(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanModifyRecipientsOnResponse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanModifyRecipientsOnResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanModifyRecipientsOnResponse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanModifyRecipientsOnResponse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanPrintData(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanPrintData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanPrintData(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanPrintData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanRemoveIrmOnResponse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRemoveIrmOnResponse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanRemoveIrmOnResponse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanRemoveIrmOnResponse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanReply(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanReply(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanReply(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanReply(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanReplyAll(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanReplyAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanReplyAll(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanReplyAll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationDate(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_ExpirationDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsIrmOriginator(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIrmOriginator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsIrmOriginator(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsIrmOriginator(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsProgramaticAccessAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProgramaticAccessAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsProgramaticAccessAllowed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsProgramaticAccessAllowed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTemplate(self: *@This()) core.HResult!*EmailIrmTemplate {
        var _r: *EmailIrmTemplate = undefined;
        const _c = self.vtable.get_Template(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTemplate(self: *@This(), value: *EmailIrmTemplate) core.HResult!void {
        const _c = self.vtable.put_Template(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailIrmInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90f52193-b1a0-4ebd-a6b6-ddca55606e0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanEdit: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanEdit: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanExtractData: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanExtractData: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanForward: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanForward: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanModifyRecipientsOnResponse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanModifyRecipientsOnResponse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanPrintData: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanPrintData: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanRemoveIrmOnResponse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanRemoveIrmOnResponse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanReply: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanReply: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanReplyAll: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanReplyAll: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_ExpirationDate: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_IsIrmOriginator: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsIrmOriginator: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsProgramaticAccessAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsProgramaticAccessAllowed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Template: *const fn(self: *anyopaque, _r: **EmailIrmTemplate) callconv(.winapi) HRESULT,
        put_Template: *const fn(self: *anyopaque, value: *EmailIrmTemplate) callconv(.winapi) HRESULT,
    };
};
pub const IEmailIrmInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), expiration: DateTime, irmTemplate: *EmailIrmTemplate) core.HResult!*EmailIrmInfo {
        var _r: *EmailIrmInfo = undefined;
        const _c = self.vtable.Create(@ptrCast(self), expiration, irmTemplate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailIrmInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "314bb18c-e3e6-4d7b-be8d-91a96311b01b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, expiration: DateTime, irmTemplate: *EmailIrmTemplate, _r: **EmailIrmInfo) callconv(.winapi) HRESULT,
    };
};
pub const IEmailIrmTemplate = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailIrmTemplate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f327758d-546d-4bea-a963-54a38b2cc016";
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
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailIrmTemplateFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), id: HSTRING, name: HSTRING, description: HSTRING) core.HResult!*EmailIrmTemplate {
        var _r: *EmailIrmTemplate = undefined;
        const _c = self.vtable.Create(@ptrCast(self), id, name, description, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailIrmTemplateFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3da31876-8738-4418-b9cb-471b936fe71e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, id: HSTRING, name: HSTRING, description: HSTRING, _r: **EmailIrmTemplate) callconv(.winapi) HRESULT,
    };
};
pub const IEmailItemCounts = extern struct {
    vtable: *const VTable,
    pub fn getFlagged(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Flagged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportant(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Important(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTotal(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Total(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnread(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Unread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailItemCounts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bd13321-fec8-4bab-83ba-0baf3c1f6cbd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Flagged: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Important: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Total: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Unread: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailbox = extern struct {
    vtable: *const VTable,
    pub fn getCapabilities(self: *@This()) core.HResult!*EmailMailboxCapabilities {
        var _r: *EmailMailboxCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*EmailMailboxChangeTracker {
        var _r: *EmailMailboxChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOwnedByCurrentApp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOwnedByCurrentApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDataEncryptedUnderLock(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDataEncryptedUnderLock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMailAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MailAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMailAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MailAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMailAddressAliases(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_MailAddressAliases(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!EmailMailboxOtherAppReadAccess {
        var _r: EmailMailboxOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: EmailMailboxOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!EmailMailboxOtherAppWriteAccess {
        var _r: EmailMailboxOtherAppWriteAccess = undefined;
        const _c = self.vtable.get_OtherAppWriteAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: EmailMailboxOtherAppWriteAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppWriteAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPolicies(self: *@This()) core.HResult!*EmailMailboxPolicies {
        var _r: *EmailMailboxPolicies = undefined;
        const _c = self.vtable.get_Policies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*EmailMailboxSyncManager {
        var _r: *EmailMailboxSyncManager = undefined;
        const _c = self.vtable.get_SyncManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailConversation) {
        var _r: *IAsyncOperation(EmailConversation) = undefined;
        const _c = self.vtable.GetConversationAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        var _r: *IAsyncOperation(EmailFolder) = undefined;
        const _c = self.vtable.GetFolderAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        var _r: *IAsyncOperation(EmailMessage) = undefined;
        const _c = self.vtable.GetMessageAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSpecialFolderAsync(self: *@This(), folderType: EmailSpecialFolderKind) core.HResult!*IAsyncOperation(EmailFolder) {
        var _r: *IAsyncOperation(EmailFolder) = undefined;
        const _c = self.vtable.GetSpecialFolderAsync(@ptrCast(self), folderType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkMessageAsSeenAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessageAsSeenAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkFolderAsSeenAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkFolderAsSeenAsync(@ptrCast(self), folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkMessageReadAsync(self: *@This(), messageId: HSTRING, isRead: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessageReadAsync(@ptrCast(self), messageId, isRead, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeMessageFlagStateAsync(self: *@This(), messageId: HSTRING, flagState: EmailFlagState) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ChangeMessageFlagStateAsync(@ptrCast(self), messageId, flagState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveMessageAsync(self: *@This(), messageId: HSTRING, newParentFolderId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryMoveMessageAsync(@ptrCast(self), messageId, newParentFolderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveFolderAsync(self: *@This(), folderId: HSTRING, newParentFolderId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryMoveFolderAsync(@ptrCast(self), folderId, newParentFolderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveFolderAsyncWithNewParentFolderIdWithNewFolderName(self: *@This(), folderId: HSTRING, newParentFolderId: HSTRING, newFolderName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryMoveFolderAsyncWithNewParentFolderIdWithNewFolderName(@ptrCast(self), folderId, newParentFolderId, newFolderName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteMessageAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteMessageAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkFolderSyncEnabledAsync(self: *@This(), folderId: HSTRING, isSyncEnabled: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkFolderSyncEnabledAsync(@ptrCast(self), folderId, isSyncEnabled, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveDraftAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveDraftAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadMessageAsync(self: *@This(), messageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DownloadMessageAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadAttachmentAsync(self: *@This(), attachmentId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DownloadAttachmentAsync(@ptrCast(self), attachmentId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateResponseMessageAsync(self: *@This(), messageId: HSTRING, responseType: EmailMessageResponseKind, subject: HSTRING, responseHeaderType: EmailMessageBodyKind, responseHeader: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        var _r: *IAsyncOperation(EmailMessage) = undefined;
        const _c = self.vtable.CreateResponseMessageAsync(@ptrCast(self), messageId, responseType, subject, responseHeaderType, responseHeader, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateMeetingResponseAsync(self: *@This(), meeting: *EmailMessage, response: EmailMeetingResponseType, subject: HSTRING, comment: HSTRING, sendUpdate: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUpdateMeetingResponseAsync(@ptrCast(self), meeting, response, subject, comment, sendUpdate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryForwardMeetingAsync(self: *@This(), meeting: *EmailMessage, recipients: *IIterable(EmailRecipient), subject: HSTRING, forwardHeaderType: EmailMessageBodyKind, forwardHeader: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryForwardMeetingAsync(@ptrCast(self), meeting, recipients, subject, forwardHeaderType, forwardHeader, comment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryProposeNewTimeForMeetingAsync(self: *@This(), meeting: *EmailMessage, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryProposeNewTimeForMeetingAsync(@ptrCast(self), meeting, newStartTime, newDuration, subject, comment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMailboxChanged(self: *@This(), pHandler: *TypedEventHandler(EmailMailbox,EmailMailboxChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MailboxChanged(@ptrCast(self), pHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMailboxChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MailboxChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendMessageAsyncWithSmartSend(self: *@This(), message: *EmailMessage, smartSend: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendMessageAsyncWithSmartSend(@ptrCast(self), message, smartSend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetAutoReplySettingsAsync(self: *@This(), autoReplySettings: *EmailMailboxAutoReplySettings) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetAutoReplySettingsAsync(@ptrCast(self), autoReplySettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetAutoReplySettingsAsync(self: *@This(), requestedFormat: EmailMailboxAutoReplyMessageResponseKind) core.HResult!*IAsyncOperation(EmailMailboxAutoReplySettings) {
        var _r: *IAsyncOperation(EmailMailboxAutoReplySettings) = undefined;
        const _c = self.vtable.TryGetAutoReplySettingsAsync(@ptrCast(self), requestedFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailbox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8790649-cf5b-411b-80b1-4a6a1484ce25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **EmailMailboxCapabilities) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **EmailMailboxChangeTracker) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsOwnedByCurrentApp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDataEncryptedUnderLock: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MailAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MailAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MailAddressAliases: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *EmailMailboxOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: EmailMailboxOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_OtherAppWriteAccess: *const fn(self: *anyopaque, _r: *EmailMailboxOtherAppWriteAccess) callconv(.winapi) HRESULT,
        put_OtherAppWriteAccess: *const fn(self: *anyopaque, value: EmailMailboxOtherAppWriteAccess) callconv(.winapi) HRESULT,
        get_Policies: *const fn(self: *anyopaque, _r: **EmailMailboxPolicies) callconv(.winapi) HRESULT,
        get_SourceDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SyncManager: *const fn(self: *anyopaque, _r: **EmailMailboxSyncManager) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetConversationAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailConversation)) callconv(.winapi) HRESULT,
        GetFolderAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailFolder)) callconv(.winapi) HRESULT,
        GetMessageAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailMessage)) callconv(.winapi) HRESULT,
        GetSpecialFolderAsync: *const fn(self: *anyopaque, folderType: EmailSpecialFolderKind, _r: **IAsyncOperation(EmailFolder)) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkMessageAsSeenAsync: *const fn(self: *anyopaque, messageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkFolderAsSeenAsync: *const fn(self: *anyopaque, folderId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkMessageReadAsync: *const fn(self: *anyopaque, messageId: HSTRING, isRead: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ChangeMessageFlagStateAsync: *const fn(self: *anyopaque, messageId: HSTRING, flagState: EmailFlagState, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TryMoveMessageAsync: *const fn(self: *anyopaque, messageId: HSTRING, newParentFolderId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryMoveFolderAsync: *const fn(self: *anyopaque, folderId: HSTRING, newParentFolderId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryMoveFolderAsyncWithNewParentFolderIdWithNewFolderName: *const fn(self: *anyopaque, folderId: HSTRING, newParentFolderId: HSTRING, newFolderName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DeleteMessageAsync: *const fn(self: *anyopaque, messageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkFolderSyncEnabledAsync: *const fn(self: *anyopaque, folderId: HSTRING, isSyncEnabled: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SendMessageAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveDraftAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DownloadMessageAsync: *const fn(self: *anyopaque, messageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DownloadAttachmentAsync: *const fn(self: *anyopaque, attachmentId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CreateResponseMessageAsync: *const fn(self: *anyopaque, messageId: HSTRING, responseType: EmailMessageResponseKind, subject: HSTRING, responseHeaderType: EmailMessageBodyKind, responseHeader: HSTRING, _r: **IAsyncOperation(EmailMessage)) callconv(.winapi) HRESULT,
        TryUpdateMeetingResponseAsync: *const fn(self: *anyopaque, meeting: *EmailMessage, response: EmailMeetingResponseType, subject: HSTRING, comment: HSTRING, sendUpdate: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryForwardMeetingAsync: *const fn(self: *anyopaque, meeting: *EmailMessage, recipients: *IIterable(EmailRecipient), subject: HSTRING, forwardHeaderType: EmailMessageBodyKind, forwardHeader: HSTRING, comment: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryProposeNewTimeForMeetingAsync: *const fn(self: *anyopaque, meeting: *EmailMessage, newStartTime: DateTime, newDuration: TimeSpan, subject: HSTRING, comment: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_MailboxChanged: *const fn(self: *anyopaque, pHandler: *TypedEventHandler(EmailMailbox,EmailMailboxChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MailboxChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SendMessageAsyncWithSmartSend: *const fn(self: *anyopaque, message: *EmailMessage, smartSend: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TrySetAutoReplySettingsAsync: *const fn(self: *anyopaque, autoReplySettings: *EmailMailboxAutoReplySettings, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryGetAutoReplySettingsAsync: *const fn(self: *anyopaque, requestedFormat: EmailMailboxAutoReplyMessageResponseKind, _r: **IAsyncOperation(EmailMailboxAutoReplySettings)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailbox2 = extern struct {
    vtable: *const VTable,
    pub fn getLinkedMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LinkedMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailbox2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14f8e404-6ca2-4ab2-9241-79cd7bf46346";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LinkedMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NetworkId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailbox3 = extern struct {
    vtable: *const VTable,
    pub fn ResolveRecipientsAsync(self: *@This(), recipients: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(EmailRecipientResolutionResult)) {
        var _r: *IAsyncOperation(IVectorView(EmailRecipientResolutionResult)) = undefined;
        const _c = self.vtable.ResolveRecipientsAsync(@ptrCast(self), recipients, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ValidateCertificatesAsync(self: *@This(), certificates: *IIterable(Certificate)) core.HResult!*IAsyncOperation(IVectorView(EmailCertificateValidationStatus)) {
        var _r: *IAsyncOperation(IVectorView(EmailCertificateValidationStatus)) = undefined;
        const _c = self.vtable.ValidateCertificatesAsync(@ptrCast(self), certificates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEmptyFolderAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxEmptyFolderStatus) {
        var _r: *IAsyncOperation(EmailMailboxEmptyFolderStatus) = undefined;
        const _c = self.vtable.TryEmptyFolderAsync(@ptrCast(self), folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateFolderAsync(self: *@This(), parentFolderId: HSTRING, name: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxCreateFolderResult) {
        var _r: *IAsyncOperation(EmailMailboxCreateFolderResult) = undefined;
        const _c = self.vtable.TryCreateFolderAsync(@ptrCast(self), parentFolderId, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDeleteFolderAsync(self: *@This(), folderId: HSTRING) core.HResult!*IAsyncOperation(EmailMailboxDeleteFolderStatus) {
        var _r: *IAsyncOperation(EmailMailboxDeleteFolderStatus) = undefined;
        const _c = self.vtable.TryDeleteFolderAsync(@ptrCast(self), folderId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailbox3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3da5897b-458b-408a-8e37-ac8b05d8af56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ResolveRecipientsAsync: *const fn(self: *anyopaque, recipients: *IIterable(HSTRING), _r: **IAsyncOperation(IVectorView(EmailRecipientResolutionResult))) callconv(.winapi) HRESULT,
        ValidateCertificatesAsync: *const fn(self: *anyopaque, certificates: *IIterable(Certificate), _r: **IAsyncOperation(IVectorView(EmailCertificateValidationStatus))) callconv(.winapi) HRESULT,
        TryEmptyFolderAsync: *const fn(self: *anyopaque, folderId: HSTRING, _r: **IAsyncOperation(EmailMailboxEmptyFolderStatus)) callconv(.winapi) HRESULT,
        TryCreateFolderAsync: *const fn(self: *anyopaque, parentFolderId: HSTRING, name: HSTRING, _r: **IAsyncOperation(EmailMailboxCreateFolderResult)) callconv(.winapi) HRESULT,
        TryDeleteFolderAsync: *const fn(self: *anyopaque, folderId: HSTRING, _r: **IAsyncOperation(EmailMailboxDeleteFolderStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailbox4 = extern struct {
    vtable: *const VTable,
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RegisterSyncManagerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailbox4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d1f301b-f222-48a7-b7b6-716356cd26a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterSyncManagerAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailbox5 = extern struct {
    vtable: *const VTable,
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*EmailMailboxChangeTracker {
        var _r: *EmailMailboxChangeTracker = undefined;
        const _c = self.vtable.GetChangeTracker(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailbox5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39967087-0092-49be-bd0e-5d4dc9d96d90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChangeTracker: *const fn(self: *anyopaque, identity: HSTRING, _r: **EmailMailboxChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxAction = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!EmailMailboxActionKind {
        var _r: EmailMailboxActionKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac9889fa-21fa-4927-9210-d410582fdf3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *EmailMailboxActionKind) callconv(.winapi) HRESULT,
        get_ChangeNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxAutoReply = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponse(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResponse(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Response(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxAutoReply";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e223254c-8ab4-485b-b31f-04d15476bd59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Response: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxAutoReplySettings = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponseKind(self: *@This()) core.HResult!EmailMailboxAutoReplyMessageResponseKind {
        var _r: EmailMailboxAutoReplyMessageResponseKind = undefined;
        const _c = self.vtable.get_ResponseKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResponseKind(self: *@This(), value: EmailMailboxAutoReplyMessageResponseKind) core.HResult!void {
        const _c = self.vtable.put_ResponseKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_EndTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        var _r: *EmailMailboxAutoReply = undefined;
        const _c = self.vtable.get_InternalReply(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnownExternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        var _r: *EmailMailboxAutoReply = undefined;
        const _c = self.vtable.get_KnownExternalReply(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnknownExternalReply(self: *@This()) core.HResult!*EmailMailboxAutoReply {
        var _r: *EmailMailboxAutoReply = undefined;
        const _c = self.vtable.get_UnknownExternalReply(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxAutoReplySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a87a9fa8-0ac6-4b77-ba77-a6b99e9a27b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ResponseKind: *const fn(self: *anyopaque, _r: *EmailMailboxAutoReplyMessageResponseKind) callconv(.winapi) HRESULT,
        put_ResponseKind: *const fn(self: *anyopaque, value: EmailMailboxAutoReplyMessageResponseKind) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_EndTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_InternalReply: *const fn(self: *anyopaque, _r: **EmailMailboxAutoReply) callconv(.winapi) HRESULT,
        get_KnownExternalReply: *const fn(self: *anyopaque, _r: **EmailMailboxAutoReply) callconv(.winapi) HRESULT,
        get_UnknownExternalReply: *const fn(self: *anyopaque, _r: **EmailMailboxAutoReply) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getCanForwardMeetings(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanForwardMeetings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanGetAndSetExternalAutoReplies(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanGetAndSetExternalAutoReplies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanGetAndSetInternalAutoReplies(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanGetAndSetInternalAutoReplies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanUpdateMeetingResponses(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanUpdateMeetingResponses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanServerSearchFolders(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanServerSearchFolders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanServerSearchMailbox(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanServerSearchMailbox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanProposeNewTimeForMeetings(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanProposeNewTimeForMeetings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSmartSend(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSmartSend(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eedec3a6-89db-4305-82c4-439e0a33da11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanForwardMeetings: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanGetAndSetExternalAutoReplies: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanGetAndSetInternalAutoReplies: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanUpdateMeetingResponses: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanServerSearchFolders: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanServerSearchMailbox: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanProposeNewTimeForMeetings: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanSmartSend: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getCanResolveRecipients(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanResolveRecipients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanValidateCertificates(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanValidateCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanEmptyFolder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanEmptyFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanCreateFolder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCreateFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDeleteFolder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDeleteFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMoveFolder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMoveFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69723ee4-2f21-4cbc-88ab-2e7602a4806b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanResolveRecipients: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanValidateCertificates: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanEmptyFolder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanCreateFolder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanDeleteFolder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanMoveFolder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCapabilities3 = extern struct {
    vtable: *const VTable,
    pub fn putCanForwardMeetings(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanForwardMeetings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanGetAndSetExternalAutoReplies(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanGetAndSetExternalAutoReplies(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanGetAndSetInternalAutoReplies(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanGetAndSetInternalAutoReplies(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanUpdateMeetingResponses(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanUpdateMeetingResponses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanServerSearchFolders(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanServerSearchFolders(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanServerSearchMailbox(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanServerSearchMailbox(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanProposeNewTimeForMeetings(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanProposeNewTimeForMeetings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanSmartSend(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanSmartSend(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanResolveRecipients(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanResolveRecipients(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanValidateCertificates(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanValidateCertificates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanEmptyFolder(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanEmptyFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanCreateFolder(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanCreateFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanDeleteFolder(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanDeleteFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putCanMoveFolder(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanMoveFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxCapabilities3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f690e944-56f2-45aa-872c-0ce9f3db0b5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_CanForwardMeetings: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanGetAndSetExternalAutoReplies: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanGetAndSetInternalAutoReplies: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanUpdateMeetingResponses: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanServerSearchFolders: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanServerSearchMailbox: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanProposeNewTimeForMeetings: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanSmartSend: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanResolveRecipients: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanValidateCertificates: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanEmptyFolder: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanCreateFolder: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanDeleteFolder: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_CanMoveFolder: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxChange = extern struct {
    vtable: *const VTable,
    pub fn getChangeType(self: *@This()) core.HResult!EmailMailboxChangeType {
        var _r: EmailMailboxChangeType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMailboxActions(self: *@This()) core.HResult!*IVector(EmailMailboxAction) {
        var _r: *IVector(EmailMailboxAction) = undefined;
        const _c = self.vtable.get_MailboxActions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*EmailMessage {
        var _r: *EmailMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolder(self: *@This()) core.HResult!*EmailFolder {
        var _r: *EmailFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61edf54b-11ef-400c-adde-8cde65c85e66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *EmailMailboxChangeType) callconv(.winapi) HRESULT,
        get_MailboxActions: *const fn(self: *anyopaque, _r: **IVector(EmailMailboxAction)) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **EmailMessage) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **EmailFolder) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxChangeReader = extern struct {
    vtable: *const VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const _c = self.vtable.AcceptChanges(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAcknowledge: *EmailMailboxChange) core.HResult!void {
        const _c = self.vtable.AcceptChangesThrough(@ptrCast(self), lastChangeToAcknowledge);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailboxChange)) {
        var _r: *IAsyncOperation(IVectorView(EmailMailboxChange)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdbd0ebb-c53d-4331-97be-be75a2146a75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AcceptChanges: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        AcceptChangesThrough: *const fn(self: *anyopaque, lastChangeToAcknowledge: *EmailMailboxChange) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EmailMailboxChange))) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxChangeTracker = extern struct {
    vtable: *const VTable,
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTracking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*EmailMailboxChangeReader {
        var _r: *EmailMailboxChangeReader = undefined;
        const _c = self.vtable.GetChangeReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ae48638-5166-42b7-8882-fd21c92bdd4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTracking: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetChangeReader: *const fn(self: *anyopaque, _r: **EmailMailboxChangeReader) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxChangedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "779a74c1-97c5-4b54-b30d-306232623e6d";
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
pub const IEmailMailboxChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*EmailMailboxChangedDeferral {
        var _r: *EmailMailboxChangedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3cfd5f6e-01d4-4e4a-a44c-b22dd42ec207";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **EmailMailboxChangedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCreateFolderResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailMailboxCreateFolderStatus {
        var _r: EmailMailboxCreateFolderStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolder(self: *@This()) core.HResult!*EmailFolder {
        var _r: *EmailFolder = undefined;
        const _c = self.vtable.get_Folder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxCreateFolderResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b228557f-2885-4998-b595-8a2d374ce950";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *EmailMailboxCreateFolderStatus) callconv(.winapi) HRESULT,
        get_Folder: *const fn(self: *anyopaque, _r: **EmailFolder) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxPolicies = extern struct {
    vtable: *const VTable,
    pub fn getAllowedSmimeEncryptionAlgorithmNegotiation(self: *@This()) core.HResult!EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation {
        var _r: EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation = undefined;
        const _c = self.vtable.get_AllowedSmimeEncryptionAlgorithmNegotiation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowSmimeSoftCertificates(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowSmimeSoftCertificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequiredSmimeEncryptionAlgorithm(self: *@This()) core.HResult!*IReference(EmailMailboxSmimeEncryptionAlgorithm) {
        var _r: *IReference(EmailMailboxSmimeEncryptionAlgorithm) = undefined;
        const _c = self.vtable.get_RequiredSmimeEncryptionAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequiredSmimeSigningAlgorithm(self: *@This()) core.HResult!*IReference(EmailMailboxSmimeSigningAlgorithm) {
        var _r: *IReference(EmailMailboxSmimeSigningAlgorithm) = undefined;
        const _c = self.vtable.get_RequiredSmimeSigningAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxPolicies";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f3345c5-1c3b-4dc7-b410-6373783e545d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowedSmimeEncryptionAlgorithmNegotiation: *const fn(self: *anyopaque, _r: *EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation) callconv(.winapi) HRESULT,
        get_AllowSmimeSoftCertificates: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RequiredSmimeEncryptionAlgorithm: *const fn(self: *anyopaque, _r: **IReference(EmailMailboxSmimeEncryptionAlgorithm)) callconv(.winapi) HRESULT,
        get_RequiredSmimeSigningAlgorithm: *const fn(self: *anyopaque, _r: **IReference(EmailMailboxSmimeSigningAlgorithm)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxPolicies2 = extern struct {
    vtable: *const VTable,
    pub fn getMustEncryptSmimeMessages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MustEncryptSmimeMessages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMustSignSmimeMessages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MustSignSmimeMessages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxPolicies2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bab58afb-a14b-497c-a8e2-55eac29cc4b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MustEncryptSmimeMessages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MustSignSmimeMessages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxPolicies3 = extern struct {
    vtable: *const VTable,
    pub fn putAllowedSmimeEncryptionAlgorithmNegotiation(self: *@This(), value: EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation) core.HResult!void {
        const _c = self.vtable.put_AllowedSmimeEncryptionAlgorithmNegotiation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putAllowSmimeSoftCertificates(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowSmimeSoftCertificates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putRequiredSmimeEncryptionAlgorithm(self: *@This(), value: *IReference(EmailMailboxSmimeEncryptionAlgorithm)) core.HResult!void {
        const _c = self.vtable.put_RequiredSmimeEncryptionAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putRequiredSmimeSigningAlgorithm(self: *@This(), value: *IReference(EmailMailboxSmimeSigningAlgorithm)) core.HResult!void {
        const _c = self.vtable.put_RequiredSmimeSigningAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putMustEncryptSmimeMessages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MustEncryptSmimeMessages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putMustSignSmimeMessages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MustSignSmimeMessages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxPolicies3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdd4a01f-4867-414a-81a2-803919c44191";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AllowedSmimeEncryptionAlgorithmNegotiation: *const fn(self: *anyopaque, value: EmailMailboxAllowedSmimeEncryptionAlgorithmNegotiation) callconv(.winapi) HRESULT,
        put_AllowSmimeSoftCertificates: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_RequiredSmimeEncryptionAlgorithm: *const fn(self: *anyopaque, value: *IReference(EmailMailboxSmimeEncryptionAlgorithm)) callconv(.winapi) HRESULT,
        put_RequiredSmimeSigningAlgorithm: *const fn(self: *anyopaque, value: *IReference(EmailMailboxSmimeSigningAlgorithm)) callconv(.winapi) HRESULT,
        put_MustEncryptSmimeMessages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_MustSignSmimeMessages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSyncManager = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailMailboxSyncStatus {
        var _r: EmailMailboxSyncStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastSuccessfulSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastAttemptedSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SyncAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(EmailMailboxSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "517ac55a-3591-4b5d-85bc-c71dde862263";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *EmailMailboxSyncStatus) callconv(.winapi) HRESULT,
        get_LastSuccessfulSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_LastAttemptedSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        SyncAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_SyncStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailMailboxSyncManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSyncManager2 = extern struct {
    vtable: *const VTable,
    pub fn putStatus(self: *@This(), value: EmailMailboxSyncStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastSuccessfulSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LastAttemptedSyncTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMailboxSyncManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd8dc97e-95c1-4f89-81b7-e6aecb6695fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: EmailMailboxSyncStatus) callconv(.winapi) HRESULT,
        put_LastSuccessfulSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        put_LastAttemptedSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IEmailManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn ShowComposeNewEmailAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowComposeNewEmailAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This(), accessType: EmailStoreAccessType) core.HResult!*IAsyncOperation(EmailStore) {
        var _r: *IAsyncOperation(EmailStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f773de9f-3ca5-4b0f-90c1-156e40174ce5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowComposeNewEmailAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: EmailStoreAccessType, _r: **IAsyncOperation(EmailStore)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IEmailManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowComposeNewEmailAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowComposeNewEmailAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5128654-55c5-4890-a824-216c2618ce7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowComposeNewEmailAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: EmailStoreAccessType) core.HResult!*IAsyncOperation(EmailStore) {
        var _r: *IAsyncOperation(EmailStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac052da3-b194-425d-b6d9-d0f04135eda2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: EmailStoreAccessType, _r: **IAsyncOperation(EmailStore)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*EmailManagerForUser {
        var _r: *EmailManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a722395-843e-4945-b3aa-349e07a362c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **EmailManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMeetingInfo = extern struct {
    vtable: *const VTable,
    pub fn getAllowNewTimeProposal(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowNewTimeProposal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowNewTimeProposal(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowNewTimeProposal(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppointmentRoamingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppointmentRoamingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppointmentRoamingId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AppointmentRoamingId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppointmentOriginalStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_AppointmentOriginalStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppointmentOriginalStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_AppointmentOriginalStartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAllDay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAllDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAllDay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAllDay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsResponseRequested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResponseRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsResponseRequested(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsResponseRequested(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProposedStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ProposedStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProposedStartTime(self: *@This(), proposedStartTime: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ProposedStartTime(@ptrCast(self), proposedStartTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProposedDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_ProposedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProposedDuration(self: *@This(), duration: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_ProposedDuration(@ptrCast(self), duration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecurrenceStartTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_RecurrenceStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecurrenceStartTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_RecurrenceStartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecurrence(self: *@This()) core.HResult!*AppointmentRecurrence {
        var _r: *AppointmentRecurrence = undefined;
        const _c = self.vtable.get_Recurrence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecurrence(self: *@This(), value: *AppointmentRecurrence) core.HResult!void {
        const _c = self.vtable.put_Recurrence(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteChangeNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_RemoteChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteChangeNumber(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_RemoteChangeNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMeetingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31c03fa9-7933-415f-a275-d165ba07026b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowNewTimeProposal: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowNewTimeProposal: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AppointmentRoamingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AppointmentRoamingId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AppointmentOriginalStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_AppointmentOriginalStartTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_IsAllDay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAllDay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsResponseRequested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsResponseRequested: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ProposedStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ProposedStartTime: *const fn(self: *anyopaque, proposedStartTime: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ProposedDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_ProposedDuration: *const fn(self: *anyopaque, duration: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_RecurrenceStartTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_RecurrenceStartTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Recurrence: *const fn(self: *anyopaque, _r: **AppointmentRecurrence) callconv(.winapi) HRESULT,
        put_Recurrence: *const fn(self: *anyopaque, value: *AppointmentRecurrence) callconv(.winapi) HRESULT,
        get_RemoteChangeNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_RemoteChangeNumber: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMeetingInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getIsReportedOutOfDateByServer(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReportedOutOfDateByServer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMeetingInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e59386d-b0d9-4fe5-867c-e31ed2b588b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReportedOutOfDateByServer: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessage = extern struct {
    vtable: *const VTable,
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subject(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Body(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Body(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTo(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        var _r: *IVector(EmailRecipient) = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCC(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        var _r: *IVector(EmailRecipient) = undefined;
        const _c = self.vtable.get_CC(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBcc(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        var _r: *IVector(EmailRecipient) = undefined;
        const _c = self.vtable.get_Bcc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttachments(self: *@This()) core.HResult!*IVector(EmailAttachment) {
        var _r: *IVector(EmailAttachment) = undefined;
        const _c = self.vtable.get_Attachments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c6d948d-80b5-48f8-b0b1-e04e430f44e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Body: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: **IVector(EmailRecipient)) callconv(.winapi) HRESULT,
        get_CC: *const fn(self: *anyopaque, _r: **IVector(EmailRecipient)) callconv(.winapi) HRESULT,
        get_Bcc: *const fn(self: *anyopaque, _r: **IVector(EmailRecipient)) callconv(.winapi) HRESULT,
        get_Attachments: *const fn(self: *anyopaque, _r: **IVector(EmailAttachment)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessage2 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConversationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConversationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowInternetImages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowInternetImages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowInternetImages(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowInternetImages(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChangeNumber(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ChangeNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloadState(self: *@This()) core.HResult!EmailMessageDownloadState {
        var _r: EmailMessageDownloadState = undefined;
        const _c = self.vtable.get_DownloadState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDownloadState(self: *@This(), value: EmailMessageDownloadState) core.HResult!void {
        const _c = self.vtable.put_DownloadState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEstimatedDownloadSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_EstimatedDownloadSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEstimatedDownloadSizeInBytes(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_EstimatedDownloadSizeInBytes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFlagState(self: *@This()) core.HResult!EmailFlagState {
        var _r: EmailFlagState = undefined;
        const _c = self.vtable.get_FlagState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlagState(self: *@This(), value: EmailFlagState) core.HResult!void {
        const _c = self.vtable.put_FlagState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasPartialBodies(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasPartialBodies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportance(self: *@This()) core.HResult!EmailImportance {
        var _r: EmailImportance = undefined;
        const _c = self.vtable.get_Importance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImportance(self: *@This(), value: EmailImportance) core.HResult!void {
        const _c = self.vtable.put_Importance(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInResponseToMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InResponseToMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIrmInfo(self: *@This()) core.HResult!*EmailIrmInfo {
        var _r: *EmailIrmInfo = undefined;
        const _c = self.vtable.get_IrmInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIrmInfo(self: *@This(), value: *EmailIrmInfo) core.HResult!void {
        const _c = self.vtable.put_IrmInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDraftMessage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDraftMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRead(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRead(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSeen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSeen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSeen(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSeen(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsServerSearchMessage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsServerSearchMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSmartSendable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSmartSendable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageClass(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MessageClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessageClass(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MessageClass(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalizedSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NormalizedSubject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOriginalCodePage(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_OriginalCodePage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOriginalCodePage(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_OriginalCodePage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreview(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Preview(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreview(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Preview(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastResponseKind(self: *@This()) core.HResult!EmailMessageResponseKind {
        var _r: EmailMessageResponseKind = undefined;
        const _c = self.vtable.get_LastResponseKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastResponseKind(self: *@This(), value: EmailMessageResponseKind) core.HResult!void {
        const _c = self.vtable.put_LastResponseKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSender(self: *@This()) core.HResult!*EmailRecipient {
        var _r: *EmailRecipient = undefined;
        const _c = self.vtable.get_Sender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSender(self: *@This(), value: *EmailRecipient) core.HResult!void {
        const _c = self.vtable.put_Sender(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSentTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_SentTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSentTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_SentTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMeetingInfo(self: *@This()) core.HResult!*EmailMeetingInfo {
        var _r: *EmailMeetingInfo = undefined;
        const _c = self.vtable.get_MeetingInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMeetingInfo(self: *@This(), value: *EmailMeetingInfo) core.HResult!void {
        const _c = self.vtable.put_MeetingInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBodyStream(self: *@This(), ty: EmailMessageBodyKind) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.GetBodyStream(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetBodyStream(self: *@This(), ty: EmailMessageBodyKind, stream: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.SetBodyStream(@ptrCast(self), ty, stream);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdc8248b-9f1a-44db-bd3c-65c384770f86";
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
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ConversationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AllowInternetImages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowInternetImages: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ChangeNumber: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_DownloadState: *const fn(self: *anyopaque, _r: *EmailMessageDownloadState) callconv(.winapi) HRESULT,
        put_DownloadState: *const fn(self: *anyopaque, value: EmailMessageDownloadState) callconv(.winapi) HRESULT,
        get_EstimatedDownloadSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_EstimatedDownloadSizeInBytes: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_FlagState: *const fn(self: *anyopaque, _r: *EmailFlagState) callconv(.winapi) HRESULT,
        put_FlagState: *const fn(self: *anyopaque, value: EmailFlagState) callconv(.winapi) HRESULT,
        get_HasPartialBodies: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Importance: *const fn(self: *anyopaque, _r: *EmailImportance) callconv(.winapi) HRESULT,
        put_Importance: *const fn(self: *anyopaque, value: EmailImportance) callconv(.winapi) HRESULT,
        get_InResponseToMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IrmInfo: *const fn(self: *anyopaque, _r: **EmailIrmInfo) callconv(.winapi) HRESULT,
        put_IrmInfo: *const fn(self: *anyopaque, value: *EmailIrmInfo) callconv(.winapi) HRESULT,
        get_IsDraftMessage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRead: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSeen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSeen: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsServerSearchMessage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSmartSendable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MessageClass: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MessageClass: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NormalizedSubject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OriginalCodePage: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_OriginalCodePage: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Preview: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Preview: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LastResponseKind: *const fn(self: *anyopaque, _r: *EmailMessageResponseKind) callconv(.winapi) HRESULT,
        put_LastResponseKind: *const fn(self: *anyopaque, value: EmailMessageResponseKind) callconv(.winapi) HRESULT,
        get_Sender: *const fn(self: *anyopaque, _r: **EmailRecipient) callconv(.winapi) HRESULT,
        put_Sender: *const fn(self: *anyopaque, value: *EmailRecipient) callconv(.winapi) HRESULT,
        get_SentTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_SentTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_MeetingInfo: *const fn(self: *anyopaque, _r: **EmailMeetingInfo) callconv(.winapi) HRESULT,
        put_MeetingInfo: *const fn(self: *anyopaque, value: *EmailMeetingInfo) callconv(.winapi) HRESULT,
        GetBodyStream: *const fn(self: *anyopaque, ty: EmailMessageBodyKind, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        SetBodyStream: *const fn(self: *anyopaque, ty: EmailMessageBodyKind, stream: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessage3 = extern struct {
    vtable: *const VTable,
    pub fn getSmimeData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_SmimeData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmimeData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_SmimeData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSmimeKind(self: *@This()) core.HResult!EmailMessageSmimeKind {
        var _r: EmailMessageSmimeKind = undefined;
        const _c = self.vtable.get_SmimeKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmimeKind(self: *@This(), value: EmailMessageSmimeKind) core.HResult!void {
        const _c = self.vtable.put_SmimeKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1ea675c-e598-4d29-a018-fc7b7eece0a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SmimeData: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_SmimeData: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_SmimeKind: *const fn(self: *anyopaque, _r: *EmailMessageSmimeKind) callconv(.winapi) HRESULT,
        put_SmimeKind: *const fn(self: *anyopaque, value: EmailMessageSmimeKind) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessage4 = extern struct {
    vtable: *const VTable,
    pub fn getReplyTo(self: *@This()) core.HResult!*IVector(EmailRecipient) {
        var _r: *IVector(EmailRecipient) = undefined;
        const _c = self.vtable.get_ReplyTo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSentRepresenting(self: *@This()) core.HResult!*EmailRecipient {
        var _r: *EmailRecipient = undefined;
        const _c = self.vtable.get_SentRepresenting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSentRepresenting(self: *@This(), value: *EmailRecipient) core.HResult!void {
        const _c = self.vtable.put_SentRepresenting(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessage4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "317cf181-3e7f-4a05-8394-3e10336dd435";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReplyTo: *const fn(self: *anyopaque, _r: **IVector(EmailRecipient)) callconv(.winapi) HRESULT,
        get_SentRepresenting: *const fn(self: *anyopaque, _r: **EmailRecipient) callconv(.winapi) HRESULT,
        put_SentRepresenting: *const fn(self: *anyopaque, value: *EmailRecipient) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessageBatch = extern struct {
    vtable: *const VTable,
    pub fn getMessages(self: *@This()) core.HResult!*IVectorView(EmailMessage) {
        var _r: *IVectorView(EmailMessage) = undefined;
        const _c = self.vtable.get_Messages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!EmailBatchStatus {
        var _r: EmailBatchStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessageBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "605cd08f-25d9-4f1b-9e51-0514c0149653";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Messages: *const fn(self: *anyopaque, _r: **IVectorView(EmailMessage)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *EmailBatchStatus) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMessageReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(EmailMessageBatch) {
        var _r: *IAsyncOperation(EmailMessageBatch) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailMessageReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f4abe9f-6213-4a85-a3b0-f92d1a839d19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(EmailMessageBatch)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getTextSearch(self: *@This()) core.HResult!*EmailQueryTextSearch {
        var _r: *EmailQueryTextSearch = undefined;
        const _c = self.vtable.get_TextSearch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSortDirection(self: *@This()) core.HResult!EmailQuerySortDirection {
        var _r: EmailQuerySortDirection = undefined;
        const _c = self.vtable.get_SortDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSortDirection(self: *@This(), value: EmailQuerySortDirection) core.HResult!void {
        const _c = self.vtable.put_SortDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSortProperty(self: *@This()) core.HResult!EmailQuerySortProperty {
        var _r: EmailQuerySortProperty = undefined;
        const _c = self.vtable.get_SortProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSortProperty(self: *@This(), value: EmailQuerySortProperty) core.HResult!void {
        const _c = self.vtable.put_SortProperty(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!EmailQueryKind {
        var _r: EmailQueryKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: EmailQueryKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFolderIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_FolderIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45504b9b-3e7f-4d52-b6dd-d6fd4e1fbd9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextSearch: *const fn(self: *anyopaque, _r: **EmailQueryTextSearch) callconv(.winapi) HRESULT,
        get_SortDirection: *const fn(self: *anyopaque, _r: *EmailQuerySortDirection) callconv(.winapi) HRESULT,
        put_SortDirection: *const fn(self: *anyopaque, value: EmailQuerySortDirection) callconv(.winapi) HRESULT,
        get_SortProperty: *const fn(self: *anyopaque, _r: *EmailQuerySortProperty) callconv(.winapi) HRESULT,
        put_SortProperty: *const fn(self: *anyopaque, value: EmailQuerySortProperty) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *EmailQueryKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: EmailQueryKind) callconv(.winapi) HRESULT,
        get_FolderIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailQueryOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithText(self: *@This(), text: HSTRING) core.HResult!*EmailQueryOptions {
        var _r: *EmailQueryOptions = undefined;
        const _c = self.vtable.CreateWithText(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTextAndFields(self: *@This(), text: HSTRING, fields: EmailQuerySearchFields) core.HResult!*EmailQueryOptions {
        var _r: *EmailQueryOptions = undefined;
        const _c = self.vtable.CreateWithTextAndFields(@ptrCast(self), text, fields, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailQueryOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88f1a1b8-78ab-4ee8-b4e3-046d6e2fe5e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithText: *const fn(self: *anyopaque, text: HSTRING, _r: **EmailQueryOptions) callconv(.winapi) HRESULT,
        CreateWithTextAndFields: *const fn(self: *anyopaque, text: HSTRING, fields: EmailQuerySearchFields, _r: **EmailQueryOptions) callconv(.winapi) HRESULT,
    };
};
pub const IEmailQueryTextSearch = extern struct {
    vtable: *const VTable,
    pub fn getFields(self: *@This()) core.HResult!EmailQuerySearchFields {
        var _r: EmailQuerySearchFields = undefined;
        const _c = self.vtable.get_Fields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFields(self: *@This(), value: EmailQuerySearchFields) core.HResult!void {
        const _c = self.vtable.put_Fields(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSearchScope(self: *@This()) core.HResult!EmailQuerySearchScope {
        var _r: EmailQuerySearchScope = undefined;
        const _c = self.vtable.get_SearchScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchScope(self: *@This(), value: EmailQuerySearchScope) core.HResult!void {
        const _c = self.vtable.put_SearchScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailQueryTextSearch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fa0a288-3c5d-46a5-a6e2-31d6fd17e540";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Fields: *const fn(self: *anyopaque, _r: *EmailQuerySearchFields) callconv(.winapi) HRESULT,
        put_Fields: *const fn(self: *anyopaque, value: EmailQuerySearchFields) callconv(.winapi) HRESULT,
        get_SearchScope: *const fn(self: *anyopaque, _r: *EmailQuerySearchScope) callconv(.winapi) HRESULT,
        put_SearchScope: *const fn(self: *anyopaque, value: EmailQuerySearchScope) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailRecipient = extern struct {
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
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Address(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailRecipient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cae825b3-4478-4814-b900-c902b5e19b53";
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
        get_Address: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Address: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEmailRecipientFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), address: HSTRING) core.HResult!*EmailRecipient {
        var _r: *EmailRecipient = undefined;
        const _c = self.vtable.Create(@ptrCast(self), address, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithName(self: *@This(), address: HSTRING, name: HSTRING) core.HResult!*EmailRecipient {
        var _r: *EmailRecipient = undefined;
        const _c = self.vtable.CreateWithName(@ptrCast(self), address, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailRecipientFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5500b84d-c79a-4ef8-b909-722e18e3935d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, address: HSTRING, _r: **EmailRecipient) callconv(.winapi) HRESULT,
        CreateWithName: *const fn(self: *anyopaque, address: HSTRING, name: HSTRING, _r: **EmailRecipient) callconv(.winapi) HRESULT,
    };
};
pub const IEmailRecipientResolutionResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!EmailRecipientResolutionStatus {
        var _r: EmailRecipientResolutionStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPublicKeys(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_PublicKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailRecipientResolutionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "918338fa-8d8d-4573-80d1-07172a34b98d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *EmailRecipientResolutionStatus) callconv(.winapi) HRESULT,
        get_PublicKeys: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailRecipientResolutionResult2 = extern struct {
    vtable: *const VTable,
    pub fn putStatus(self: *@This(), value: EmailRecipientResolutionStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPublicKeys(self: *@This(), value: *IIterable(Certificate)) core.HResult!void {
        const _c = self.vtable.SetPublicKeys(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailRecipientResolutionResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e420bb6-ce5b-4bde-b9d4-e16da0b09fca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: EmailRecipientResolutionStatus) callconv(.winapi) HRESULT,
        SetPublicKeys: *const fn(self: *anyopaque, value: *IIterable(Certificate)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailStore = extern struct {
    vtable: *const VTable,
    pub fn FindMailboxesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailbox)) {
        var _r: *IAsyncOperation(IVectorView(EmailMailbox)) = undefined;
        const _c = self.vtable.FindMailboxesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailConversationReader {
        var _r: *EmailConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This(), options: *EmailQueryOptions) core.HResult!*EmailMessageReader {
        var _r: *EmailMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMailboxAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        var _r: *IAsyncOperation(EmailMailbox) = undefined;
        const _c = self.vtable.GetMailboxAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailConversation) {
        var _r: *IAsyncOperation(EmailConversation) = undefined;
        const _c = self.vtable.GetConversationAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFolderAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailFolder) {
        var _r: *IAsyncOperation(EmailFolder) = undefined;
        const _c = self.vtable.GetFolderAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(EmailMessage) {
        var _r: *IAsyncOperation(EmailMessage) = undefined;
        const _c = self.vtable.GetMessageAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMailboxAsync(self: *@This(), accountName: HSTRING, accountAddress: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        var _r: *IAsyncOperation(EmailMailbox) = undefined;
        const _c = self.vtable.CreateMailboxAsync(@ptrCast(self), accountName, accountAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMailboxAsyncWithAccountAddressWithUserDataAccountId(self: *@This(), accountName: HSTRING, accountAddress: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(EmailMailbox) {
        var _r: *IAsyncOperation(EmailMailbox) = undefined;
        const _c = self.vtable.CreateMailboxAsyncWithAccountAddressWithUserDataAccountId(@ptrCast(self), accountName, accountAddress, userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f803226e-9137-4f8b-a470-279ac3058eb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindMailboxesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EmailMailbox))) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailConversationReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, options: *EmailQueryOptions, _r: **EmailMessageReader) callconv(.winapi) HRESULT,
        GetMailboxAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailMailbox)) callconv(.winapi) HRESULT,
        GetConversationAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailConversation)) callconv(.winapi) HRESULT,
        GetFolderAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailFolder)) callconv(.winapi) HRESULT,
        GetMessageAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(EmailMessage)) callconv(.winapi) HRESULT,
        CreateMailboxAsync: *const fn(self: *anyopaque, accountName: HSTRING, accountAddress: HSTRING, _r: **IAsyncOperation(EmailMailbox)) callconv(.winapi) HRESULT,
        CreateMailboxAsyncWithAccountAddressWithUserDataAccountId: *const fn(self: *anyopaque, accountName: HSTRING, accountAddress: HSTRING, userDataAccountId: HSTRING, _r: **IAsyncOperation(EmailMailbox)) callconv(.winapi) HRESULT,
    };
};
pub const IEmailStoreNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.IEmailStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce17563c-46e6-43c9-96f7-facf7dd710cb";
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
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const AppointmentRecurrence = @import("./Appointments.zig").AppointmentRecurrence;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const Certificate = @import("../Security/Cryptography/Certificates.zig").Certificate;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const User = @import("../System.zig").User;
pub const DataProvider = @import("./Email/DataProvider.zig");
