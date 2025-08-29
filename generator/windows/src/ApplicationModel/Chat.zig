pub const ChatCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsOnline(self: *@This()) core.HResult!bool {
        const this: *IChatCapabilities = @ptrCast(self);
        return try this.getIsOnline();
    }
    pub fn getIsChatCapable(self: *@This()) core.HResult!bool {
        const this: *IChatCapabilities = @ptrCast(self);
        return try this.getIsChatCapable();
    }
    pub fn getIsFileTransferCapable(self: *@This()) core.HResult!bool {
        const this: *IChatCapabilities = @ptrCast(self);
        return try this.getIsFileTransferCapable();
    }
    pub fn getIsGeoLocationPushCapable(self: *@This()) core.HResult!bool {
        const this: *IChatCapabilities = @ptrCast(self);
        return try this.getIsGeoLocationPushCapable();
    }
    pub fn getIsIntegratedMessagingCapable(self: *@This()) core.HResult!bool {
        const this: *IChatCapabilities = @ptrCast(self);
        return try this.getIsIntegratedMessagingCapable();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatCapabilities.GUID;
    pub const IID: Guid = IChatCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatCapabilities.SIGNATURE);
};
pub const ChatCapabilitiesManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCachedCapabilitiesAsync(address: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        const factory = @This().IChatCapabilitiesManagerStaticsCache.get();
        return try factory.GetCachedCapabilitiesAsync(address);
    }
    pub fn GetCapabilitiesFromNetworkAsync(address: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        const factory = @This().IChatCapabilitiesManagerStaticsCache.get();
        return try factory.GetCapabilitiesFromNetworkAsync(address);
    }
    pub fn GetCachedCapabilitiesAsync(address: HSTRING, transportId: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        const factory = @This().IChatCapabilitiesManagerStatics2Cache.get();
        return try factory.GetCachedCapabilitiesAsync(address, transportId);
    }
    pub fn GetCapabilitiesFromNetworkAsync(address: HSTRING, transportId: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        const factory = @This().IChatCapabilitiesManagerStatics2Cache.get();
        return try factory.GetCapabilitiesFromNetworkAsync(address, transportId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatCapabilitiesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IChatCapabilitiesManagerStaticsCache: FactoryCache(IChatCapabilitiesManagerStatics, RUNTIME_NAME) = .{};
    var _IChatCapabilitiesManagerStatics2Cache: FactoryCache(IChatCapabilitiesManagerStatics2, RUNTIME_NAME) = .{};
};
pub const ChatConversation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasUnreadMessages(self: *@This()) core.HResult!bool {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getHasUnreadMessages();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatConversation = @ptrCast(self);
        return try this.putSubject(value);
    }
    pub fn getIsConversationMuted(self: *@This()) core.HResult!bool {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getIsConversationMuted();
    }
    pub fn putIsConversationMuted(self: *@This(), value: bool) core.HResult!void {
        const this: *IChatConversation = @ptrCast(self);
        return try this.putIsConversationMuted(value);
    }
    pub fn getMostRecentMessageId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getMostRecentMessageId();
    }
    pub fn getParticipants(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getParticipants();
    }
    pub fn getThreadingInfo(self: *@This()) core.HResult!*ChatConversationThreadingInfo {
        const this: *IChatConversation = @ptrCast(self);
        return try this.getThreadingInfo();
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IChatConversation = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*ChatMessageReader {
        const this: *IChatConversation = @ptrCast(self);
        return try this.GetMessageReader();
    }
    pub fn MarkMessagesAsReadAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IChatConversation = @ptrCast(self);
        return try this.MarkMessagesAsReadAsync();
    }
    pub fn MarkMessagesAsReadAsync(self: *@This(), value: DateTime) core.HResult!*IAsyncAction {
        const this: *IChatConversation = @ptrCast(self);
        return try this.MarkMessagesAsReadAsync(value);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IChatConversation = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn NotifyLocalParticipantComposing(self: *@This(), transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) core.HResult!void {
        const this: *IChatConversation = @ptrCast(self);
        return try this.NotifyLocalParticipantComposing(transportId, participantAddress, isComposing);
    }
    pub fn NotifyRemoteParticipantComposing(self: *@This(), transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) core.HResult!void {
        const this: *IChatConversation = @ptrCast(self);
        return try this.NotifyRemoteParticipantComposing(transportId, participantAddress, isComposing);
    }
    pub fn addRemoteParticipantComposingChanged(self: *@This(), handler: *TypedEventHandler(ChatConversation,RemoteParticipantComposingChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IChatConversation = @ptrCast(self);
        return try this.addRemoteParticipantComposingChanged(handler);
    }
    pub fn removeRemoteParticipantComposingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IChatConversation = @ptrCast(self);
        return try this.removeRemoteParticipantComposingChanged(token);
    }
    pub fn getCanModifyParticipants(self: *@This()) core.HResult!bool {
        var this: ?*IChatConversation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatConversation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanModifyParticipants();
    }
    pub fn putCanModifyParticipants(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatConversation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatConversation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanModifyParticipants(value);
    }
    pub fn getItemKind(self: *@This()) core.HResult!ChatItemKind {
        var this: ?*IChatItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItemKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatConversation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatConversation.GUID;
    pub const IID: Guid = IChatConversation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatConversation.SIGNATURE);
};
pub const ChatConversationReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatConversation)) {
        const this: *IChatConversationReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(ChatConversation)) {
        const this: *IChatConversationReader = @ptrCast(self);
        return try this.ReadBatchAsync(count);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatConversationReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatConversationReader.GUID;
    pub const IID: Guid = IChatConversationReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatConversationReader.SIGNATURE);
};
pub const ChatConversationThreadingInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.getContactId();
    }
    pub fn putContactId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.putContactId(value);
    }
    pub fn getCustom(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.getCustom();
    }
    pub fn putCustom(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.putCustom(value);
    }
    pub fn getConversationId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.getConversationId();
    }
    pub fn putConversationId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.putConversationId(value);
    }
    pub fn getParticipants(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.getParticipants();
    }
    pub fn getKind(self: *@This()) core.HResult!ChatConversationThreadingKind {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ChatConversationThreadingKind) core.HResult!void {
        const this: *IChatConversationThreadingInfo = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatConversationThreadingInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatConversationThreadingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatConversationThreadingInfo.GUID;
    pub const IID: Guid = IChatConversationThreadingInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatConversationThreadingInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChatConversationThreadingKind = enum(i32) {
    Participants = 0,
    ContactId = 1,
    ConversationId = 2,
    Custom = 3,
};
pub const ChatItemKind = enum(i32) {
    Message = 0,
    Conversation = 1,
};
pub const ChatMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAttachments(self: *@This()) core.HResult!*IVector(ChatMessageAttachment) {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getAttachments();
    }
    pub fn getBody(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getBody();
    }
    pub fn putBody(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatMessage = @ptrCast(self);
        return try this.putBody(value);
    }
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsForwardingDisabled(self: *@This()) core.HResult!bool {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getIsForwardingDisabled();
    }
    pub fn getIsIncoming(self: *@This()) core.HResult!bool {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getIsIncoming();
    }
    pub fn getIsRead(self: *@This()) core.HResult!bool {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getIsRead();
    }
    pub fn getLocalTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getLocalTimestamp();
    }
    pub fn getNetworkTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getNetworkTimestamp();
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getRecipients();
    }
    pub fn getRecipientSendStatuses(self: *@This()) core.HResult!*IMapView(HSTRING,ChatMessageStatus) {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getRecipientSendStatuses();
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageStatus {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getTransportFriendlyName();
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessage = @ptrCast(self);
        return try this.getTransportId();
    }
    pub fn putTransportId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatMessage = @ptrCast(self);
        return try this.putTransportId(value);
    }
    pub fn getEstimatedDownloadSize(self: *@This()) core.HResult!u64 {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEstimatedDownloadSize();
    }
    pub fn putEstimatedDownloadSize(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEstimatedDownloadSize(value);
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFrom(value);
    }
    pub fn getIsAutoReply(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAutoReply();
    }
    pub fn putIsAutoReply(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAutoReply(value);
    }
    pub fn putIsForwardingDisabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsForwardingDisabled(value);
    }
    pub fn getIsReplyDisabled(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReplyDisabled();
    }
    pub fn putIsIncoming(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsIncoming(value);
    }
    pub fn putIsRead(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsRead(value);
    }
    pub fn getIsSeen(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSeen();
    }
    pub fn putIsSeen(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsSeen(value);
    }
    pub fn getIsSimMessage(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSimMessage();
    }
    pub fn putLocalTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLocalTimestamp(value);
    }
    pub fn getMessageKind(self: *@This()) core.HResult!ChatMessageKind {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageKind();
    }
    pub fn putMessageKind(self: *@This(), value: ChatMessageKind) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMessageKind(value);
    }
    pub fn getMessageOperatorKind(self: *@This()) core.HResult!ChatMessageOperatorKind {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMessageOperatorKind();
    }
    pub fn putMessageOperatorKind(self: *@This(), value: ChatMessageOperatorKind) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMessageOperatorKind(value);
    }
    pub fn putNetworkTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNetworkTimestamp(value);
    }
    pub fn getIsReceivedDuringQuietHours(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReceivedDuringQuietHours();
    }
    pub fn putIsReceivedDuringQuietHours(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsReceivedDuringQuietHours(value);
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn putStatus(self: *@This(), value: ChatMessageStatus) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStatus(value);
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSubject(value);
    }
    pub fn getShouldSuppressNotification(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldSuppressNotification();
    }
    pub fn putShouldSuppressNotification(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShouldSuppressNotification(value);
    }
    pub fn getThreadingInfo(self: *@This()) core.HResult!*ChatConversationThreadingInfo {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getThreadingInfo();
    }
    pub fn putThreadingInfo(self: *@This(), value: *ChatConversationThreadingInfo) core.HResult!void {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putThreadingInfo(value);
    }
    pub fn getRecipientsDeliveryInfos(self: *@This()) core.HResult!*IVector(ChatRecipientDeliveryInfo) {
        var this: ?*IChatMessage2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRecipientsDeliveryInfos();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IChatMessage3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn getSyncId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IChatMessage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSyncId();
    }
    pub fn putSyncId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IChatMessage4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessage4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSyncId(value);
    }
    pub fn getItemKind(self: *@This()) core.HResult!ChatItemKind {
        var this: ?*IChatItem = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatItem.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getItemKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessage.GUID;
    pub const IID: Guid = IChatMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChatMessageAttachment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataStreamReference(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.getDataStreamReference();
    }
    pub fn putDataStreamReference(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.putDataStreamReference(value);
    }
    pub fn getGroupId(self: *@This()) core.HResult!u32 {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.getGroupId();
    }
    pub fn putGroupId(self: *@This(), value: u32) core.HResult!void {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.putGroupId(value);
    }
    pub fn getMimeType(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.getMimeType();
    }
    pub fn putMimeType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.putMimeType(value);
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatMessageAttachment = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putThumbnail(value);
    }
    pub fn getTransferProgress(self: *@This()) core.HResult!f64 {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransferProgress();
    }
    pub fn putTransferProgress(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransferProgress(value);
    }
    pub fn getOriginalFileName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalFileName();
    }
    pub fn putOriginalFileName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IChatMessageAttachment2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageAttachment2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOriginalFileName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateChatMessageAttachment(mimeType: HSTRING, dataStreamReference: *IRandomAccessStreamReference) core.HResult!*ChatMessageAttachment {
        const factory = @This().IChatMessageAttachmentFactoryCache.get();
        return try factory.CreateChatMessageAttachment(mimeType, dataStreamReference);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageAttachment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageAttachment.GUID;
    pub const IID: Guid = IChatMessageAttachment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageAttachment.SIGNATURE);
    var _IChatMessageAttachmentFactoryCache: FactoryCache(IChatMessageAttachmentFactory, RUNTIME_NAME) = .{};
};
pub const ChatMessageBlocking = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn MarkMessageAsBlockedAsync(localChatMessageId: HSTRING, blocked: bool) core.HResult!*IAsyncAction {
        const factory = @This().IChatMessageBlockingStaticCache.get();
        return try factory.MarkMessageAsBlockedAsync(localChatMessageId, blocked);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageBlocking";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IChatMessageBlockingStaticCache: FactoryCache(IChatMessageBlockingStatic, RUNTIME_NAME) = .{};
};
pub const ChatMessageChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ChatMessageChangeType {
        const this: *IChatMessageChange = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getMessage(self: *@This()) core.HResult!*ChatMessage {
        const this: *IChatMessageChange = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageChange.GUID;
    pub const IID: Guid = IChatMessageChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageChange.SIGNATURE);
};
pub const ChatMessageChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const this: *IChatMessageChangeReader = @ptrCast(self);
        return try this.AcceptChanges();
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAcknowledge: *ChatMessageChange) core.HResult!void {
        const this: *IChatMessageChangeReader = @ptrCast(self);
        return try this.AcceptChangesThrough(lastChangeToAcknowledge);
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatMessageChange)) {
        const this: *IChatMessageChangeReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageChangeReader.GUID;
    pub const IID: Guid = IChatMessageChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageChangeReader.SIGNATURE);
};
pub const ChatMessageChangeTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *IChatMessageChangeTracker = @ptrCast(self);
        return try this.Enable();
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*ChatMessageChangeReader {
        const this: *IChatMessageChangeTracker = @ptrCast(self);
        return try this.GetChangeReader();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IChatMessageChangeTracker = @ptrCast(self);
        return try this.Reset();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageChangeTracker.GUID;
    pub const IID: Guid = IChatMessageChangeTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageChangeTracker.SIGNATURE);
};
pub const ChatMessageChangeType = enum(i32) {
    MessageCreated = 0,
    MessageModified = 1,
    MessageDeleted = 2,
    ChangeTrackingLost = 3,
};
pub const ChatMessageChangedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IChatMessageChangedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageChangedDeferral.GUID;
    pub const IID: Guid = IChatMessageChangedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageChangedDeferral.SIGNATURE);
};
pub const ChatMessageChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ChatMessageChangedDeferral {
        const this: *IChatMessageChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageChangedEventArgs.GUID;
    pub const IID: Guid = IChatMessageChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageChangedEventArgs.SIGNATURE);
};
pub const ChatMessageKind = enum(i32) {
    Standard = 0,
    FileTransferRequest = 1,
    TransportCustom = 2,
    JoinedConversation = 3,
    LeftConversation = 4,
    OtherParticipantJoinedConversation = 5,
    OtherParticipantLeftConversation = 6,
};
pub const ChatMessageManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetTransportsAsync() core.HResult!*IAsyncOperation(IVectorView(ChatMessageTransport)) {
        const factory = @This().IChatMessageManagerStaticCache.get();
        return try factory.GetTransportsAsync();
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(ChatMessageStore) {
        const factory = @This().IChatMessageManagerStaticCache.get();
        return try factory.RequestStoreAsync();
    }
    pub fn ShowComposeSmsMessageAsync(message: *ChatMessage) core.HResult!*IAsyncAction {
        const factory = @This().IChatMessageManagerStaticCache.get();
        return try factory.ShowComposeSmsMessageAsync(message);
    }
    pub fn ShowSmsSettings() core.HResult!void {
        const factory = @This().IChatMessageManagerStaticCache.get();
        return try factory.ShowSmsSettings();
    }
    pub fn RegisterTransportAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IChatMessageManager2StaticsCache.get();
        return try factory.RegisterTransportAsync();
    }
    pub fn GetTransportAsync(transportId: HSTRING) core.HResult!*IAsyncOperation(ChatMessageTransport) {
        const factory = @This().IChatMessageManager2StaticsCache.get();
        return try factory.GetTransportAsync(transportId);
    }
    pub fn RequestSyncManagerAsync() core.HResult!*IAsyncOperation(ChatSyncManager) {
        const factory = @This().IChatMessageManagerStatics3Cache.get();
        return try factory.RequestSyncManagerAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IChatMessageManagerStaticCache: FactoryCache(IChatMessageManagerStatic, RUNTIME_NAME) = .{};
    var _IChatMessageManager2StaticsCache: FactoryCache(IChatMessageManager2Statics, RUNTIME_NAME) = .{};
    var _IChatMessageManagerStatics3Cache: FactoryCache(IChatMessageManagerStatics3, RUNTIME_NAME) = .{};
};
pub const ChatMessageNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChatMessage(self: *@This()) core.HResult!*ChatMessage {
        const this: *IChatMessageNotificationTriggerDetails = @ptrCast(self);
        return try this.getChatMessage();
    }
    pub fn getShouldDisplayToast(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessageNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldDisplayToast();
    }
    pub fn getShouldUpdateDetailText(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessageNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldUpdateDetailText();
    }
    pub fn getShouldUpdateBadge(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessageNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldUpdateBadge();
    }
    pub fn getShouldUpdateActionCenter(self: *@This()) core.HResult!bool {
        var this: ?*IChatMessageNotificationTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageNotificationTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldUpdateActionCenter();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageNotificationTriggerDetails.GUID;
    pub const IID: Guid = IChatMessageNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageNotificationTriggerDetails.SIGNATURE);
};
pub const ChatMessageOperatorKind = enum(i32) {
    Unspecified = 0,
    Sms = 1,
    Mms = 2,
    Rcs = 3,
};
pub const ChatMessageReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatMessage)) {
        var this: ?*IChatMessageReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadBatchAsync();
    }
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(ChatMessage)) {
        var this: ?*IChatMessageReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadBatchAsync(count);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageReader.GUID;
    pub const IID: Guid = IChatMessageReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageReader.SIGNATURE);
};
pub const ChatMessageStatus = enum(i32) {
    Draft = 0,
    Sending = 1,
    Sent = 2,
    SendRetryNeeded = 3,
    SendFailed = 4,
    Received = 5,
    ReceiveDownloadNeeded = 6,
    ReceiveDownloadFailed = 7,
    ReceiveDownloading = 8,
    Deleted = 9,
    Declined = 10,
    Cancelled = 11,
    Recalled = 12,
    ReceiveRetryNeeded = 13,
};
pub const ChatMessageStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*ChatMessageChangeTracker {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.getChangeTracker();
    }
    pub fn DeleteMessageAsync(self: *@This(), localMessageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.DeleteMessageAsync(localMessageId);
    }
    pub fn DownloadMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.DownloadMessageAsync(localChatMessageId);
    }
    pub fn GetMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.GetMessageAsync(localChatMessageId);
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*ChatMessageReader {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.GetMessageReader();
    }
    pub fn GetMessageReader(self: *@This(), recentTimeLimit: TimeSpan) core.HResult!*ChatMessageReader {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.GetMessageReader(recentTimeLimit);
    }
    pub fn MarkMessageReadAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.MarkMessageReadAsync(localChatMessageId);
    }
    pub fn RetrySendMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.RetrySendMessageAsync(localChatMessageId);
    }
    pub fn SendMessageAsync(self: *@This(), chatMessage: *ChatMessage) core.HResult!*IAsyncAction {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.SendMessageAsync(chatMessage);
    }
    pub fn ValidateMessage(self: *@This(), chatMessage: *ChatMessage) core.HResult!*ChatMessageValidationResult {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.ValidateMessage(chatMessage);
    }
    pub fn addMessageChanged(self: *@This(), value: *TypedEventHandler(ChatMessageStore,ChatMessageChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.addMessageChanged(value);
    }
    pub fn removeMessageChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const this: *IChatMessageStore = @ptrCast(self);
        return try this.removeMessageChanged(value);
    }
    pub fn ForwardMessageAsync(self: *@This(), localChatMessageId: HSTRING, addresses: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ChatMessage) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ForwardMessageAsync(localChatMessageId, addresses);
    }
    pub fn GetConversationAsync(self: *@This(), conversationId: HSTRING) core.HResult!*IAsyncOperation(ChatConversation) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConversationAsync(conversationId);
    }
    pub fn GetConversationAsync(self: *@This(), conversationId: HSTRING, transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ChatConversation) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConversationAsync(conversationId, transportIds);
    }
    pub fn GetConversationFromThreadingInfoAsync(self: *@This(), threadingInfo: *ChatConversationThreadingInfo) core.HResult!*IAsyncOperation(ChatConversation) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConversationFromThreadingInfoAsync(threadingInfo);
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*ChatConversationReader {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConversationReader();
    }
    pub fn GetConversationReader(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*ChatConversationReader {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConversationReader(transportIds);
    }
    pub fn GetMessageByRemoteIdAsync(self: *@This(), transportId: HSTRING, remoteId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMessageByRemoteIdAsync(transportId, remoteId);
    }
    pub fn GetUnseenCountAsync(self: *@This()) core.HResult!*IAsyncOperation(i32) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetUnseenCountAsync();
    }
    pub fn GetUnseenCountAsync(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(i32) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetUnseenCountAsync(transportIds);
    }
    pub fn MarkAsSeenAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MarkAsSeenAsync();
    }
    pub fn MarkAsSeenAsync(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.MarkAsSeenAsync(transportIds);
    }
    pub fn GetSearchReader(self: *@This(), value: *ChatQueryOptions) core.HResult!*ChatSearchReader {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSearchReader(value);
    }
    pub fn SaveMessageAsync(self: *@This(), chatMessage: *ChatMessage) core.HResult!*IAsyncAction {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SaveMessageAsync(chatMessage);
    }
    pub fn TryCancelDownloadMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCancelDownloadMessageAsync(localChatMessageId);
    }
    pub fn TryCancelSendMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCancelSendMessageAsync(localChatMessageId);
    }
    pub fn addStoreChanged(self: *@This(), handler: *TypedEventHandler(ChatMessageStore,ChatMessageStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStoreChanged(handler);
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IChatMessageStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStoreChanged(token);
    }
    pub fn GetMessageBySyncIdAsync(self: *@This(), syncId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        var this: ?*IChatMessageStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMessageBySyncIdAsync(syncId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageStore.GUID;
    pub const IID: Guid = IChatMessageStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageStore.SIGNATURE);
};
pub const ChatMessageStoreChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessageStoreChangedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!ChatStoreChangedEventKind {
        const this: *IChatMessageStoreChangedEventArgs = @ptrCast(self);
        return try this.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageStoreChangedEventArgs.GUID;
    pub const IID: Guid = IChatMessageStoreChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageStoreChangedEventArgs.SIGNATURE);
};
pub const ChatMessageTransport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsAppSetAsNotificationProvider(self: *@This()) core.HResult!bool {
        const this: *IChatMessageTransport = @ptrCast(self);
        return try this.getIsAppSetAsNotificationProvider();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IChatMessageTransport = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessageTransport = @ptrCast(self);
        return try this.getTransportFriendlyName();
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        const this: *IChatMessageTransport = @ptrCast(self);
        return try this.getTransportId();
    }
    pub fn RequestSetAsNotificationProviderAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IChatMessageTransport = @ptrCast(self);
        return try this.RequestSetAsNotificationProviderAsync();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*ChatMessageTransportConfiguration {
        var this: ?*IChatMessageTransport2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageTransport2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConfiguration();
    }
    pub fn getTransportKind(self: *@This()) core.HResult!ChatMessageTransportKind {
        var this: ?*IChatMessageTransport2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IChatMessageTransport2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransportKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageTransport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageTransport.GUID;
    pub const IID: Guid = IChatMessageTransport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageTransport.SIGNATURE);
};
pub const ChatMessageTransportConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxAttachmentCount(self: *@This()) core.HResult!i32 {
        const this: *IChatMessageTransportConfiguration = @ptrCast(self);
        return try this.getMaxAttachmentCount();
    }
    pub fn getMaxMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        const this: *IChatMessageTransportConfiguration = @ptrCast(self);
        return try this.getMaxMessageSizeInKilobytes();
    }
    pub fn getMaxRecipientCount(self: *@This()) core.HResult!i32 {
        const this: *IChatMessageTransportConfiguration = @ptrCast(self);
        return try this.getMaxRecipientCount();
    }
    pub fn getSupportedVideoFormat(self: *@This()) core.HResult!*MediaEncodingProfile {
        const this: *IChatMessageTransportConfiguration = @ptrCast(self);
        return try this.getSupportedVideoFormat();
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IChatMessageTransportConfiguration = @ptrCast(self);
        return try this.getExtendedProperties();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageTransportConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageTransportConfiguration.GUID;
    pub const IID: Guid = IChatMessageTransportConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageTransportConfiguration.SIGNATURE);
};
pub const ChatMessageTransportKind = enum(i32) {
    Text = 0,
    Untriaged = 1,
    Blocked = 2,
    Custom = 3,
};
pub const ChatMessageValidationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxPartCount(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IChatMessageValidationResult = @ptrCast(self);
        return try this.getMaxPartCount();
    }
    pub fn getPartCount(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IChatMessageValidationResult = @ptrCast(self);
        return try this.getPartCount();
    }
    pub fn getRemainingCharacterCountInPart(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IChatMessageValidationResult = @ptrCast(self);
        return try this.getRemainingCharacterCountInPart();
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageValidationStatus {
        const this: *IChatMessageValidationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatMessageValidationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatMessageValidationResult.GUID;
    pub const IID: Guid = IChatMessageValidationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatMessageValidationResult.SIGNATURE);
};
pub const ChatMessageValidationStatus = enum(i32) {
    Valid = 0,
    NoRecipients = 1,
    InvalidData = 2,
    MessageTooLarge = 3,
    TooManyRecipients = 4,
    TransportInactive = 5,
    TransportNotFound = 6,
    TooManyAttachments = 7,
    InvalidRecipients = 8,
    InvalidBody = 9,
    InvalidOther = 10,
    ValidWithLargeMessage = 11,
    VoiceRoamingRestriction = 12,
    DataRoamingRestriction = 13,
};
pub const ChatQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSearchString(self: *@This()) core.HResult!HSTRING {
        const this: *IChatQueryOptions = @ptrCast(self);
        return try this.getSearchString();
    }
    pub fn putSearchString(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatQueryOptions = @ptrCast(self);
        return try this.putSearchString(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatQueryOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatQueryOptions.GUID;
    pub const IID: Guid = IChatQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChatRecipientDeliveryInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransportAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getTransportAddress();
    }
    pub fn putTransportAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.putTransportAddress(value);
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getDeliveryTime();
    }
    pub fn putDeliveryTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.putDeliveryTime(value);
    }
    pub fn getReadTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getReadTime();
    }
    pub fn putReadTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.putReadTime(value);
    }
    pub fn getTransportErrorCodeCategory(self: *@This()) core.HResult!ChatTransportErrorCodeCategory {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getTransportErrorCodeCategory();
    }
    pub fn getTransportInterpretedErrorCode(self: *@This()) core.HResult!ChatTransportInterpretedErrorCode {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getTransportInterpretedErrorCode();
    }
    pub fn getTransportErrorCode(self: *@This()) core.HResult!i32 {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getTransportErrorCode();
    }
    pub fn getIsErrorPermanent(self: *@This()) core.HResult!bool {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getIsErrorPermanent();
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageStatus {
        const this: *IChatRecipientDeliveryInfo = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChatRecipientDeliveryInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatRecipientDeliveryInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatRecipientDeliveryInfo.GUID;
    pub const IID: Guid = IChatRecipientDeliveryInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatRecipientDeliveryInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ChatRestoreHistorySpan = enum(i32) {
    LastMonth = 0,
    LastYear = 1,
    AnyTime = 2,
};
pub const ChatSearchReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IChatItem)) {
        const this: *IChatSearchReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(IChatItem)) {
        const this: *IChatSearchReader = @ptrCast(self);
        return try this.ReadBatchAsync(count);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatSearchReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatSearchReader.GUID;
    pub const IID: Guid = IChatSearchReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatSearchReader.SIGNATURE);
};
pub const ChatStoreChangedEventKind = enum(i32) {
    NotificationsMissed = 0,
    StoreModified = 1,
    MessageCreated = 2,
    MessageModified = 3,
    MessageDeleted = 4,
    ConversationModified = 5,
    ConversationDeleted = 6,
    ConversationTransportDeleted = 7,
};
pub const ChatSyncConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSyncEnabled(self: *@This()) core.HResult!bool {
        const this: *IChatSyncConfiguration = @ptrCast(self);
        return try this.getIsSyncEnabled();
    }
    pub fn putIsSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IChatSyncConfiguration = @ptrCast(self);
        return try this.putIsSyncEnabled(value);
    }
    pub fn getRestoreHistorySpan(self: *@This()) core.HResult!ChatRestoreHistorySpan {
        const this: *IChatSyncConfiguration = @ptrCast(self);
        return try this.getRestoreHistorySpan();
    }
    pub fn putRestoreHistorySpan(self: *@This(), value: ChatRestoreHistorySpan) core.HResult!void {
        const this: *IChatSyncConfiguration = @ptrCast(self);
        return try this.putRestoreHistorySpan(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatSyncConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatSyncConfiguration.GUID;
    pub const IID: Guid = IChatSyncConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatSyncConfiguration.SIGNATURE);
};
pub const ChatSyncManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*ChatSyncConfiguration {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn AssociateAccountAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncAction {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.AssociateAccountAsync(webAccount);
    }
    pub fn UnassociateAccountAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.UnassociateAccountAsync();
    }
    pub fn IsAccountAssociated(self: *@This(), webAccount: *WebAccount) core.HResult!bool {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.IsAccountAssociated(webAccount);
    }
    pub fn StartSync(self: *@This()) core.HResult!void {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.StartSync();
    }
    pub fn SetConfigurationAsync(self: *@This(), configuration: *ChatSyncConfiguration) core.HResult!*IAsyncAction {
        const this: *IChatSyncManager = @ptrCast(self);
        return try this.SetConfigurationAsync(configuration);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.ChatSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChatSyncManager.GUID;
    pub const IID: Guid = IChatSyncManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChatSyncManager.SIGNATURE);
};
pub const ChatTransportErrorCodeCategory = enum(i32) {
    None = 0,
    Http = 1,
    Network = 2,
    MmsServer = 3,
};
pub const ChatTransportInterpretedErrorCode = enum(i32) {
    None = 0,
    Unknown = 1,
    InvalidRecipientAddress = 2,
    NetworkConnectivity = 3,
    ServiceDenied = 4,
    Timeout = 5,
};
pub const IChatCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsOnline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsChatCapable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsChatCapable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFileTransferCapable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFileTransferCapable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGeoLocationPushCapable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGeoLocationPushCapable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIntegratedMessagingCapable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIntegratedMessagingCapable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3aff77bc-39c9-4dd1-ad2d-3964dd9d403f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsOnline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsChatCapable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsFileTransferCapable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGeoLocationPushCapable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsIntegratedMessagingCapable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IChatCapabilitiesManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCachedCapabilitiesAsync(self: *@This(), address: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        var _r: *IAsyncOperation(ChatCapabilities) = undefined;
        const _c = self.vtable.GetCachedCapabilitiesAsync(@ptrCast(self), address, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilitiesFromNetworkAsync(self: *@This(), address: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        var _r: *IAsyncOperation(ChatCapabilities) = undefined;
        const _c = self.vtable.GetCapabilitiesFromNetworkAsync(@ptrCast(self), address, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatCapabilitiesManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b57a2f30-7041-458e-b0cf-7c0d9fea333a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCachedCapabilitiesAsync: *const fn(self: *anyopaque, address: HSTRING, _r: **IAsyncOperation(ChatCapabilities)) callconv(.winapi) HRESULT,
        GetCapabilitiesFromNetworkAsync: *const fn(self: *anyopaque, address: HSTRING, _r: **IAsyncOperation(ChatCapabilities)) callconv(.winapi) HRESULT,
    };
};
pub const IChatCapabilitiesManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetCachedCapabilitiesAsync(self: *@This(), address: HSTRING, transportId: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        var _r: *IAsyncOperation(ChatCapabilities) = undefined;
        const _c = self.vtable.GetCachedCapabilitiesAsync(@ptrCast(self), address, transportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilitiesFromNetworkAsync(self: *@This(), address: HSTRING, transportId: HSTRING) core.HResult!*IAsyncOperation(ChatCapabilities) {
        var _r: *IAsyncOperation(ChatCapabilities) = undefined;
        const _c = self.vtable.GetCapabilitiesFromNetworkAsync(@ptrCast(self), address, transportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatCapabilitiesManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e30d4274-d5c1-4ac9-9ffc-40e69184fec8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCachedCapabilitiesAsync: *const fn(self: *anyopaque, address: HSTRING, transportId: HSTRING, _r: **IAsyncOperation(ChatCapabilities)) callconv(.winapi) HRESULT,
        GetCapabilitiesFromNetworkAsync: *const fn(self: *anyopaque, address: HSTRING, transportId: HSTRING, _r: **IAsyncOperation(ChatCapabilities)) callconv(.winapi) HRESULT,
    };
};
pub const IChatConversation = extern struct {
    vtable: *const VTable,
    pub fn getHasUnreadMessages(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasUnreadMessages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getIsConversationMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConversationMuted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsConversationMuted(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsConversationMuted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMostRecentMessageId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MostRecentMessageId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParticipants(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Participants(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThreadingInfo(self: *@This()) core.HResult!*ChatConversationThreadingInfo {
        var _r: *ChatConversationThreadingInfo = undefined;
        const _c = self.vtable.get_ThreadingInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*ChatMessageReader {
        var _r: *ChatMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkMessagesAsReadAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessagesAsReadAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkMessagesAsReadAsync(self: *@This(), value: DateTime) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessagesAsReadAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NotifyLocalParticipantComposing(self: *@This(), transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) core.HResult!void {
        const _c = self.vtable.NotifyLocalParticipantComposing(@ptrCast(self), transportId, participantAddress, isComposing);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyRemoteParticipantComposing(self: *@This(), transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) core.HResult!void {
        const _c = self.vtable.NotifyRemoteParticipantComposing(@ptrCast(self), transportId, participantAddress, isComposing);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoteParticipantComposingChanged(self: *@This(), handler: *TypedEventHandler(ChatConversation,RemoteParticipantComposingChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemoteParticipantComposingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoteParticipantComposingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemoteParticipantComposingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatConversation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a58c080d-1a6f-46dc-8f3d-f5028660b6ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasUnreadMessages: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsConversationMuted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsConversationMuted: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MostRecentMessageId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Participants: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_ThreadingInfo: *const fn(self: *anyopaque, _r: **ChatConversationThreadingInfo) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, _r: **ChatMessageReader) callconv(.winapi) HRESULT,
        MarkMessagesAsReadAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkMessagesAsReadAsync: *const fn(self: *anyopaque, value: DateTime, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        NotifyLocalParticipantComposing: *const fn(self: *anyopaque, transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) callconv(.winapi) HRESULT,
        NotifyRemoteParticipantComposing: *const fn(self: *anyopaque, transportId: HSTRING, participantAddress: HSTRING, isComposing: bool) callconv(.winapi) HRESULT,
        add_RemoteParticipantComposingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ChatConversation,RemoteParticipantComposingChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemoteParticipantComposingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IChatConversation2 = extern struct {
    vtable: *const VTable,
    pub fn getCanModifyParticipants(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanModifyParticipants(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanModifyParticipants(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanModifyParticipants(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatConversation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a030cd1-983a-47aa-9a90-ee48ee997b59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanModifyParticipants: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanModifyParticipants: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IChatConversationReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatConversation)) {
        var _r: *IAsyncOperation(IVectorView(ChatConversation)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(ChatConversation)) {
        var _r: *IAsyncOperation(IVectorView(ChatConversation)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatConversationReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "055136d2-de32-4a47-a93a-b3dc0833852b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ChatConversation))) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, count: i32, _r: **IAsyncOperation(IVectorView(ChatConversation))) callconv(.winapi) HRESULT,
    };
};
pub const IChatConversationThreadingInfo = extern struct {
    vtable: *const VTable,
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Custom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustom(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Custom(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConversationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConversationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConversationId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ConversationId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParticipants(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Participants(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!ChatConversationThreadingKind {
        var _r: ChatConversationThreadingKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ChatConversationThreadingKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatConversationThreadingInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "331c21dc-7a07-4422-a32c-24be7c6dab24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Custom: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Custom: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ConversationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ConversationId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Participants: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ChatConversationThreadingKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ChatConversationThreadingKind) callconv(.winapi) HRESULT,
    };
};
pub const IChatItem = extern struct {
    vtable: *const VTable,
    pub fn getItemKind(self: *@This()) core.HResult!ChatItemKind {
        var _r: ChatItemKind = undefined;
        const _c = self.vtable.get_ItemKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8751d000-ceb1-4243-b803-15d45a1dd428";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemKind: *const fn(self: *anyopaque, _r: *ChatItemKind) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessage = extern struct {
    vtable: *const VTable,
    pub fn getAttachments(self: *@This()) core.HResult!*IVector(ChatMessageAttachment) {
        var _r: *IVector(ChatMessageAttachment) = undefined;
        const _c = self.vtable.get_Attachments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getFrom(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsForwardingDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsForwardingDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIncoming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIncoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LocalTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_NetworkTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecipients(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Recipients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecipientSendStatuses(self: *@This()) core.HResult!*IMapView(HSTRING,ChatMessageStatus) {
        var _r: *IMapView(HSTRING,ChatMessageStatus) = undefined;
        const _c = self.vtable.get_RecipientSendStatuses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageStatus {
        var _r: ChatMessageStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransportId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TransportId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b39052a-1142-5089-76da-f2db3d17cd05";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Attachments: *const fn(self: *anyopaque, _r: **IVector(ChatMessageAttachment)) callconv(.winapi) HRESULT,
        get_Body: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Body: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsForwardingDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsIncoming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LocalTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_NetworkTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Recipients: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_RecipientSendStatuses: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,ChatMessageStatus)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ChatMessageStatus) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TransportFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TransportId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TransportId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessage2 = extern struct {
    vtable: *const VTable,
    pub fn getEstimatedDownloadSize(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_EstimatedDownloadSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEstimatedDownloadSize(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_EstimatedDownloadSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putFrom(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAutoReply(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutoReply(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAutoReply(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAutoReply(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIsForwardingDisabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsForwardingDisabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsReplyDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReplyDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsIncoming(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsIncoming(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getIsSimMessage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSimMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_LocalTimestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMessageKind(self: *@This()) core.HResult!ChatMessageKind {
        var _r: ChatMessageKind = undefined;
        const _c = self.vtable.get_MessageKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessageKind(self: *@This(), value: ChatMessageKind) core.HResult!void {
        const _c = self.vtable.put_MessageKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMessageOperatorKind(self: *@This()) core.HResult!ChatMessageOperatorKind {
        var _r: ChatMessageOperatorKind = undefined;
        const _c = self.vtable.get_MessageOperatorKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessageOperatorKind(self: *@This(), value: ChatMessageOperatorKind) core.HResult!void {
        const _c = self.vtable.put_MessageOperatorKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putNetworkTimestamp(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_NetworkTimestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsReceivedDuringQuietHours(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReceivedDuringQuietHours(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsReceivedDuringQuietHours(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsReceivedDuringQuietHours(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putStatus(self: *@This(), value: ChatMessageStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putSubject(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subject(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShouldSuppressNotification(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldSuppressNotification(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldSuppressNotification(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldSuppressNotification(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThreadingInfo(self: *@This()) core.HResult!*ChatConversationThreadingInfo {
        var _r: *ChatConversationThreadingInfo = undefined;
        const _c = self.vtable.get_ThreadingInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThreadingInfo(self: *@This(), value: *ChatConversationThreadingInfo) core.HResult!void {
        const _c = self.vtable.put_ThreadingInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecipientsDeliveryInfos(self: *@This()) core.HResult!*IVector(ChatRecipientDeliveryInfo) {
        var _r: *IVector(ChatRecipientDeliveryInfo) = undefined;
        const _c = self.vtable.get_RecipientsDeliveryInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessage2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86668332-543f-49f5-ac71-6c2afc6565fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EstimatedDownloadSize: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_EstimatedDownloadSize: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsAutoReply: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAutoReply: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_IsForwardingDisabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsReplyDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsIncoming: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_IsRead: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSeen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSeen: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSimMessage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LocalTimestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_MessageKind: *const fn(self: *anyopaque, _r: *ChatMessageKind) callconv(.winapi) HRESULT,
        put_MessageKind: *const fn(self: *anyopaque, value: ChatMessageKind) callconv(.winapi) HRESULT,
        get_MessageOperatorKind: *const fn(self: *anyopaque, _r: *ChatMessageOperatorKind) callconv(.winapi) HRESULT,
        put_MessageOperatorKind: *const fn(self: *anyopaque, value: ChatMessageOperatorKind) callconv(.winapi) HRESULT,
        put_NetworkTimestamp: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_IsReceivedDuringQuietHours: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsReceivedDuringQuietHours: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: ChatMessageStatus) callconv(.winapi) HRESULT,
        put_Subject: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ShouldSuppressNotification: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldSuppressNotification: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ThreadingInfo: *const fn(self: *anyopaque, _r: **ChatConversationThreadingInfo) callconv(.winapi) HRESULT,
        put_ThreadingInfo: *const fn(self: *anyopaque, value: *ChatConversationThreadingInfo) callconv(.winapi) HRESULT,
        get_RecipientsDeliveryInfos: *const fn(self: *anyopaque, _r: **IVector(ChatRecipientDeliveryInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessage3 = extern struct {
    vtable: *const VTable,
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessage3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74eb2fb0-3ba7-459f-8e0b-e8af0febd9ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessage4 = extern struct {
    vtable: *const VTable,
    pub fn getSyncId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SyncId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSyncId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SyncId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessage4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d144b0f-d2bf-460c-aa68-6d3f8483c9bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SyncId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SyncId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageAttachment = extern struct {
    vtable: *const VTable,
    pub fn getDataStreamReference(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_DataStreamReference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataStreamReference(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_DataStreamReference(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGroupId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_GroupId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGroupId(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_GroupId(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageAttachment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7c4fd74-bf63-58eb-508c-8b863ff16b67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataStreamReference: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_DataStreamReference: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_GroupId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_GroupId: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MimeType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MimeType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageAttachment2 = extern struct {
    vtable: *const VTable,
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
    pub fn getTransferProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TransferProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransferProgress(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TransferProgress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginalFileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OriginalFileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOriginalFileName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OriginalFileName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageAttachment2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ed99270-7dd1-4a87-a8ce-acdd87d80dc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_TransferProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TransferProgress: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OriginalFileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OriginalFileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageAttachmentFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateChatMessageAttachment(self: *@This(), mimeType: HSTRING, dataStreamReference: *IRandomAccessStreamReference) core.HResult!*ChatMessageAttachment {
        var _r: *ChatMessageAttachment = undefined;
        const _c = self.vtable.CreateChatMessageAttachment(@ptrCast(self), mimeType, dataStreamReference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageAttachmentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "205852a2-a356-5b71-6ca9-66c985b7d0d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateChatMessageAttachment: *const fn(self: *anyopaque, mimeType: HSTRING, dataStreamReference: *IRandomAccessStreamReference, _r: **ChatMessageAttachment) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageBlockingStatic = extern struct {
    vtable: *const VTable,
    pub fn MarkMessageAsBlockedAsync(self: *@This(), localChatMessageId: HSTRING, blocked: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessageAsBlockedAsync(@ptrCast(self), localChatMessageId, blocked, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageBlockingStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6b9a380-cdea-11e4-8830-0800200c9a66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MarkMessageAsBlockedAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, blocked: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageChange = extern struct {
    vtable: *const VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ChatMessageChangeType {
        var _r: ChatMessageChangeType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*ChatMessage {
        var _r: *ChatMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c18c355-421e-54b8-6d38-6b3a6c82fccc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *ChatMessageChangeType) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **ChatMessage) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageChangeReader = extern struct {
    vtable: *const VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const _c = self.vtable.AcceptChanges(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAcknowledge: *ChatMessageChange) core.HResult!void {
        const _c = self.vtable.AcceptChangesThrough(@ptrCast(self), lastChangeToAcknowledge);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatMessageChange)) {
        var _r: *IAsyncOperation(IVectorView(ChatMessageChange)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14267020-28ce-5f26-7b05-9a5c7cce87ca";
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
        AcceptChangesThrough: *const fn(self: *anyopaque, lastChangeToAcknowledge: *ChatMessageChange) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ChatMessageChange))) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageChangeTracker = extern struct {
    vtable: *const VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*ChatMessageChangeReader {
        var _r: *ChatMessageChangeReader = undefined;
        const _c = self.vtable.GetChangeReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60b7f066-70a0-5224-508c-242ef7c1d06f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Enable: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetChangeReader: *const fn(self: *anyopaque, _r: **ChatMessageChangeReader) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageChangedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbc6b30c-788c-4dcc-ace7-6282382968cf";
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
pub const IChatMessageChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ChatMessageChangedDeferral {
        var _r: *ChatMessageChangedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6b73e2d-691c-4edf-8660-6eb9896892e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **ChatMessageChangedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageManager2Statics = extern struct {
    vtable: *const VTable,
    pub fn RegisterTransportAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.RegisterTransportAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTransportAsync(self: *@This(), transportId: HSTRING) core.HResult!*IAsyncOperation(ChatMessageTransport) {
        var _r: *IAsyncOperation(ChatMessageTransport) = undefined;
        const _c = self.vtable.GetTransportAsync(@ptrCast(self), transportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageManager2Statics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d45390f-9f4f-4e35-964e-1b9ca61ac044";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterTransportAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetTransportAsync: *const fn(self: *anyopaque, transportId: HSTRING, _r: **IAsyncOperation(ChatMessageTransport)) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageManagerStatic = extern struct {
    vtable: *const VTable,
    pub fn GetTransportsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatMessageTransport)) {
        var _r: *IAsyncOperation(IVectorView(ChatMessageTransport)) = undefined;
        const _c = self.vtable.GetTransportsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(ChatMessageStore) {
        var _r: *IAsyncOperation(ChatMessageStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowComposeSmsMessageAsync(self: *@This(), message: *ChatMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowComposeSmsMessageAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowSmsSettings(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowSmsSettings(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageManagerStatic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f15c60f7-d5e8-5e92-556d-e03b60253104";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTransportsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ChatMessageTransport))) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ChatMessageStore)) callconv(.winapi) HRESULT,
        ShowComposeSmsMessageAsync: *const fn(self: *anyopaque, message: *ChatMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowSmsSettings: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn RequestSyncManagerAsync(self: *@This()) core.HResult!*IAsyncOperation(ChatSyncManager) {
        var _r: *IAsyncOperation(ChatSyncManager) = undefined;
        const _c = self.vtable.RequestSyncManagerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "208b830d-6755-48cc-9ab3-fd03c463fc92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestSyncManagerAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ChatSyncManager)) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getChatMessage(self: *@This()) core.HResult!*ChatMessage {
        var _r: *ChatMessage = undefined;
        const _c = self.vtable.get_ChatMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd344dfb-3063-4e17-8586-c6c08262e6c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChatMessage: *const fn(self: *anyopaque, _r: **ChatMessage) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageNotificationTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getShouldDisplayToast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldDisplayToast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldUpdateDetailText(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldUpdateDetailText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldUpdateBadge(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldUpdateBadge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldUpdateActionCenter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldUpdateActionCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageNotificationTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bb522e0-aa07-4fd1-9471-77934fb75ee6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldDisplayToast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ShouldUpdateDetailText: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ShouldUpdateBadge: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ShouldUpdateActionCenter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ChatMessage)) {
        var _r: *IAsyncOperation(IVectorView(ChatMessage)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6ea78ce-4489-56f9-76aa-e204682514cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ChatMessage))) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageReader2 = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(ChatMessage)) {
        var _r: *IAsyncOperation(IVectorView(ChatMessage)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageReader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89643683-64bb-470d-9df4-0de8be1a05bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, count: i32, _r: **IAsyncOperation(IVectorView(ChatMessage))) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageStore = extern struct {
    vtable: *const VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*ChatMessageChangeTracker {
        var _r: *ChatMessageChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteMessageAsync(self: *@This(), localMessageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteMessageAsync(@ptrCast(self), localMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DownloadMessageAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        var _r: *IAsyncOperation(ChatMessage) = undefined;
        const _c = self.vtable.GetMessageAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This()) core.HResult!*ChatMessageReader {
        var _r: *ChatMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageReader(self: *@This(), recentTimeLimit: TimeSpan) core.HResult!*ChatMessageReader {
        var _r: *ChatMessageReader = undefined;
        const _c = self.vtable.GetMessageReader(@ptrCast(self), recentTimeLimit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkMessageReadAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkMessageReadAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrySendMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RetrySendMessageAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendMessageAsync(self: *@This(), chatMessage: *ChatMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendMessageAsync(@ptrCast(self), chatMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ValidateMessage(self: *@This(), chatMessage: *ChatMessage) core.HResult!*ChatMessageValidationResult {
        var _r: *ChatMessageValidationResult = undefined;
        const _c = self.vtable.ValidateMessage(@ptrCast(self), chatMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMessageChanged(self: *@This(), value: *TypedEventHandler(ChatMessageStore,ChatMessageChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageChanged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31f2fd01-ccf6-580b-4976-0a07dd5d3b47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **ChatMessageChangeTracker) callconv(.winapi) HRESULT,
        DeleteMessageAsync: *const fn(self: *anyopaque, localMessageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DownloadMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncOperation(ChatMessage)) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, _r: **ChatMessageReader) callconv(.winapi) HRESULT,
        GetMessageReader: *const fn(self: *anyopaque, recentTimeLimit: TimeSpan, _r: **ChatMessageReader) callconv(.winapi) HRESULT,
        MarkMessageReadAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RetrySendMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SendMessageAsync: *const fn(self: *anyopaque, chatMessage: *ChatMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ValidateMessage: *const fn(self: *anyopaque, chatMessage: *ChatMessage, _r: **ChatMessageValidationResult) callconv(.winapi) HRESULT,
        add_MessageChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(ChatMessageStore,ChatMessageChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageChanged: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageStore2 = extern struct {
    vtable: *const VTable,
    pub fn ForwardMessageAsync(self: *@This(), localChatMessageId: HSTRING, addresses: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ChatMessage) {
        var _r: *IAsyncOperation(ChatMessage) = undefined;
        const _c = self.vtable.ForwardMessageAsync(@ptrCast(self), localChatMessageId, addresses, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationAsync(self: *@This(), conversationId: HSTRING) core.HResult!*IAsyncOperation(ChatConversation) {
        var _r: *IAsyncOperation(ChatConversation) = undefined;
        const _c = self.vtable.GetConversationAsync(@ptrCast(self), conversationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationAsync(self: *@This(), conversationId: HSTRING, transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ChatConversation) {
        var _r: *IAsyncOperation(ChatConversation) = undefined;
        const _c = self.vtable.GetConversationAsync(@ptrCast(self), conversationId, transportIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationFromThreadingInfoAsync(self: *@This(), threadingInfo: *ChatConversationThreadingInfo) core.HResult!*IAsyncOperation(ChatConversation) {
        var _r: *IAsyncOperation(ChatConversation) = undefined;
        const _c = self.vtable.GetConversationFromThreadingInfoAsync(@ptrCast(self), threadingInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This()) core.HResult!*ChatConversationReader {
        var _r: *ChatConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConversationReader(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*ChatConversationReader {
        var _r: *ChatConversationReader = undefined;
        const _c = self.vtable.GetConversationReader(@ptrCast(self), transportIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMessageByRemoteIdAsync(self: *@This(), transportId: HSTRING, remoteId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        var _r: *IAsyncOperation(ChatMessage) = undefined;
        const _c = self.vtable.GetMessageByRemoteIdAsync(@ptrCast(self), transportId, remoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnseenCountAsync(self: *@This()) core.HResult!*IAsyncOperation(i32) {
        var _r: *IAsyncOperation(i32) = undefined;
        const _c = self.vtable.GetUnseenCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnseenCountAsync(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(i32) {
        var _r: *IAsyncOperation(i32) = undefined;
        const _c = self.vtable.GetUnseenCountAsync(@ptrCast(self), transportIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkAsSeenAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkAsSeenAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkAsSeenAsync(self: *@This(), transportIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkAsSeenAsync(@ptrCast(self), transportIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSearchReader(self: *@This(), value: *ChatQueryOptions) core.HResult!*ChatSearchReader {
        var _r: *ChatSearchReader = undefined;
        const _c = self.vtable.GetSearchReader(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveMessageAsync(self: *@This(), chatMessage: *ChatMessage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveMessageAsync(@ptrCast(self), chatMessage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCancelDownloadMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCancelDownloadMessageAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCancelSendMessageAsync(self: *@This(), localChatMessageId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCancelSendMessageAsync(@ptrCast(self), localChatMessageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStoreChanged(self: *@This(), handler: *TypedEventHandler(ChatMessageStore,ChatMessageStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StoreChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StoreChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad4dc4ee-3ad4-491b-b311-abdf9bb22768";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ForwardMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, addresses: *IIterable(HSTRING), _r: **IAsyncOperation(ChatMessage)) callconv(.winapi) HRESULT,
        GetConversationAsync: *const fn(self: *anyopaque, conversationId: HSTRING, _r: **IAsyncOperation(ChatConversation)) callconv(.winapi) HRESULT,
        GetConversationAsync: *const fn(self: *anyopaque, conversationId: HSTRING, transportIds: *IIterable(HSTRING), _r: **IAsyncOperation(ChatConversation)) callconv(.winapi) HRESULT,
        GetConversationFromThreadingInfoAsync: *const fn(self: *anyopaque, threadingInfo: *ChatConversationThreadingInfo, _r: **IAsyncOperation(ChatConversation)) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, _r: **ChatConversationReader) callconv(.winapi) HRESULT,
        GetConversationReader: *const fn(self: *anyopaque, transportIds: *IIterable(HSTRING), _r: **ChatConversationReader) callconv(.winapi) HRESULT,
        GetMessageByRemoteIdAsync: *const fn(self: *anyopaque, transportId: HSTRING, remoteId: HSTRING, _r: **IAsyncOperation(ChatMessage)) callconv(.winapi) HRESULT,
        GetUnseenCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(i32)) callconv(.winapi) HRESULT,
        GetUnseenCountAsync: *const fn(self: *anyopaque, transportIds: *IIterable(HSTRING), _r: **IAsyncOperation(i32)) callconv(.winapi) HRESULT,
        MarkAsSeenAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkAsSeenAsync: *const fn(self: *anyopaque, transportIds: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetSearchReader: *const fn(self: *anyopaque, value: *ChatQueryOptions, _r: **ChatSearchReader) callconv(.winapi) HRESULT,
        SaveMessageAsync: *const fn(self: *anyopaque, chatMessage: *ChatMessage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TryCancelDownloadMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryCancelSendMessageAsync: *const fn(self: *anyopaque, localChatMessageId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_StoreChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ChatMessageStore,ChatMessageStoreChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StoreChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageStore3 = extern struct {
    vtable: *const VTable,
    pub fn GetMessageBySyncIdAsync(self: *@This(), syncId: HSTRING) core.HResult!*IAsyncOperation(ChatMessage) {
        var _r: *IAsyncOperation(ChatMessage) = undefined;
        const _c = self.vtable.GetMessageBySyncIdAsync(@ptrCast(self), syncId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageStore3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9adbbb09-4345-4ec1-8b74-b7338243719c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetMessageBySyncIdAsync: *const fn(self: *anyopaque, syncId: HSTRING, _r: **IAsyncOperation(ChatMessage)) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageStoreChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!ChatStoreChangedEventKind {
        var _r: ChatStoreChangedEventKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65c66fac-fe8c-46d4-9119-57b8410311d5";
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
        get_Kind: *const fn(self: *anyopaque, _r: *ChatStoreChangedEventKind) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageTransport = extern struct {
    vtable: *const VTable,
    pub fn getIsAppSetAsNotificationProvider(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppSetAsNotificationProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestSetAsNotificationProviderAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RequestSetAsNotificationProviderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageTransport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a9dbf8-e6b3-5c9a-5f85-d47925b9bd18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAppSetAsNotificationProvider: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TransportFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TransportId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RequestSetAsNotificationProviderAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageTransport2 = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*ChatMessageTransportConfiguration {
        var _r: *ChatMessageTransportConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportKind(self: *@This()) core.HResult!ChatMessageTransportKind {
        var _r: ChatMessageTransportKind = undefined;
        const _c = self.vtable.get_TransportKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageTransport2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90a75622-d84a-4c22-a94d-544444edc8a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **ChatMessageTransportConfiguration) callconv(.winapi) HRESULT,
        get_TransportKind: *const fn(self: *anyopaque, _r: *ChatMessageTransportKind) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageTransportConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getMaxAttachmentCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxAttachmentCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxMessageSizeInKilobytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxRecipientCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxRecipientCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedVideoFormat(self: *@This()) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.get_SupportedVideoFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageTransportConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "879ff725-1a08-4aca-a075-3355126312e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxAttachmentCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxMessageSizeInKilobytes: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxRecipientCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SupportedVideoFormat: *const fn(self: *anyopaque, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IChatMessageValidationResult = extern struct {
    vtable: *const VTable,
    pub fn getMaxPartCount(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxPartCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartCount(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_PartCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemainingCharacterCountInPart(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_RemainingCharacterCountInPart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageValidationStatus {
        var _r: ChatMessageValidationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatMessageValidationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25e93a03-28ec-5889-569b-7e486b126f18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPartCount: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_PartCount: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_RemainingCharacterCountInPart: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ChatMessageValidationStatus) callconv(.winapi) HRESULT,
    };
};
pub const IChatQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getSearchString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SearchString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchString(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SearchString(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2fd364a6-bf36-42f7-b7e7-923c0aabfe16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SearchString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SearchString: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IChatRecipientDeliveryInfo = extern struct {
    vtable: *const VTable,
    pub fn getTransportAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransportAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TransportAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeliveryTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_DeliveryTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeliveryTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_DeliveryTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReadTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ReadTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReadTime(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ReadTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransportErrorCodeCategory(self: *@This()) core.HResult!ChatTransportErrorCodeCategory {
        var _r: ChatTransportErrorCodeCategory = undefined;
        const _c = self.vtable.get_TransportErrorCodeCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportInterpretedErrorCode(self: *@This()) core.HResult!ChatTransportInterpretedErrorCode {
        var _r: ChatTransportInterpretedErrorCode = undefined;
        const _c = self.vtable.get_TransportInterpretedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportErrorCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TransportErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsErrorPermanent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsErrorPermanent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!ChatMessageStatus {
        var _r: ChatMessageStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatRecipientDeliveryInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffc7b2a2-283c-4c0a-8a0e-8c33bdbf0545";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransportAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TransportAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DeliveryTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_DeliveryTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_ReadTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ReadTime: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_TransportErrorCodeCategory: *const fn(self: *anyopaque, _r: *ChatTransportErrorCodeCategory) callconv(.winapi) HRESULT,
        get_TransportInterpretedErrorCode: *const fn(self: *anyopaque, _r: *ChatTransportInterpretedErrorCode) callconv(.winapi) HRESULT,
        get_TransportErrorCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsErrorPermanent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ChatMessageStatus) callconv(.winapi) HRESULT,
    };
};
pub const IChatSearchReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(IChatItem)) {
        var _r: *IAsyncOperation(IVectorView(IChatItem)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadBatchAsync(self: *@This(), count: i32) core.HResult!*IAsyncOperation(IVectorView(IChatItem)) {
        var _r: *IAsyncOperation(IVectorView(IChatItem)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatSearchReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4665fe49-9020-4752-980d-39612325f589";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(IChatItem))) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, count: i32, _r: **IAsyncOperation(IVectorView(IChatItem))) callconv(.winapi) HRESULT,
    };
};
pub const IChatSyncConfiguration = extern struct {
    vtable: *const VTable,
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
    pub fn getRestoreHistorySpan(self: *@This()) core.HResult!ChatRestoreHistorySpan {
        var _r: ChatRestoreHistorySpan = undefined;
        const _c = self.vtable.get_RestoreHistorySpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRestoreHistorySpan(self: *@This(), value: ChatRestoreHistorySpan) core.HResult!void {
        const _c = self.vtable.put_RestoreHistorySpan(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatSyncConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09f869b2-69f4-4aff-82b6-06992ff402d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSyncEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSyncEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RestoreHistorySpan: *const fn(self: *anyopaque, _r: *ChatRestoreHistorySpan) callconv(.winapi) HRESULT,
        put_RestoreHistorySpan: *const fn(self: *anyopaque, value: ChatRestoreHistorySpan) callconv(.winapi) HRESULT,
    };
};
pub const IChatSyncManager = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*ChatSyncConfiguration {
        var _r: *ChatSyncConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AssociateAccountAsync(self: *@This(), webAccount: *WebAccount) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AssociateAccountAsync(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnassociateAccountAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnassociateAccountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAccountAssociated(self: *@This(), webAccount: *WebAccount) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAccountAssociated(@ptrCast(self), webAccount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartSync(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartSync(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetConfigurationAsync(self: *@This(), configuration: *ChatSyncConfiguration) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetConfigurationAsync(@ptrCast(self), configuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IChatSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ba52c63-2650-486f-b4b4-6bd9d3d63c84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **ChatSyncConfiguration) callconv(.winapi) HRESULT,
        AssociateAccountAsync: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UnassociateAccountAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        IsAccountAssociated: *const fn(self: *anyopaque, webAccount: *WebAccount, _r: *bool) callconv(.winapi) HRESULT,
        StartSync: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetConfigurationAsync: *const fn(self: *anyopaque, configuration: *ChatSyncConfiguration, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessage = extern struct {
    vtable: *const VTable,
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPinRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPinRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActions(self: *@This()) core.HResult!*IVectorView(RcsEndUserMessageAction) {
        var _r: *IVectorView(RcsEndUserMessageAction) = undefined;
        const _c = self.vtable.get_Actions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendResponseAsync(self: *@This(), action: *RcsEndUserMessageAction) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendResponseAsync(@ptrCast(self), action, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendResponseWithPinAsync(self: *@This(), action: *RcsEndUserMessageAction, pin: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendResponseWithPinAsync(@ptrCast(self), action, pin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsEndUserMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7cda5eb-cbd7-4f3b-8526-b506dec35c53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransportId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsPinRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Actions: *const fn(self: *anyopaque, _r: **IVectorView(RcsEndUserMessageAction)) callconv(.winapi) HRESULT,
        SendResponseAsync: *const fn(self: *anyopaque, action: *RcsEndUserMessageAction, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SendResponseWithPinAsync: *const fn(self: *anyopaque, action: *RcsEndUserMessageAction, pin: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessageAction = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsEndUserMessageAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92378737-9b42-46d3-9d5e-3c1b2dae7cb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessageAvailableEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsMessageAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMessageAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*RcsEndUserMessage {
        var _r: *RcsEndUserMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d45ae01-3f89-41ea-9702-9e9ed411aa98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsMessageAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **RcsEndUserMessage) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessageAvailableTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsEndUserMessageAvailableTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b97742d-351f-4692-b41e-1b035dc18986";
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
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRcsEndUserMessageManager = extern struct {
    vtable: *const VTable,
    pub fn addMessageAvailableChanged(self: *@This(), handler: *TypedEventHandler(RcsEndUserMessageManager,RcsEndUserMessageAvailableEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageAvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageAvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsEndUserMessageManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3054ae5a-4d1f-4b59-9433-126c734e86a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MessageAvailableChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(RcsEndUserMessageManager,RcsEndUserMessageAvailableEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageAvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRcsManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetEndUserMessageManager(self: *@This()) core.HResult!*RcsEndUserMessageManager {
        var _r: *RcsEndUserMessageManager = undefined;
        const _c = self.vtable.GetEndUserMessageManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTransportsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(RcsTransport)) {
        var _r: *IAsyncOperation(IVectorView(RcsTransport)) = undefined;
        const _c = self.vtable.GetTransportsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTransportAsync(self: *@This(), transportId: HSTRING) core.HResult!*IAsyncOperation(RcsTransport) {
        var _r: *IAsyncOperation(RcsTransport) = undefined;
        const _c = self.vtable.GetTransportAsync(@ptrCast(self), transportId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LeaveConversationAsync(self: *@This(), conversation: *ChatConversation) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LeaveConversationAsync(@ptrCast(self), conversation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d270ac5-0abd-4f31-9b99-a59e71a7b731";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetEndUserMessageManager: *const fn(self: *anyopaque, _r: **RcsEndUserMessageManager) callconv(.winapi) HRESULT,
        GetTransportsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(RcsTransport))) callconv(.winapi) HRESULT,
        GetTransportAsync: *const fn(self: *anyopaque, transportId: HSTRING, _r: **IAsyncOperation(RcsTransport)) callconv(.winapi) HRESULT,
        LeaveConversationAsync: *const fn(self: *anyopaque, conversation: *ChatConversation, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IRcsManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn addTransportListChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransportListChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransportListChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransportListChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd49ad18-ad8a-42aa-8eeb-a798a8808959";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_TransportListChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransportListChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRcsServiceKindSupportedChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getServiceKind(self: *@This()) core.HResult!RcsServiceKind {
        var _r: RcsServiceKind = undefined;
        const _c = self.vtable.get_ServiceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsServiceKindSupportedChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f47ea244-e783-4866-b3a7-4e5ccf023070";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceKind: *const fn(self: *anyopaque, _r: *RcsServiceKind) callconv(.winapi) HRESULT,
    };
};
pub const IRcsTransport = extern struct {
    vtable: *const VTable,
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportFriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*RcsTransportConfiguration {
        var _r: *RcsTransportConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsStoreAndForwardEnabled(self: *@This(), serviceKind: RcsServiceKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsStoreAndForwardEnabled(@ptrCast(self), serviceKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsServiceKindSupported(self: *@This(), serviceKind: RcsServiceKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsServiceKindSupported(@ptrCast(self), serviceKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addServiceKindSupportedChanged(self: *@This(), handler: *TypedEventHandler(RcsTransport,RcsServiceKindSupportedChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServiceKindSupportedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServiceKindSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServiceKindSupportedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsTransport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fea34759-f37c-4319-8546-ec84d21d30ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TransportFriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TransportId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **RcsTransportConfiguration) callconv(.winapi) HRESULT,
        IsStoreAndForwardEnabled: *const fn(self: *anyopaque, serviceKind: RcsServiceKind, _r: *bool) callconv(.winapi) HRESULT,
        IsServiceKindSupported: *const fn(self: *anyopaque, serviceKind: RcsServiceKind, _r: *bool) callconv(.winapi) HRESULT,
        add_ServiceKindSupportedChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(RcsTransport,RcsServiceKindSupportedChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServiceKindSupportedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRcsTransportConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getMaxAttachmentCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxAttachmentCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxMessageSizeInKilobytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxGroupMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxGroupMessageSizeInKilobytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxRecipientCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxRecipientCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxFileSizeInKilobytes(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxFileSizeInKilobytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWarningFileSizeInKilobytes(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_WarningFileSizeInKilobytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRcsTransportConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1fccb102-2472-4bb9-9988-c1211c83e8a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxAttachmentCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxMessageSizeInKilobytes: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxGroupMessageSizeInKilobytes: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxRecipientCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MaxFileSizeInKilobytes: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_WarningFileSizeInKilobytes: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteParticipantComposingChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getParticipantAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ParticipantAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComposing(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComposing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.IRemoteParticipantComposingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ec045a7-cfc9-45c9-9876-449f2bc180f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransportId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ParticipantAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsComposing: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const RcsEndUserMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.getTransportId();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.getText();
    }
    pub fn getIsPinRequired(self: *@This()) core.HResult!bool {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.getIsPinRequired();
    }
    pub fn getActions(self: *@This()) core.HResult!*IVectorView(RcsEndUserMessageAction) {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.getActions();
    }
    pub fn SendResponseAsync(self: *@This(), action: *RcsEndUserMessageAction) core.HResult!*IAsyncAction {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.SendResponseAsync(action);
    }
    pub fn SendResponseWithPinAsync(self: *@This(), action: *RcsEndUserMessageAction, pin: HSTRING) core.HResult!*IAsyncAction {
        const this: *IRcsEndUserMessage = @ptrCast(self);
        return try this.SendResponseWithPinAsync(action, pin);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsEndUserMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessage.GUID;
    pub const IID: Guid = IRcsEndUserMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessage.SIGNATURE);
};
pub const RcsEndUserMessageAction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessageAction = @ptrCast(self);
        return try this.getLabel();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsEndUserMessageAction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessageAction.GUID;
    pub const IID: Guid = IRcsEndUserMessageAction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessageAction.SIGNATURE);
};
pub const RcsEndUserMessageAvailableEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsMessageAvailable(self: *@This()) core.HResult!bool {
        const this: *IRcsEndUserMessageAvailableEventArgs = @ptrCast(self);
        return try this.getIsMessageAvailable();
    }
    pub fn getMessage(self: *@This()) core.HResult!*RcsEndUserMessage {
        const this: *IRcsEndUserMessageAvailableEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessageAvailableEventArgs.GUID;
    pub const IID: Guid = IRcsEndUserMessageAvailableEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessageAvailableEventArgs.SIGNATURE);
};
pub const RcsEndUserMessageAvailableTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessageAvailableTriggerDetails = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsEndUserMessageAvailableTriggerDetails = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsEndUserMessageAvailableTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessageAvailableTriggerDetails.GUID;
    pub const IID: Guid = IRcsEndUserMessageAvailableTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessageAvailableTriggerDetails.SIGNATURE);
};
pub const RcsEndUserMessageManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMessageAvailableChanged(self: *@This(), handler: *TypedEventHandler(RcsEndUserMessageManager,RcsEndUserMessageAvailableEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRcsEndUserMessageManager = @ptrCast(self);
        return try this.addMessageAvailableChanged(handler);
    }
    pub fn removeMessageAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRcsEndUserMessageManager = @ptrCast(self);
        return try this.removeMessageAvailableChanged(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsEndUserMessageManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsEndUserMessageManager.GUID;
    pub const IID: Guid = IRcsEndUserMessageManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsEndUserMessageManager.SIGNATURE);
};
pub const RcsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addTransportListChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IRcsManagerStatics2Cache.get();
        return try factory.addTransportListChanged(handler);
    }
    pub fn removeTransportListChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IRcsManagerStatics2Cache.get();
        return try factory.removeTransportListChanged(token);
    }
    pub fn GetEndUserMessageManager() core.HResult!*RcsEndUserMessageManager {
        const factory = @This().IRcsManagerStaticsCache.get();
        return try factory.GetEndUserMessageManager();
    }
    pub fn GetTransportsAsync() core.HResult!*IAsyncOperation(IVectorView(RcsTransport)) {
        const factory = @This().IRcsManagerStaticsCache.get();
        return try factory.GetTransportsAsync();
    }
    pub fn GetTransportAsync(transportId: HSTRING) core.HResult!*IAsyncOperation(RcsTransport) {
        const factory = @This().IRcsManagerStaticsCache.get();
        return try factory.GetTransportAsync(transportId);
    }
    pub fn LeaveConversationAsync(conversation: *ChatConversation) core.HResult!*IAsyncAction {
        const factory = @This().IRcsManagerStaticsCache.get();
        return try factory.LeaveConversationAsync(conversation);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRcsManagerStatics2Cache: FactoryCache(IRcsManagerStatics2, RUNTIME_NAME) = .{};
    var _IRcsManagerStaticsCache: FactoryCache(IRcsManagerStatics, RUNTIME_NAME) = .{};
};
pub const RcsServiceKind = enum(i32) {
    Chat = 0,
    GroupChat = 1,
    FileTransfer = 2,
    Capability = 3,
};
pub const RcsServiceKindSupportedChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getServiceKind(self: *@This()) core.HResult!RcsServiceKind {
        const this: *IRcsServiceKindSupportedChangedEventArgs = @ptrCast(self);
        return try this.getServiceKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsServiceKindSupportedChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsServiceKindSupportedChangedEventArgs.GUID;
    pub const IID: Guid = IRcsServiceKindSupportedChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsServiceKindSupportedChangedEventArgs.SIGNATURE);
};
pub const RcsTransport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.getExtendedProperties();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getTransportFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.getTransportFriendlyName();
    }
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.getTransportId();
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*RcsTransportConfiguration {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.getConfiguration();
    }
    pub fn IsStoreAndForwardEnabled(self: *@This(), serviceKind: RcsServiceKind) core.HResult!bool {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.IsStoreAndForwardEnabled(serviceKind);
    }
    pub fn IsServiceKindSupported(self: *@This(), serviceKind: RcsServiceKind) core.HResult!bool {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.IsServiceKindSupported(serviceKind);
    }
    pub fn addServiceKindSupportedChanged(self: *@This(), handler: *TypedEventHandler(RcsTransport,RcsServiceKindSupportedChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.addServiceKindSupportedChanged(handler);
    }
    pub fn removeServiceKindSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRcsTransport = @ptrCast(self);
        return try this.removeServiceKindSupportedChanged(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsTransport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsTransport.GUID;
    pub const IID: Guid = IRcsTransport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsTransport.SIGNATURE);
};
pub const RcsTransportConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxAttachmentCount(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getMaxAttachmentCount();
    }
    pub fn getMaxMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getMaxMessageSizeInKilobytes();
    }
    pub fn getMaxGroupMessageSizeInKilobytes(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getMaxGroupMessageSizeInKilobytes();
    }
    pub fn getMaxRecipientCount(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getMaxRecipientCount();
    }
    pub fn getMaxFileSizeInKilobytes(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getMaxFileSizeInKilobytes();
    }
    pub fn getWarningFileSizeInKilobytes(self: *@This()) core.HResult!i32 {
        const this: *IRcsTransportConfiguration = @ptrCast(self);
        return try this.getWarningFileSizeInKilobytes();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RcsTransportConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRcsTransportConfiguration.GUID;
    pub const IID: Guid = IRcsTransportConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRcsTransportConfiguration.SIGNATURE);
};
pub const RemoteParticipantComposingChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransportId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteParticipantComposingChangedEventArgs = @ptrCast(self);
        return try this.getTransportId();
    }
    pub fn getParticipantAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteParticipantComposingChangedEventArgs = @ptrCast(self);
        return try this.getParticipantAddress();
    }
    pub fn getIsComposing(self: *@This()) core.HResult!bool {
        const this: *IRemoteParticipantComposingChangedEventArgs = @ptrCast(self);
        return try this.getIsComposing();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Chat.RemoteParticipantComposingChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteParticipantComposingChangedEventArgs.GUID;
    pub const IID: Guid = IRemoteParticipantComposingChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteParticipantComposingChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const MediaEncodingProfile = @import("../Media/MediaProperties.zig").MediaEncodingProfile;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const WebAccount = @import("../Security/Credentials.zig").WebAccount;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
