pub const AddContactResult = enum(i32) {
    Added = 0,
    AlreadyAdded = 1,
    Unavailable = 2,
};
pub const ContactPickerUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddContactWithIdAndContact(self: *@This(), id: HSTRING, contact: *Contact) core.HResult!AddContactResult {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.AddContactWithIdAndContact(id, contact);
    }
    pub fn RemoveContact(self: *@This(), id: HSTRING) core.HResult!void {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.RemoveContact(id);
    }
    pub fn ContainsContact(self: *@This(), id: HSTRING) core.HResult!bool {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.ContainsContact(id);
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.getDesiredFields();
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!ContactSelectionMode {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.getSelectionMode();
    }
    pub fn addContactRemoved(self: *@This(), handler: *TypedEventHandler(ContactPickerUI,ContactRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.addContactRemoved(handler);
    }
    pub fn removeContactRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactPickerUI = @ptrCast(self);
        return try this.removeContactRemoved(token);
    }
    pub fn AddContact(self: *@This(), contact: *Contact) core.HResult!AddContactResult {
        var this: ?*IContactPickerUI2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPickerUI2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddContact(contact);
    }
    pub fn getDesiredFieldsWithContactFieldType(self: *@This()) core.HResult!*IVector(ContactFieldType) {
        var this: ?*IContactPickerUI2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPickerUI2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredFieldsWithContactFieldType();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Provider.ContactPickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPickerUI.GUID;
    pub const IID: Guid = IContactPickerUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPickerUI.SIGNATURE);
};
pub const ContactRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactRemovedEventArgs = @ptrCast(self);
        return try this.getId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Provider.ContactRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactRemovedEventArgs.GUID;
    pub const IID: Guid = IContactRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactRemovedEventArgs.SIGNATURE);
};
pub const IContactPickerUI = extern struct {
    vtable: *const VTable,
    pub fn AddContact(self: *@This(), id: HSTRING, contact: *Contact) core.HResult!AddContactResult {
        var _r: AddContactResult = undefined;
        const _c = self.vtable.AddContact(@ptrCast(self), id, contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveContact(self: *@This(), id: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveContact(@ptrCast(self), id);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ContainsContact(self: *@This(), id: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ContainsContact(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_DesiredFields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!ContactSelectionMode {
        var _r: ContactSelectionMode = undefined;
        const _c = self.vtable.get_SelectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addContactRemoved(self: *@This(), handler: *TypedEventHandler(ContactPickerUI,ContactRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContactRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContactRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContactRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Provider.IContactPickerUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2cc1366-cf66-43c4-a96a-a5a112db4746";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddContact: *const fn(self: *anyopaque, id: HSTRING, contact: *Contact, _r: *AddContactResult) callconv(.winapi) HRESULT,
        RemoveContact: *const fn(self: *anyopaque, id: HSTRING) callconv(.winapi) HRESULT,
        ContainsContact: *const fn(self: *anyopaque, id: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        get_DesiredFields: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_SelectionMode: *const fn(self: *anyopaque, _r: *ContactSelectionMode) callconv(.winapi) HRESULT,
        add_ContactRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactPickerUI,ContactRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContactRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IContactPickerUI2 = extern struct {
    vtable: *const VTable,
    pub fn AddContact(self: *@This(), contact: *Contact) core.HResult!AddContactResult {
        var _r: AddContactResult = undefined;
        const _c = self.vtable.AddContact(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredFieldsWithContactFieldType(self: *@This()) core.HResult!*IVector(ContactFieldType) {
        var _r: *IVector(ContactFieldType) = undefined;
        const _c = self.vtable.get_DesiredFieldsWithContactFieldType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Provider.IContactPickerUI2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e449e28-7b25-4999-9b0b-875400a1e8c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddContact: *const fn(self: *anyopaque, contact: *Contact, _r: *AddContactResult) callconv(.winapi) HRESULT,
        get_DesiredFieldsWithContactFieldType: *const fn(self: *anyopaque, _r: **IVector(ContactFieldType)) callconv(.winapi) HRESULT,
    };
};
pub const IContactRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Provider.IContactRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f354338-3302-4d13-ad8d-adcc0ff9e47c";
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
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const ContactFieldType = @import("../Contacts.zig").ContactFieldType;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const ContactSelectionMode = @import("../Contacts.zig").ContactSelectionMode;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Contact = @import("../Contacts.zig").Contact;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
