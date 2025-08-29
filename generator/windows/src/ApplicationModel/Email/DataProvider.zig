pub const EmailDataProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMailboxSyncRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addMailboxSyncRequested(handler);
    }
    pub fn removeMailboxSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeMailboxSyncRequested(token);
    }
    pub fn addDownloadMessageRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadMessageRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addDownloadMessageRequested(handler);
    }
    pub fn removeDownloadMessageRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeDownloadMessageRequested(token);
    }
    pub fn addDownloadAttachmentRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadAttachmentRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addDownloadAttachmentRequested(handler);
    }
    pub fn removeDownloadAttachmentRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeDownloadAttachmentRequested(token);
    }
    pub fn addCreateFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxCreateFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addCreateFolderRequested(handler);
    }
    pub fn removeCreateFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeCreateFolderRequested(token);
    }
    pub fn addDeleteFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDeleteFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addDeleteFolderRequested(handler);
    }
    pub fn removeDeleteFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeDeleteFolderRequested(token);
    }
    pub fn addEmptyFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxEmptyFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addEmptyFolderRequested(handler);
    }
    pub fn removeEmptyFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeEmptyFolderRequested(token);
    }
    pub fn addMoveFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxMoveFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addMoveFolderRequested(handler);
    }
    pub fn removeMoveFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeMoveFolderRequested(token);
    }
    pub fn addUpdateMeetingResponseRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxUpdateMeetingResponseRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addUpdateMeetingResponseRequested(handler);
    }
    pub fn removeUpdateMeetingResponseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeUpdateMeetingResponseRequested(token);
    }
    pub fn addForwardMeetingRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxForwardMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addForwardMeetingRequested(handler);
    }
    pub fn removeForwardMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeForwardMeetingRequested(token);
    }
    pub fn addProposeNewTimeForMeetingRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxProposeNewTimeForMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addProposeNewTimeForMeetingRequested(handler);
    }
    pub fn removeProposeNewTimeForMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeProposeNewTimeForMeetingRequested(token);
    }
    pub fn addSetAutoReplySettingsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSetAutoReplySettingsRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addSetAutoReplySettingsRequested(handler);
    }
    pub fn removeSetAutoReplySettingsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeSetAutoReplySettingsRequested(token);
    }
    pub fn addGetAutoReplySettingsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxGetAutoReplySettingsRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addGetAutoReplySettingsRequested(handler);
    }
    pub fn removeGetAutoReplySettingsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeGetAutoReplySettingsRequested(token);
    }
    pub fn addResolveRecipientsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxResolveRecipientsRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addResolveRecipientsRequested(handler);
    }
    pub fn removeResolveRecipientsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeResolveRecipientsRequested(token);
    }
    pub fn addValidateCertificatesRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxValidateCertificatesRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addValidateCertificatesRequested(handler);
    }
    pub fn removeValidateCertificatesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeValidateCertificatesRequested(token);
    }
    pub fn addServerSearchReadBatchRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxServerSearchReadBatchRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.addServerSearchReadBatchRequested(handler);
    }
    pub fn removeServerSearchReadBatchRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.removeServerSearchReadBatchRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IEmailDataProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailDataProviderConnection.GUID;
    pub const IID: Guid = IEmailDataProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailDataProviderConnection.SIGNATURE);
};
pub const EmailDataProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*EmailDataProviderConnection {
        const this: *IEmailDataProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailDataProviderTriggerDetails.GUID;
    pub const IID: Guid = IEmailDataProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailDataProviderTriggerDetails.SIGNATURE);
};
pub const EmailMailboxCreateFolderRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxCreateFolderRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getParentFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxCreateFolderRequest = @ptrCast(self);
        return try this.getParentFolderId();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxCreateFolderRequest = @ptrCast(self);
        return try this.getName();
    }
    pub fn ReportCompletedAsync(self: *@This(), folder: *EmailFolder) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxCreateFolderRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(folder);
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxCreateFolderStatus) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxCreateFolderRequest = @ptrCast(self);
        return try this.ReportFailedAsync(status);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxCreateFolderRequest.GUID;
    pub const IID: Guid = IEmailMailboxCreateFolderRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxCreateFolderRequest.SIGNATURE);
};
pub const EmailMailboxCreateFolderRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxCreateFolderRequest {
        const this: *IEmailMailboxCreateFolderRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxCreateFolderRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxCreateFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxCreateFolderRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxCreateFolderRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxCreateFolderRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxDeleteFolderRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDeleteFolderRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDeleteFolderRequest = @ptrCast(self);
        return try this.getEmailFolderId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDeleteFolderRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxDeleteFolderStatus) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDeleteFolderRequest = @ptrCast(self);
        return try this.ReportFailedAsync(status);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDeleteFolderRequest.GUID;
    pub const IID: Guid = IEmailMailboxDeleteFolderRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDeleteFolderRequest.SIGNATURE);
};
pub const EmailMailboxDeleteFolderRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDeleteFolderRequest {
        const this: *IEmailMailboxDeleteFolderRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxDeleteFolderRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDeleteFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDeleteFolderRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxDeleteFolderRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDeleteFolderRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxDownloadAttachmentRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDownloadAttachmentRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDownloadAttachmentRequest = @ptrCast(self);
        return try this.getEmailMessageId();
    }
    pub fn getEmailAttachmentId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDownloadAttachmentRequest = @ptrCast(self);
        return try this.getEmailAttachmentId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDownloadAttachmentRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDownloadAttachmentRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDownloadAttachmentRequest.GUID;
    pub const IID: Guid = IEmailMailboxDownloadAttachmentRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDownloadAttachmentRequest.SIGNATURE);
};
pub const EmailMailboxDownloadAttachmentRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDownloadAttachmentRequest {
        const this: *IEmailMailboxDownloadAttachmentRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxDownloadAttachmentRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadAttachmentRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDownloadAttachmentRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxDownloadAttachmentRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDownloadAttachmentRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxDownloadMessageRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDownloadMessageRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxDownloadMessageRequest = @ptrCast(self);
        return try this.getEmailMessageId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDownloadMessageRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxDownloadMessageRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDownloadMessageRequest.GUID;
    pub const IID: Guid = IEmailMailboxDownloadMessageRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDownloadMessageRequest.SIGNATURE);
};
pub const EmailMailboxDownloadMessageRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDownloadMessageRequest {
        const this: *IEmailMailboxDownloadMessageRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxDownloadMessageRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxDownloadMessageRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxDownloadMessageRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxDownloadMessageRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxDownloadMessageRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxEmptyFolderRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxEmptyFolderRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxEmptyFolderRequest = @ptrCast(self);
        return try this.getEmailFolderId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxEmptyFolderRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxEmptyFolderStatus) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxEmptyFolderRequest = @ptrCast(self);
        return try this.ReportFailedAsync(status);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxEmptyFolderRequest.GUID;
    pub const IID: Guid = IEmailMailboxEmptyFolderRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxEmptyFolderRequest.SIGNATURE);
};
pub const EmailMailboxEmptyFolderRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxEmptyFolderRequest {
        const this: *IEmailMailboxEmptyFolderRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxEmptyFolderRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxEmptyFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxEmptyFolderRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxEmptyFolderRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxEmptyFolderRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxForwardMeetingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getEmailMessageId();
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVectorView(EmailRecipient) {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getRecipients();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getForwardHeaderType(self: *@This()) core.HResult!EmailMessageBodyKind {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getForwardHeaderType();
    }
    pub fn getForwardHeader(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getForwardHeader();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxForwardMeetingRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxForwardMeetingRequest.GUID;
    pub const IID: Guid = IEmailMailboxForwardMeetingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxForwardMeetingRequest.SIGNATURE);
};
pub const EmailMailboxForwardMeetingRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxForwardMeetingRequest {
        const this: *IEmailMailboxForwardMeetingRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxForwardMeetingRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxForwardMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxForwardMeetingRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxForwardMeetingRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxForwardMeetingRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxGetAutoReplySettingsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxGetAutoReplySettingsRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getRequestedFormat(self: *@This()) core.HResult!EmailMailboxAutoReplyMessageResponseKind {
        const this: *IEmailMailboxGetAutoReplySettingsRequest = @ptrCast(self);
        return try this.getRequestedFormat();
    }
    pub fn ReportCompletedAsync(self: *@This(), autoReplySettings: *EmailMailboxAutoReplySettings) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxGetAutoReplySettingsRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(autoReplySettings);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxGetAutoReplySettingsRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxGetAutoReplySettingsRequest.GUID;
    pub const IID: Guid = IEmailMailboxGetAutoReplySettingsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxGetAutoReplySettingsRequest.SIGNATURE);
};
pub const EmailMailboxGetAutoReplySettingsRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxGetAutoReplySettingsRequest {
        const this: *IEmailMailboxGetAutoReplySettingsRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxGetAutoReplySettingsRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxGetAutoReplySettingsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxGetAutoReplySettingsRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxGetAutoReplySettingsRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxGetAutoReplySettingsRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxMoveFolderRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.getEmailFolderId();
    }
    pub fn getNewParentFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.getNewParentFolderId();
    }
    pub fn getNewFolderName(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.getNewFolderName();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxMoveFolderRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxMoveFolderRequest.GUID;
    pub const IID: Guid = IEmailMailboxMoveFolderRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxMoveFolderRequest.SIGNATURE);
};
pub const EmailMailboxMoveFolderRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxMoveFolderRequest {
        const this: *IEmailMailboxMoveFolderRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxMoveFolderRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxMoveFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxMoveFolderRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxMoveFolderRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxMoveFolderRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxProposeNewTimeForMeetingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getEmailMessageId();
    }
    pub fn getNewStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getNewStartTime();
    }
    pub fn getNewDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getNewDuration();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxProposeNewTimeForMeetingRequest.GUID;
    pub const IID: Guid = IEmailMailboxProposeNewTimeForMeetingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxProposeNewTimeForMeetingRequest.SIGNATURE);
};
pub const EmailMailboxProposeNewTimeForMeetingRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxProposeNewTimeForMeetingRequest {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxProposeNewTimeForMeetingRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxProposeNewTimeForMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxProposeNewTimeForMeetingRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxProposeNewTimeForMeetingRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxProposeNewTimeForMeetingRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxResolveRecipientsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxResolveRecipientsRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IEmailMailboxResolveRecipientsRequest = @ptrCast(self);
        return try this.getRecipients();
    }
    pub fn ReportCompletedAsync(self: *@This(), resolutionResults: *IIterable(EmailRecipientResolutionResult)) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxResolveRecipientsRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(resolutionResults);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxResolveRecipientsRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxResolveRecipientsRequest.GUID;
    pub const IID: Guid = IEmailMailboxResolveRecipientsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxResolveRecipientsRequest.SIGNATURE);
};
pub const EmailMailboxResolveRecipientsRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxResolveRecipientsRequest {
        const this: *IEmailMailboxResolveRecipientsRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxResolveRecipientsRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxResolveRecipientsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxResolveRecipientsRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxResolveRecipientsRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxResolveRecipientsRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxServerSearchReadBatchRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getEmailFolderId();
    }
    pub fn getOptions(self: *@This()) core.HResult!*EmailQueryOptions {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn getSuggestedBatchSize(self: *@This()) core.HResult!u32 {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getSuggestedBatchSize();
    }
    pub fn SaveMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.SaveMessageAsync(message);
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This(), batchStatus: EmailBatchStatus) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxServerSearchReadBatchRequest = @ptrCast(self);
        return try this.ReportFailedAsync(batchStatus);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxServerSearchReadBatchRequest.GUID;
    pub const IID: Guid = IEmailMailboxServerSearchReadBatchRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxServerSearchReadBatchRequest.SIGNATURE);
};
pub const EmailMailboxServerSearchReadBatchRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxServerSearchReadBatchRequest {
        const this: *IEmailMailboxServerSearchReadBatchRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxServerSearchReadBatchRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxServerSearchReadBatchRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxServerSearchReadBatchRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxServerSearchReadBatchRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxServerSearchReadBatchRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxSetAutoReplySettingsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxSetAutoReplySettingsRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getAutoReplySettings(self: *@This()) core.HResult!*EmailMailboxAutoReplySettings {
        const this: *IEmailMailboxSetAutoReplySettingsRequest = @ptrCast(self);
        return try this.getAutoReplySettings();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxSetAutoReplySettingsRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxSetAutoReplySettingsRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxSetAutoReplySettingsRequest.GUID;
    pub const IID: Guid = IEmailMailboxSetAutoReplySettingsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxSetAutoReplySettingsRequest.SIGNATURE);
};
pub const EmailMailboxSetAutoReplySettingsRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxSetAutoReplySettingsRequest {
        const this: *IEmailMailboxSetAutoReplySettingsRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxSetAutoReplySettingsRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxSetAutoReplySettingsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxSetAutoReplySettingsRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxSetAutoReplySettingsRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxSetAutoReplySettingsRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxSyncManagerSyncRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxSyncManagerSyncRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxSyncManagerSyncRequest.GUID;
    pub const IID: Guid = IEmailMailboxSyncManagerSyncRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxSyncManagerSyncRequest.SIGNATURE);
};
pub const EmailMailboxSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxSyncManagerSyncRequest {
        const this: *IEmailMailboxSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxSyncManagerSyncRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxSyncManagerSyncRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxSyncManagerSyncRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxUpdateMeetingResponseRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getEmailMessageId();
    }
    pub fn getResponse(self: *@This()) core.HResult!EmailMeetingResponseType {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getResponse();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getComment();
    }
    pub fn getSendUpdate(self: *@This()) core.HResult!bool {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.getSendUpdate();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxUpdateMeetingResponseRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxUpdateMeetingResponseRequest.GUID;
    pub const IID: Guid = IEmailMailboxUpdateMeetingResponseRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxUpdateMeetingResponseRequest.SIGNATURE);
};
pub const EmailMailboxUpdateMeetingResponseRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxUpdateMeetingResponseRequest {
        const this: *IEmailMailboxUpdateMeetingResponseRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxUpdateMeetingResponseRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxUpdateMeetingResponseRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxUpdateMeetingResponseRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxUpdateMeetingResponseRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxUpdateMeetingResponseRequestEventArgs.SIGNATURE);
};
pub const EmailMailboxValidateCertificatesRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        const this: *IEmailMailboxValidateCertificatesRequest = @ptrCast(self);
        return try this.getEmailMailboxId();
    }
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        const this: *IEmailMailboxValidateCertificatesRequest = @ptrCast(self);
        return try this.getCertificates();
    }
    pub fn ReportCompletedAsync(self: *@This(), validationStatuses: *IIterable(EmailCertificateValidationStatus)) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxValidateCertificatesRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(validationStatuses);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IEmailMailboxValidateCertificatesRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxValidateCertificatesRequest.GUID;
    pub const IID: Guid = IEmailMailboxValidateCertificatesRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxValidateCertificatesRequest.SIGNATURE);
};
pub const EmailMailboxValidateCertificatesRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxValidateCertificatesRequest {
        const this: *IEmailMailboxValidateCertificatesRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IEmailMailboxValidateCertificatesRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.EmailMailboxValidateCertificatesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmailMailboxValidateCertificatesRequestEventArgs.GUID;
    pub const IID: Guid = IEmailMailboxValidateCertificatesRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmailMailboxValidateCertificatesRequestEventArgs.SIGNATURE);
};
pub const IEmailDataProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn addMailboxSyncRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MailboxSyncRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMailboxSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MailboxSyncRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadMessageRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadMessageRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadMessageRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadMessageRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadMessageRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadAttachmentRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadAttachmentRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadAttachmentRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadAttachmentRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadAttachmentRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCreateFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxCreateFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CreateFolderRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCreateFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CreateFolderRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeleteFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDeleteFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeleteFolderRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeleteFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeleteFolderRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEmptyFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxEmptyFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EmptyFolderRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEmptyFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EmptyFolderRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMoveFolderRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxMoveFolderRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MoveFolderRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMoveFolderRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MoveFolderRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdateMeetingResponseRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxUpdateMeetingResponseRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UpdateMeetingResponseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdateMeetingResponseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UpdateMeetingResponseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addForwardMeetingRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxForwardMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ForwardMeetingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeForwardMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ForwardMeetingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addProposeNewTimeForMeetingRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxProposeNewTimeForMeetingRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProposeNewTimeForMeetingRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProposeNewTimeForMeetingRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProposeNewTimeForMeetingRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSetAutoReplySettingsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSetAutoReplySettingsRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SetAutoReplySettingsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSetAutoReplySettingsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SetAutoReplySettingsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGetAutoReplySettingsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxGetAutoReplySettingsRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GetAutoReplySettingsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGetAutoReplySettingsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GetAutoReplySettingsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResolveRecipientsRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxResolveRecipientsRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResolveRecipientsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResolveRecipientsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResolveRecipientsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addValidateCertificatesRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxValidateCertificatesRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValidateCertificatesRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValidateCertificatesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValidateCertificatesRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addServerSearchReadBatchRequested(self: *@This(), handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxServerSearchReadBatchRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServerSearchReadBatchRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServerSearchReadBatchRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServerSearchReadBatchRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b9c9dc7-37b2-4bf0-ae30-7b644a1c96e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MailboxSyncRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSyncManagerSyncRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MailboxSyncRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadMessageRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadMessageRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadMessageRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadAttachmentRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDownloadAttachmentRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadAttachmentRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CreateFolderRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxCreateFolderRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CreateFolderRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DeleteFolderRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxDeleteFolderRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeleteFolderRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EmptyFolderRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxEmptyFolderRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EmptyFolderRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MoveFolderRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxMoveFolderRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MoveFolderRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UpdateMeetingResponseRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxUpdateMeetingResponseRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UpdateMeetingResponseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ForwardMeetingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxForwardMeetingRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ForwardMeetingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ProposeNewTimeForMeetingRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxProposeNewTimeForMeetingRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProposeNewTimeForMeetingRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SetAutoReplySettingsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxSetAutoReplySettingsRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SetAutoReplySettingsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GetAutoReplySettingsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxGetAutoReplySettingsRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GetAutoReplySettingsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResolveRecipientsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxResolveRecipientsRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResolveRecipientsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ValidateCertificatesRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxValidateCertificatesRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValidateCertificatesRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ServerSearchReadBatchRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(EmailDataProviderConnection,EmailMailboxServerSearchReadBatchRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServerSearchReadBatchRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IEmailDataProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*EmailDataProviderConnection {
        var _r: *EmailDataProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f3e4e50-341e-45f3-bba0-84a005e1319a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **EmailDataProviderConnection) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCreateFolderRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParentFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ParentFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), folder: *EmailFolder) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), folder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxCreateFolderStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), status, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "184d3775-c921-4c39-a309-e16c9f22b04b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ParentFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, folder: *EmailFolder, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, status: EmailMailboxCreateFolderStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxCreateFolderRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxCreateFolderRequest {
        var _r: *EmailMailboxCreateFolderRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxCreateFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e4c02c-241c-4ea9-a68f-ff20bc5afc85";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxCreateFolderRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDeleteFolderRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxDeleteFolderStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), status, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9469e88a-a931-4779-923d-09a3ea292e29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, status: EmailMailboxDeleteFolderStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDeleteFolderRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDeleteFolderRequest {
        var _r: *EmailMailboxDeleteFolderRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDeleteFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4d32d06-2332-4678-8378-28b579336846";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxDeleteFolderRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDownloadAttachmentRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailAttachmentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailAttachmentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b1dbbb4-750c-48e1-bce4-8d589684ffbc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailAttachmentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDownloadAttachmentRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDownloadAttachmentRequest {
        var _r: *EmailMailboxDownloadAttachmentRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadAttachmentRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccddc46d-ffa8-4877-9f9d-fed7bcaf4104";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxDownloadAttachmentRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDownloadMessageRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "497b4187-5b4d-4b23-816c-f3842beb753e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxDownloadMessageRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxDownloadMessageRequest {
        var _r: *EmailMailboxDownloadMessageRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxDownloadMessageRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "470409ad-d0a0-4a5b-bb2a-37621039c53e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxDownloadMessageRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxEmptyFolderRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This(), status: EmailMailboxEmptyFolderStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), status, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe4b03ab-f86d-46d9-b4ce-bc8a6d9e9268";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, status: EmailMailboxEmptyFolderStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxEmptyFolderRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxEmptyFolderRequest {
        var _r: *EmailMailboxEmptyFolderRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxEmptyFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7183f484-985a-4ac0-b33f-ee0e2627a3c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxEmptyFolderRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxForwardMeetingRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVectorView(EmailRecipient) {
        var _r: *IVectorView(EmailRecipient) = undefined;
        const _c = self.vtable.get_Recipients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForwardHeaderType(self: *@This()) core.HResult!EmailMessageBodyKind {
        var _r: EmailMessageBodyKind = undefined;
        const _c = self.vtable.get_ForwardHeaderType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForwardHeader(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ForwardHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "616d6af1-70d4-4832-b869-b80542ae9be8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Recipients: *const fn(self: *anyopaque, _r: **IVectorView(EmailRecipient)) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ForwardHeaderType: *const fn(self: *anyopaque, _r: *EmailMessageBodyKind) callconv(.winapi) HRESULT,
        get_ForwardHeader: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxForwardMeetingRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxForwardMeetingRequest {
        var _r: *EmailMailboxForwardMeetingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxForwardMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bd8f33a-2974-4759-a5a5-58f44d3c0275";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxForwardMeetingRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxGetAutoReplySettingsRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestedFormat(self: *@This()) core.HResult!EmailMailboxAutoReplyMessageResponseKind {
        var _r: EmailMailboxAutoReplyMessageResponseKind = undefined;
        const _c = self.vtable.get_RequestedFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), autoReplySettings: *EmailMailboxAutoReplySettings) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), autoReplySettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b380789-1e88-4e01-84cc-1386ad9a2c2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RequestedFormat: *const fn(self: *anyopaque, _r: *EmailMailboxAutoReplyMessageResponseKind) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, autoReplySettings: *EmailMailboxAutoReplySettings, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxGetAutoReplySettingsRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxGetAutoReplySettingsRequest {
        var _r: *EmailMailboxGetAutoReplySettingsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxGetAutoReplySettingsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d79f55c2-fd45-4004-8a91-9bacf38b7022";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxGetAutoReplySettingsRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxMoveFolderRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewParentFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NewParentFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewFolderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NewFolderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10ba2856-4a95-4068-91cc-67cc7acf454f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NewParentFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NewFolderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxMoveFolderRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxMoveFolderRequest {
        var _r: *EmailMailboxMoveFolderRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxMoveFolderRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38623020-14ba-4c88-8698-7239e3c8aaa7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxMoveFolderRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxProposeNewTimeForMeetingRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_NewStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_NewDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5aeff152-9799-4f9f-a399-ff07f3eef04e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NewStartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_NewDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxProposeNewTimeForMeetingRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxProposeNewTimeForMeetingRequest {
        var _r: *EmailMailboxProposeNewTimeForMeetingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxProposeNewTimeForMeetingRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb480b98-33ad-4a67-8251-0f9c249b6a20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxProposeNewTimeForMeetingRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxResolveRecipientsRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Recipients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), resolutionResults: *IIterable(EmailRecipientResolutionResult)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), resolutionResults, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa4cf70-7b39-4c9b-811e-41eaf43a332d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Recipients: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, resolutionResults: *IIterable(EmailRecipientResolutionResult), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxResolveRecipientsRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxResolveRecipientsRequest {
        var _r: *EmailMailboxResolveRecipientsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxResolveRecipientsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "260f9e02-b2cf-40f8-8c28-e3ed43b1e89a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxResolveRecipientsRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxServerSearchReadBatchRequest = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailFolderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailFolderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*EmailQueryOptions {
        var _r: *EmailQueryOptions = undefined;
        const _c = self.vtable.get_Options(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSuggestedBatchSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SuggestedBatchSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveMessageAsync(self: *@This(), message: *EmailMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This(), batchStatus: EmailBatchStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), batchStatus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "090eebdf-5a96-41d3-8ad8-34912f9aa60e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailFolderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **EmailQueryOptions) callconv(.winapi) HRESULT,
        get_SuggestedBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SaveMessageAsync: *const fn(self: *anyopaque, message: *EmailMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, batchStatus: EmailBatchStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxServerSearchReadBatchRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxServerSearchReadBatchRequest {
        var _r: *EmailMailboxServerSearchReadBatchRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxServerSearchReadBatchRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14101b4e-ed9e-45d1-ad7a-cc9b7f643ae2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxServerSearchReadBatchRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSetAutoReplySettingsRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoReplySettings(self: *@This()) core.HResult!*EmailMailboxAutoReplySettings {
        var _r: *EmailMailboxAutoReplySettings = undefined;
        const _c = self.vtable.get_AutoReplySettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75a422d0-a88e-4e54-8dc7-c243186b774e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AutoReplySettings: *const fn(self: *anyopaque, _r: **EmailMailboxAutoReplySettings) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSetAutoReplySettingsRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxSetAutoReplySettingsRequest {
        var _r: *EmailMailboxSetAutoReplySettingsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSetAutoReplySettingsRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09da11ad-d7ca-4087-ac86-53fa67f76246";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxSetAutoReplySettingsRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSyncManagerSyncRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e10e8e4-7e67-405a-b673-dc60c91090fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxSyncManagerSyncRequest {
        var _r: *EmailMailboxSyncManagerSyncRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "439a031a-8fcc-4ae5-b9b5-d434e0a65aa8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxSyncManagerSyncRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxUpdateMeetingResponseRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmailMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponse(self: *@This()) core.HResult!EmailMeetingResponseType {
        var _r: EmailMeetingResponseType = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSendUpdate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SendUpdate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b99ac93-b2cf-4888-ba4f-306b6b66df30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EmailMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *EmailMeetingResponseType) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SendUpdate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxUpdateMeetingResponseRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxUpdateMeetingResponseRequest {
        var _r: *EmailMailboxUpdateMeetingResponseRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxUpdateMeetingResponseRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6898d761-56c9-4f17-be31-66fda94ba159";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxUpdateMeetingResponseRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxValidateCertificatesRequest = extern struct {
    vtable: *const VTable,
    pub fn getEmailMailboxId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailMailboxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCertificates(self: *@This()) core.HResult!*IVectorView(Certificate) {
        var _r: *IVectorView(Certificate) = undefined;
        const _c = self.vtable.get_Certificates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), validationStatuses: *IIterable(EmailCertificateValidationStatus)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), validationStatuses, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a94d3931-e11a-4f97-b81a-187a70a8f41a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EmailMailboxId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Certificates: *const fn(self: *anyopaque, _r: **IVectorView(Certificate)) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, validationStatuses: *IIterable(EmailCertificateValidationStatus), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IEmailMailboxValidateCertificatesRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*EmailMailboxValidateCertificatesRequest {
        var _r: *EmailMailboxValidateCertificatesRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Email.DataProvider.IEmailMailboxValidateCertificatesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2583bf17-02ff-49fe-a73c-03f37566c691";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **EmailMailboxValidateCertificatesRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Certificate = @import("../../Security/Cryptography/Certificates.zig").Certificate;
const EmailMailboxAutoReplyMessageResponseKind = @import("../Email.zig").EmailMailboxAutoReplyMessageResponseKind;
const DateTime = @import("../../Foundation.zig").DateTime;
const EmailRecipient = @import("../Email.zig").EmailRecipient;
const EmailMessage = @import("../Email.zig").EmailMessage;
const EmailBatchStatus = @import("../Email.zig").EmailBatchStatus;
const EmailMailboxDeleteFolderStatus = @import("../Email.zig").EmailMailboxDeleteFolderStatus;
const EmailMessageBodyKind = @import("../Email.zig").EmailMessageBodyKind;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const EmailMeetingResponseType = @import("../Email.zig").EmailMeetingResponseType;
const EmailFolder = @import("../Email.zig").EmailFolder;
const EmailMailboxCreateFolderStatus = @import("../Email.zig").EmailMailboxCreateFolderStatus;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const EmailMailboxAutoReplySettings = @import("../Email.zig").EmailMailboxAutoReplySettings;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const EmailMailboxEmptyFolderStatus = @import("../Email.zig").EmailMailboxEmptyFolderStatus;
const EmailQueryOptions = @import("../Email.zig").EmailQueryOptions;
const EmailRecipientResolutionResult = @import("../Email.zig").EmailRecipientResolutionResult;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const EmailCertificateValidationStatus = @import("../Email.zig").EmailCertificateValidationStatus;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
