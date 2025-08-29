pub const ContactDataProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactDataProviderConnection = @ptrCast(self);
        return try this.addSyncRequested(handler);
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactDataProviderConnection = @ptrCast(self);
        return try this.removeSyncRequested(token);
    }
    pub fn addServerSearchReadBatchRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListServerSearchReadBatchRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactDataProviderConnection = @ptrCast(self);
        return try this.addServerSearchReadBatchRequested(handler);
    }
    pub fn removeServerSearchReadBatchRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactDataProviderConnection = @ptrCast(self);
        return try this.removeServerSearchReadBatchRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IContactDataProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub fn addCreateOrUpdateContactRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListCreateOrUpdateContactRequestEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IContactDataProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactDataProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCreateOrUpdateContactRequested(handler);
    }
    pub fn removeCreateOrUpdateContactRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IContactDataProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactDataProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCreateOrUpdateContactRequested(token);
    }
    pub fn addDeleteContactRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListDeleteContactRequestEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IContactDataProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactDataProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addDeleteContactRequested(handler);
    }
    pub fn removeDeleteContactRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IContactDataProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactDataProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeDeleteContactRequested(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactDataProviderConnection.GUID;
    pub const IID: Guid = IContactDataProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactDataProviderConnection.SIGNATURE);
};
pub const ContactDataProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*ContactDataProviderConnection {
        const this: *IContactDataProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactDataProviderTriggerDetails.GUID;
    pub const IID: Guid = IContactDataProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactDataProviderTriggerDetails.SIGNATURE);
};
pub const ContactListCreateOrUpdateContactRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListCreateOrUpdateContactRequest = @ptrCast(self);
        return try this.getContactListId();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactListCreateOrUpdateContactRequest = @ptrCast(self);
        return try this.getContact();
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedContact: *Contact) core.HResult!*IAsyncAction {
        const this: *IContactListCreateOrUpdateContactRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(createdOrUpdatedContact);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListCreateOrUpdateContactRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListCreateOrUpdateContactRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListCreateOrUpdateContactRequest.GUID;
    pub const IID: Guid = IContactListCreateOrUpdateContactRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListCreateOrUpdateContactRequest.SIGNATURE);
};
pub const ContactListCreateOrUpdateContactRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListCreateOrUpdateContactRequest {
        const this: *IContactListCreateOrUpdateContactRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IContactListCreateOrUpdateContactRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListCreateOrUpdateContactRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListCreateOrUpdateContactRequestEventArgs.GUID;
    pub const IID: Guid = IContactListCreateOrUpdateContactRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListCreateOrUpdateContactRequestEventArgs.SIGNATURE);
};
pub const ContactListDeleteContactRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListDeleteContactRequest = @ptrCast(self);
        return try this.getContactListId();
    }
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListDeleteContactRequest = @ptrCast(self);
        return try this.getContactId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListDeleteContactRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListDeleteContactRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListDeleteContactRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListDeleteContactRequest.GUID;
    pub const IID: Guid = IContactListDeleteContactRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListDeleteContactRequest.SIGNATURE);
};
pub const ContactListDeleteContactRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListDeleteContactRequest {
        const this: *IContactListDeleteContactRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IContactListDeleteContactRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListDeleteContactRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListDeleteContactRequestEventArgs.GUID;
    pub const IID: Guid = IContactListDeleteContactRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListDeleteContactRequestEventArgs.SIGNATURE);
};
pub const ContactListServerSearchReadBatchRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getContactListId();
    }
    pub fn getOptions(self: *@This()) core.HResult!*ContactQueryOptions {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getOptions();
    }
    pub fn getSuggestedBatchSize(self: *@This()) core.HResult!u32 {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.getSuggestedBatchSize();
    }
    pub fn SaveContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.SaveContactAsync(contact);
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This(), batchStatus: ContactBatchStatus) core.HResult!*IAsyncAction {
        const this: *IContactListServerSearchReadBatchRequest = @ptrCast(self);
        return try this.ReportFailedAsync(batchStatus);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListServerSearchReadBatchRequest.GUID;
    pub const IID: Guid = IContactListServerSearchReadBatchRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListServerSearchReadBatchRequest.SIGNATURE);
};
pub const ContactListServerSearchReadBatchRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListServerSearchReadBatchRequest {
        const this: *IContactListServerSearchReadBatchRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IContactListServerSearchReadBatchRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListServerSearchReadBatchRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListServerSearchReadBatchRequestEventArgs.GUID;
    pub const IID: Guid = IContactListServerSearchReadBatchRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListServerSearchReadBatchRequestEventArgs.SIGNATURE);
};
pub const ContactListSyncManagerSyncRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactListSyncManagerSyncRequest = @ptrCast(self);
        return try this.getContactListId();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactListSyncManagerSyncRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListSyncManagerSyncRequest.GUID;
    pub const IID: Guid = IContactListSyncManagerSyncRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListSyncManagerSyncRequest.SIGNATURE);
};
pub const ContactListSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListSyncManagerSyncRequest {
        const this: *IContactListSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IContactListSyncManagerSyncRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.ContactListSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListSyncManagerSyncRequestEventArgs.GUID;
    pub const IID: Guid = IContactListSyncManagerSyncRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListSyncManagerSyncRequestEventArgs.SIGNATURE);
};
pub const IContactDataProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn addSyncRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListSyncManagerSyncRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addServerSearchReadBatchRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListServerSearchReadBatchRequestEventArgs)) core.HResult!EventRegistrationToken {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a398a52-8c9d-4d6f-a4e0-111e9a125a30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SyncRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactDataProviderConnection,ContactListSyncManagerSyncRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ServerSearchReadBatchRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactDataProviderConnection,ContactListServerSearchReadBatchRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServerSearchReadBatchRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IContactDataProviderConnection2 = extern struct {
    vtable: *const VTable,
    pub fn addCreateOrUpdateContactRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListCreateOrUpdateContactRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CreateOrUpdateContactRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCreateOrUpdateContactRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CreateOrUpdateContactRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeleteContactRequested(self: *@This(), handler: *TypedEventHandler(ContactDataProviderConnection,ContactListDeleteContactRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DeleteContactRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeleteContactRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DeleteContactRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderConnection2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1d327b0-196c-4bfd-8f0f-c68d67f249d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CreateOrUpdateContactRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactDataProviderConnection,ContactListCreateOrUpdateContactRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CreateOrUpdateContactRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DeleteContactRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactDataProviderConnection,ContactListDeleteContactRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DeleteContactRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IContactDataProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*ContactDataProviderConnection {
        var _r: *ContactDataProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactDataProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "527104be-3c62-43c8-9ae7-db531685cd99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **ContactDataProviderConnection) callconv(.winapi) HRESULT,
    };
};
pub const IContactListCreateOrUpdateContactRequest = extern struct {
    vtable: *const VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), createdOrUpdatedContact: *Contact) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), createdOrUpdatedContact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListCreateOrUpdateContactRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4af411f-c849-47d0-b119-91cf605b2f2a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, createdOrUpdatedContact: *Contact, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContactListCreateOrUpdateContactRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListCreateOrUpdateContactRequest {
        var _r: *ContactListCreateOrUpdateContactRequest = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListCreateOrUpdateContactRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "851c1690-1a51-4b0c-aeef-1240ac5bed75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **ContactListCreateOrUpdateContactRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactListDeleteContactRequest = extern struct {
    vtable: *const VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactId(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListDeleteContactRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e114687-ce03-4de5-8557-9ccf552d472a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContactId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContactListDeleteContactRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListDeleteContactRequest {
        var _r: *ContactListDeleteContactRequest = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListDeleteContactRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b22054a1-e8fa-4db5-9389-2d12ee7d15ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **ContactListDeleteContactRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactListServerSearchReadBatchRequest = extern struct {
    vtable: *const VTable,
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOptions(self: *@This()) core.HResult!*ContactQueryOptions {
        var _r: *ContactQueryOptions = undefined;
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
    pub fn SaveContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This(), batchStatus: ContactBatchStatus) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), batchStatus, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba776a97-4030-4925-9fb4-143b295e653b";
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
        get_ContactListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Options: *const fn(self: *anyopaque, _r: **ContactQueryOptions) callconv(.winapi) HRESULT,
        get_SuggestedBatchSize: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SaveContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, batchStatus: ContactBatchStatus, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContactListServerSearchReadBatchRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListServerSearchReadBatchRequest {
        var _r: *ContactListServerSearchReadBatchRequest = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListServerSearchReadBatchRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a27e87b-69d7-4e4e-8042-861cba61471e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **ContactListServerSearchReadBatchRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactListSyncManagerSyncRequest = extern struct {
    vtable: *const VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c0e57a4-c4e7-4970-9a8f-9a66a2bb6c1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContactListSyncManagerSyncRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*ContactListSyncManagerSyncRequest {
        var _r: *ContactListSyncManagerSyncRequest = undefined;
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.DataProvider.IContactListSyncManagerSyncRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "158e4dac-446d-4f10-afc2-02683ec533a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **ContactListSyncManagerSyncRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const ContactQueryOptions = @import("../Contacts.zig").ContactQueryOptions;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Contact = @import("../Contacts.zig").Contact;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const ContactBatchStatus = @import("../Contacts.zig").ContactBatchStatus;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
