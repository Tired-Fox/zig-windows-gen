pub const AggregateContactManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindRawContactsAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        const this: *IAggregateContactManager = @ptrCast(self);
        return try this.FindRawContactsAsync(contact);
    }
    pub fn TryLinkContactsAsync(self: *@This(), primaryContact: *Contact, secondaryContact: *Contact) core.HResult!*IAsyncOperation(Contact) {
        const this: *IAggregateContactManager = @ptrCast(self);
        return try this.TryLinkContactsAsync(primaryContact, secondaryContact);
    }
    pub fn UnlinkRawContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        const this: *IAggregateContactManager = @ptrCast(self);
        return try this.UnlinkRawContactAsync(contact);
    }
    pub fn TrySetPreferredSourceForPictureAsync(self: *@This(), aggregateContact: *Contact, rawContact: *Contact) core.HResult!*IAsyncOperation(bool) {
        const this: *IAggregateContactManager = @ptrCast(self);
        return try this.TrySetPreferredSourceForPictureAsync(aggregateContact, rawContact);
    }
    pub fn SetRemoteIdentificationInformationAsync(self: *@This(), contactListId: HSTRING, remoteSourceId: HSTRING, accountId: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IAggregateContactManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAggregateContactManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetRemoteIdentificationInformationAsync(contactListId, remoteSourceId, accountId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.AggregateContactManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAggregateContactManager.GUID;
    pub const IID: Guid = IAggregateContactManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAggregateContactManager.SIGNATURE);
};
pub const Contact = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IContact = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContact = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IContact = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IContact = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getFields(self: *@This()) core.HResult!*IVector(IContactField) {
        const this: *IContact = @ptrCast(self);
        return try this.getFields();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getNotes(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNotes();
    }
    pub fn putNotes(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNotes(value);
    }
    pub fn getPhones(self: *@This()) core.HResult!*IVector(ContactPhone) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhones();
    }
    pub fn getEmails(self: *@This()) core.HResult!*IVector(ContactEmail) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEmails();
    }
    pub fn getAddresses(self: *@This()) core.HResult!*IVector(ContactAddress) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAddresses();
    }
    pub fn getConnectedServiceAccounts(self: *@This()) core.HResult!*IVector(ContactConnectedServiceAccount) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConnectedServiceAccounts();
    }
    pub fn getImportantDates(self: *@This()) core.HResult!*IVector(ContactDate) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getImportantDates();
    }
    pub fn getDataSuppliers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDataSuppliers();
    }
    pub fn getJobInfo(self: *@This()) core.HResult!*IVector(ContactJobInfo) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getJobInfo();
    }
    pub fn getSignificantOthers(self: *@This()) core.HResult!*IVector(ContactSignificantOther) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSignificantOthers();
    }
    pub fn getWebsites(self: *@This()) core.HResult!*IVector(ContactWebsite) {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWebsites();
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IContact2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProviderProperties();
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFirstName();
    }
    pub fn putFirstName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFirstName(value);
    }
    pub fn getLastName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLastName();
    }
    pub fn putLastName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastName(value);
    }
    pub fn getMiddleName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMiddleName();
    }
    pub fn putMiddleName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMiddleName(value);
    }
    pub fn getYomiGivenName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getYomiGivenName();
    }
    pub fn putYomiGivenName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putYomiGivenName(value);
    }
    pub fn getYomiFamilyName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getYomiFamilyName();
    }
    pub fn putYomiFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putYomiFamilyName(value);
    }
    pub fn getHonorificNameSuffix(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHonorificNameSuffix();
    }
    pub fn putHonorificNameSuffix(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHonorificNameSuffix(value);
    }
    pub fn getHonorificNamePrefix(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHonorificNamePrefix();
    }
    pub fn putHonorificNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHonorificNamePrefix(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn getYomiDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactName = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactName.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getYomiDisplayName();
    }
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactListId();
    }
    pub fn getDisplayPictureUserUpdateTime(self: *@This()) core.HResult!DateTime {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayPictureUserUpdateTime();
    }
    pub fn putDisplayPictureUserUpdateTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayPictureUserUpdateTime(value);
    }
    pub fn getIsMe(self: *@This()) core.HResult!bool {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMe();
    }
    pub fn getAggregateId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAggregateId();
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRemoteId(value);
    }
    pub fn getRingToneToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRingToneToken();
    }
    pub fn putRingToneToken(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRingToneToken(value);
    }
    pub fn getIsDisplayPictureManuallySet(self: *@This()) core.HResult!bool {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDisplayPictureManuallySet();
    }
    pub fn getLargeDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLargeDisplayPicture();
    }
    pub fn getSmallDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmallDisplayPicture();
    }
    pub fn getSourceDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourceDisplayPicture();
    }
    pub fn putSourceDisplayPicture(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSourceDisplayPicture(value);
    }
    pub fn getTextToneToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTextToneToken();
    }
    pub fn putTextToneToken(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTextToneToken(value);
    }
    pub fn getIsAggregate(self: *@This()) core.HResult!bool {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAggregate();
    }
    pub fn getFullName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFullName();
    }
    pub fn getDisplayNameOverride(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayNameOverride();
    }
    pub fn putDisplayNameOverride(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayNameOverride(value);
    }
    pub fn getNickname(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNickname();
    }
    pub fn putNickname(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNickname(value);
    }
    pub fn getSortName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContact3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContact3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSortName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContact.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.Contact";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContact.GUID;
    pub const IID: Guid = IContact.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContact.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStreetAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getStreetAddress();
    }
    pub fn putStreetAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putStreetAddress(value);
    }
    pub fn getLocality(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getLocality();
    }
    pub fn putLocality(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putLocality(value);
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getRegion();
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putRegion(value);
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getCountry();
    }
    pub fn putCountry(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putCountry(value);
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getPostalCode();
    }
    pub fn putPostalCode(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putPostalCode(value);
    }
    pub fn getKind(self: *@This()) core.HResult!ContactAddressKind {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ContactAddressKind) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAddress = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAddress = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactAddress.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactAddress.GUID;
    pub const IID: Guid = IContactAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactAddress.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactAddressKind = enum(i32) {
    Home = 0,
    Work = 1,
    Other = 2,
};
pub const ContactAnnotation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getAnnotationListId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getAnnotationListId();
    }
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getContactId();
    }
    pub fn putContactId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.putContactId(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getSupportedOperations(self: *@This()) core.HResult!ContactAnnotationOperations {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getSupportedOperations();
    }
    pub fn putSupportedOperations(self: *@This(), value: ContactAnnotationOperations) core.HResult!void {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.putSupportedOperations(value);
    }
    pub fn getIsDisabled(self: *@This()) core.HResult!bool {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getIsDisabled();
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IContactAnnotation = @ptrCast(self);
        return try this.getProviderProperties();
    }
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactAnnotation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactAnnotation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContactListId();
    }
    pub fn putContactListId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactAnnotation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactAnnotation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putContactListId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactAnnotation.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactAnnotation.GUID;
    pub const IID: Guid = IContactAnnotation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactAnnotation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactAnnotationList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProviderPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.getProviderPackageFamilyName();
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn TrySaveAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncOperation(bool) {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.TrySaveAnnotationAsync(annotation);
    }
    pub fn GetAnnotationAsync(self: *@This(), annotationId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotation) {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.GetAnnotationAsync(annotationId);
    }
    pub fn FindAnnotationsByRemoteIdAsync(self: *@This(), remoteId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.FindAnnotationsByRemoteIdAsync(remoteId);
    }
    pub fn FindAnnotationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.FindAnnotationsAsync();
    }
    pub fn DeleteAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncAction {
        const this: *IContactAnnotationList = @ptrCast(self);
        return try this.DeleteAnnotationAsync(annotation);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactAnnotationList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactAnnotationList.GUID;
    pub const IID: Guid = IContactAnnotationList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactAnnotationList.SIGNATURE);
};
pub const ContactAnnotationOperations = enum(i32) {
    None = 0,
    ContactProfile = 1,
    Message = 2,
    AudioCall = 4,
    VideoCall = 8,
    SocialFeeds = 16,
    Share = 32,
};
pub const ContactAnnotationStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindContactIdsByEmailAsync(self: *@This(), emailAddress: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.FindContactIdsByEmailAsync(emailAddress);
    }
    pub fn FindContactIdsByPhoneNumberAsync(self: *@This(), phoneNumber: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.FindContactIdsByPhoneNumberAsync(phoneNumber);
    }
    pub fn FindAnnotationsForContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.FindAnnotationsForContactAsync(contact);
    }
    pub fn DisableAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncAction {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.DisableAnnotationAsync(annotation);
    }
    pub fn CreateAnnotationListAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.CreateAnnotationListAsync();
    }
    pub fn CreateAnnotationListAsync(self: *@This(), userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.CreateAnnotationListAsync(userDataAccountId);
    }
    pub fn GetAnnotationListAsync(self: *@This(), annotationListId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.GetAnnotationListAsync(annotationListId);
    }
    pub fn FindAnnotationListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotationList)) {
        const this: *IContactAnnotationStore = @ptrCast(self);
        return try this.FindAnnotationListsAsync();
    }
    pub fn FindAnnotationsForContactListAsync(self: *@This(), contactListId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        var this: ?*IContactAnnotationStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactAnnotationStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindAnnotationsForContactListAsync(contactListId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactAnnotationStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactAnnotationStore.GUID;
    pub const IID: Guid = IContactAnnotationStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactAnnotationStore.SIGNATURE);
};
pub const ContactAnnotationStoreAccessType = enum(i32) {
    AppAnnotationsReadWrite = 0,
    AllAnnotationsReadWrite = 1,
};
pub const ContactBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContacts(self: *@This()) core.HResult!*IVectorView(Contact) {
        const this: *IContactBatch = @ptrCast(self);
        return try this.getContacts();
    }
    pub fn getStatus(self: *@This()) core.HResult!ContactBatchStatus {
        const this: *IContactBatch = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactBatch.GUID;
    pub const IID: Guid = IContactBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactBatch.SIGNATURE);
};
pub const ContactBatchStatus = enum(i32) {
    Success = 0,
    ServerSearchSyncManagerError = 1,
    ServerSearchUnknownError = 2,
};
pub const ContactCardDelayedDataLoader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetData(self: *@This(), contact: *Contact) core.HResult!void {
        const this: *IContactCardDelayedDataLoader = @ptrCast(self);
        return try this.SetData(contact);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactCardDelayedDataLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactCardDelayedDataLoader.GUID;
    pub const IID: Guid = IContactCardDelayedDataLoader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactCardDelayedDataLoader.SIGNATURE);
};
pub const ContactCardHeaderKind = enum(i32) {
    Default = 0,
    Basic = 1,
    Enterprise = 2,
};
pub const ContactCardOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaderKind(self: *@This()) core.HResult!ContactCardHeaderKind {
        const this: *IContactCardOptions = @ptrCast(self);
        return try this.getHeaderKind();
    }
    pub fn putHeaderKind(self: *@This(), value: ContactCardHeaderKind) core.HResult!void {
        const this: *IContactCardOptions = @ptrCast(self);
        return try this.putHeaderKind(value);
    }
    pub fn getInitialTabKind(self: *@This()) core.HResult!ContactCardTabKind {
        const this: *IContactCardOptions = @ptrCast(self);
        return try this.getInitialTabKind();
    }
    pub fn putInitialTabKind(self: *@This(), value: ContactCardTabKind) core.HResult!void {
        const this: *IContactCardOptions = @ptrCast(self);
        return try this.putInitialTabKind(value);
    }
    pub fn getServerSearchContactListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IContactCardOptions2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactCardOptions2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServerSearchContactListIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactCardOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactCardOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactCardOptions.GUID;
    pub const IID: Guid = IContactCardOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactCardOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactCardTabKind = enum(i32) {
    Default = 0,
    Email = 1,
    Messaging = 2,
    Phone = 3,
    Video = 4,
    OrganizationalHierarchy = 5,
};
pub const ContactChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ContactChangeType {
        const this: *IContactChange = @ptrCast(self);
        return try this.getChangeType();
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IContactChange = @ptrCast(self);
        return try this.getContact();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactChange.GUID;
    pub const IID: Guid = IContactChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactChange.SIGNATURE);
};
pub const ContactChangeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const this: *IContactChangeReader = @ptrCast(self);
        return try this.AcceptChanges();
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAccept: *ContactChange) core.HResult!void {
        const this: *IContactChangeReader = @ptrCast(self);
        return try this.AcceptChangesThrough(lastChangeToAccept);
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactChange)) {
        const this: *IContactChangeReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactChangeReader.GUID;
    pub const IID: Guid = IContactChangeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactChangeReader.SIGNATURE);
};
pub const ContactChangeTracker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const this: *IContactChangeTracker = @ptrCast(self);
        return try this.Enable();
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*ContactChangeReader {
        const this: *IContactChangeTracker = @ptrCast(self);
        return try this.GetChangeReader();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const this: *IContactChangeTracker = @ptrCast(self);
        return try this.Reset();
    }
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        var this: ?*IContactChangeTracker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactChangeTracker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTracking();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactChangeTracker.GUID;
    pub const IID: Guid = IContactChangeTracker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactChangeTracker.SIGNATURE);
};
pub const ContactChangeType = enum(i32) {
    Created = 0,
    Modified = 1,
    Deleted = 2,
    ChangeTrackingLost = 3,
};
pub const ContactChangedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IContactChangedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactChangedDeferral.GUID;
    pub const IID: Guid = IContactChangedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactChangedDeferral.SIGNATURE);
};
pub const ContactChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ContactChangedDeferral {
        const this: *IContactChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactChangedEventArgs.GUID;
    pub const IID: Guid = IContactChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactChangedEventArgs.SIGNATURE);
};
pub const ContactConnectedServiceAccount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactConnectedServiceAccount = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactConnectedServiceAccount = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactConnectedServiceAccount = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactConnectedServiceAccount = @ptrCast(self);
        return try this.putServiceName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactConnectedServiceAccount.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactConnectedServiceAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactConnectedServiceAccount.GUID;
    pub const IID: Guid = IContactConnectedServiceAccount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactConnectedServiceAccount.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactDate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDay(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IContactDate = @ptrCast(self);
        return try this.getDay();
    }
    pub fn putDay(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IContactDate = @ptrCast(self);
        return try this.putDay(value);
    }
    pub fn getMonth(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IContactDate = @ptrCast(self);
        return try this.getMonth();
    }
    pub fn putMonth(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IContactDate = @ptrCast(self);
        return try this.putMonth(value);
    }
    pub fn getYear(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactDate = @ptrCast(self);
        return try this.getYear();
    }
    pub fn putYear(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactDate = @ptrCast(self);
        return try this.putYear(value);
    }
    pub fn getKind(self: *@This()) core.HResult!ContactDateKind {
        const this: *IContactDate = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ContactDateKind) core.HResult!void {
        const this: *IContactDate = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactDate = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactDate = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactDate.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactDate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactDate.GUID;
    pub const IID: Guid = IContactDate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactDate.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactDateKind = enum(i32) {
    Birthday = 0,
    Anniversary = 1,
    Other = 2,
};
pub const ContactEmail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IContactEmail = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn putAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactEmail = @ptrCast(self);
        return try this.putAddress(value);
    }
    pub fn getKind(self: *@This()) core.HResult!ContactEmailKind {
        const this: *IContactEmail = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ContactEmailKind) core.HResult!void {
        const this: *IContactEmail = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactEmail = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactEmail = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactEmail.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactEmail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactEmail.GUID;
    pub const IID: Guid = IContactEmail.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactEmail.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactEmailKind = enum(i32) {
    Personal = 0,
    Work = 1,
    Other = 2,
};
pub const ContactField = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!ContactFieldType {
        const this: *IContactField = @ptrCast(self);
        return try this.getType();
    }
    pub fn getCategory(self: *@This()) core.HResult!ContactFieldCategory {
        const this: *IContactField = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactField = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IContactField = @ptrCast(self);
        return try this.getValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateField(value: HSTRING, ty: ContactFieldType) core.HResult!*ContactField {
        const factory = @This().IContactFieldFactoryCache.get();
        return try factory.CreateField(value, ty);
    }
    pub fn CreateFieldWithCategory(value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        const factory = @This().IContactFieldFactoryCache.get();
        return try factory.CreateFieldWithCategory(value, ty, category);
    }
    pub fn CreateFieldWithTyWithCategory(name: HSTRING, value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        const factory = @This().IContactFieldFactoryCache.get();
        return try factory.CreateFieldWithTyWithCategory(name, value, ty, category);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactField.GUID;
    pub const IID: Guid = IContactField.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactField.SIGNATURE);
    var _IContactFieldFactoryCache: FactoryCache(IContactFieldFactory, RUNTIME_NAME) = .{};
};
pub const ContactFieldCategory = enum(i32) {
    None = 0,
    Home = 1,
    Work = 2,
    Mobile = 3,
    Other = 4,
};
pub const ContactFieldFactory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateField(self: *@This(), value: HSTRING, ty: ContactFieldType) core.HResult!*ContactField {
        const this: *IContactFieldFactory = @ptrCast(self);
        return try this.CreateField(value, ty);
    }
    pub fn CreateFieldWithTyWithCategory(self: *@This(), value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        const this: *IContactFieldFactory = @ptrCast(self);
        return try this.CreateFieldWithTyWithCategory(value, ty, category);
    }
    pub fn CreateFieldWithTyWithCategory(self: *@This(), name: HSTRING, value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        const this: *IContactFieldFactory = @ptrCast(self);
        return try this.CreateFieldWithTyWithCategory(name, value, ty, category);
    }
    pub fn CreateLocation(self: *@This(), unstructuredAddress: HSTRING) core.HResult!*ContactLocationField {
        var this: ?*IContactLocationFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactLocationFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLocation(unstructuredAddress);
    }
    pub fn CreateLocationWithCategory(self: *@This(), unstructuredAddress: HSTRING, category: ContactFieldCategory) core.HResult!*ContactLocationField {
        var this: ?*IContactLocationFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactLocationFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLocationWithCategory(unstructuredAddress, category);
    }
    pub fn CreateLocationWithPostalCode(self: *@This(), unstructuredAddress: HSTRING, category: ContactFieldCategory, street: HSTRING, city: HSTRING, region: HSTRING, country: HSTRING, postalCode: HSTRING) core.HResult!*ContactLocationField {
        var this: ?*IContactLocationFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactLocationFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLocationWithPostalCode(unstructuredAddress, category, street, city, region, country, postalCode);
    }
    pub fn CreateInstantMessage(self: *@This(), userName: HSTRING) core.HResult!*ContactInstantMessageField {
        var this: ?*IContactInstantMessageFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactInstantMessageFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateInstantMessage(userName);
    }
    pub fn CreateInstantMessageWithCategory(self: *@This(), userName: HSTRING, category: ContactFieldCategory) core.HResult!*ContactInstantMessageField {
        var this: ?*IContactInstantMessageFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactInstantMessageFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateInstantMessageWithCategory(userName, category);
    }
    pub fn CreateInstantMessageWithVerb(self: *@This(), userName: HSTRING, category: ContactFieldCategory, service: HSTRING, displayText: HSTRING, verb: *Uri) core.HResult!*ContactInstantMessageField {
        var this: ?*IContactInstantMessageFieldFactory = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactInstantMessageFieldFactory.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateInstantMessageWithVerb(userName, category, service, displayText, verb);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactFieldFactory.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactFieldFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactFieldFactory.GUID;
    pub const IID: Guid = IContactFieldFactory.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactFieldFactory.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactFieldType = enum(i32) {
    Email = 0,
    PhoneNumber = 1,
    Location = 2,
    InstantMessage = 3,
    Custom = 4,
    ConnectedServiceAccount = 5,
    ImportantDate = 6,
    Address = 7,
    SignificantOther = 8,
    Notes = 9,
    Website = 10,
    JobInfo = 11,
};
pub const ContactGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactGroup.GUID;
    pub const IID: Guid = IContactGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactGroup.SIGNATURE);
};
pub const ContactInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getName();
    }
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.GetThumbnailAsync();
    }
    pub fn getEmails(self: *@This()) core.HResult!*IVectorView(ContactField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getEmails();
    }
    pub fn getPhoneNumbers(self: *@This()) core.HResult!*IVectorView(ContactField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getPhoneNumbers();
    }
    pub fn getLocations(self: *@This()) core.HResult!*IVectorView(ContactLocationField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getLocations();
    }
    pub fn getInstantMessages(self: *@This()) core.HResult!*IVectorView(ContactInstantMessageField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getInstantMessages();
    }
    pub fn getCustomFields(self: *@This()) core.HResult!*IVectorView(ContactField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.getCustomFields();
    }
    pub fn QueryCustomFields(self: *@This(), customName: HSTRING) core.HResult!*IVectorView(ContactField) {
        const this: *IContactInformation = @ptrCast(self);
        return try this.QueryCustomFields(customName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactInformation.GUID;
    pub const IID: Guid = IContactInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactInformation.SIGNATURE);
};
pub const ContactInstantMessageField = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactInstantMessageField = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn getService(self: *@This()) core.HResult!HSTRING {
        const this: *IContactInstantMessageField = @ptrCast(self);
        return try this.getService();
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        const this: *IContactInstantMessageField = @ptrCast(self);
        return try this.getDisplayText();
    }
    pub fn getLaunchUri(self: *@This()) core.HResult!*Uri {
        const this: *IContactInstantMessageField = @ptrCast(self);
        return try this.getLaunchUri();
    }
    pub fn getType(self: *@This()) core.HResult!ContactFieldType {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getCategory(self: *@This()) core.HResult!ContactFieldCategory {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCategory();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstantMessage(userName: HSTRING) core.HResult!*ContactInstantMessageField {
        const factory = @This().IContactInstantMessageFieldFactoryCache.get();
        return try factory.CreateInstantMessage(userName);
    }
    pub fn CreateInstantMessageWithCategory(userName: HSTRING, category: ContactFieldCategory) core.HResult!*ContactInstantMessageField {
        const factory = @This().IContactInstantMessageFieldFactoryCache.get();
        return try factory.CreateInstantMessageWithCategory(userName, category);
    }
    pub fn CreateInstantMessageWithCategoryWithServiceWithDisplayTextWithVerb(userName: HSTRING, category: ContactFieldCategory, service: HSTRING, displayText: HSTRING, verb: *Uri) core.HResult!*ContactInstantMessageField {
        const factory = @This().IContactInstantMessageFieldFactoryCache.get();
        return try factory.CreateInstantMessageWithCategoryWithServiceWithDisplayTextWithVerb(userName, category, service, displayText, verb);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactInstantMessageField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactInstantMessageField.GUID;
    pub const IID: Guid = IContactInstantMessageField.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactInstantMessageField.SIGNATURE);
    var _IContactInstantMessageFieldFactoryCache: FactoryCache(IContactInstantMessageFieldFactory, RUNTIME_NAME) = .{};
};
pub const ContactJobInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompanyName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getCompanyName();
    }
    pub fn putCompanyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putCompanyName(value);
    }
    pub fn getCompanyYomiName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getCompanyYomiName();
    }
    pub fn putCompanyYomiName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putCompanyYomiName(value);
    }
    pub fn getDepartment(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getDepartment();
    }
    pub fn putDepartment(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putDepartment(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getManager(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getManager();
    }
    pub fn putManager(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putManager(value);
    }
    pub fn getOffice(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getOffice();
    }
    pub fn putOffice(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putOffice(value);
    }
    pub fn getCompanyAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getCompanyAddress();
    }
    pub fn putCompanyAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putCompanyAddress(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactJobInfo = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactJobInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactJobInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactJobInfo.GUID;
    pub const IID: Guid = IContactJobInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactJobInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactLaunchActionVerbs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Call() core.HResult!HSTRING {
        const factory = @This().IContactLaunchActionVerbsStaticsCache.get();
        return try factory.getCall();
    }
    pub fn get_Message() core.HResult!HSTRING {
        const factory = @This().IContactLaunchActionVerbsStaticsCache.get();
        return try factory.getMessage();
    }
    pub fn get_Map() core.HResult!HSTRING {
        const factory = @This().IContactLaunchActionVerbsStaticsCache.get();
        return try factory.getMap();
    }
    pub fn get_Post() core.HResult!HSTRING {
        const factory = @This().IContactLaunchActionVerbsStaticsCache.get();
        return try factory.getPost();
    }
    pub fn get_VideoCall() core.HResult!HSTRING {
        const factory = @This().IContactLaunchActionVerbsStaticsCache.get();
        return try factory.getVideoCall();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactLaunchActionVerbs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IContactLaunchActionVerbsStaticsCache: FactoryCache(IContactLaunchActionVerbsStatics, RUNTIME_NAME) = .{};
};
pub const ContactList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactList = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactList = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactList = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactList = @ptrCast(self);
        return try this.getSourceDisplayName();
    }
    pub fn getIsHidden(self: *@This()) core.HResult!bool {
        const this: *IContactList = @ptrCast(self);
        return try this.getIsHidden();
    }
    pub fn putIsHidden(self: *@This(), value: bool) core.HResult!void {
        const this: *IContactList = @ptrCast(self);
        return try this.putIsHidden(value);
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!ContactListOtherAppReadAccess {
        const this: *IContactList = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: ContactListOtherAppReadAccess) core.HResult!void {
        const this: *IContactList = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!ContactListOtherAppWriteAccess {
        const this: *IContactList = @ptrCast(self);
        return try this.getOtherAppWriteAccess();
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: ContactListOtherAppWriteAccess) core.HResult!void {
        const this: *IContactList = @ptrCast(self);
        return try this.putOtherAppWriteAccess(value);
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*ContactChangeTracker {
        const this: *IContactList = @ptrCast(self);
        return try this.getChangeTracker();
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*ContactListSyncManager {
        const this: *IContactList = @ptrCast(self);
        return try this.getSyncManager();
    }
    pub fn getSupportsServerSearch(self: *@This()) core.HResult!bool {
        const this: *IContactList = @ptrCast(self);
        return try this.getSupportsServerSearch();
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IContactList = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn addContactChanged(self: *@This(), value: *TypedEventHandler(ContactList,ContactChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactList = @ptrCast(self);
        return try this.addContactChanged(value);
    }
    pub fn removeContactChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const this: *IContactList = @ptrCast(self);
        return try this.removeContactChanged(value);
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactList = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IContactList = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn GetContactFromRemoteIdAsync(self: *@This(), remoteId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        const this: *IContactList = @ptrCast(self);
        return try this.GetContactFromRemoteIdAsync(remoteId);
    }
    pub fn GetMeContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        const this: *IContactList = @ptrCast(self);
        return try this.GetMeContactAsync();
    }
    pub fn GetContactReader(self: *@This()) core.HResult!*ContactReader {
        const this: *IContactList = @ptrCast(self);
        return try this.GetContactReader();
    }
    pub fn GetContactReader(self: *@This(), options: *ContactQueryOptions) core.HResult!*ContactReader {
        const this: *IContactList = @ptrCast(self);
        return try this.GetContactReader(options);
    }
    pub fn SaveContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        const this: *IContactList = @ptrCast(self);
        return try this.SaveContactAsync(contact);
    }
    pub fn DeleteContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        const this: *IContactList = @ptrCast(self);
        return try this.DeleteContactAsync(contact);
    }
    pub fn GetContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        const this: *IContactList = @ptrCast(self);
        return try this.GetContactAsync(contactId);
    }
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IContactList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterSyncManagerAsync();
    }
    pub fn putSupportsServerSearch(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IContactList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSupportsServerSearch(value);
    }
    pub fn getSyncConstraints(self: *@This()) core.HResult!*ContactListSyncConstraints {
        var this: ?*IContactList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSyncConstraints();
    }
    pub fn getLimitedWriteOperations(self: *@This()) core.HResult!*ContactListLimitedWriteOperations {
        var this: ?*IContactList3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactList3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLimitedWriteOperations();
    }
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*ContactChangeTracker {
        var this: ?*IContactList3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactList3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChangeTracker(identity);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactList.GUID;
    pub const IID: Guid = IContactList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactList.SIGNATURE);
};
pub const ContactListLimitedWriteOperations = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryCreateOrUpdateContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(bool) {
        const this: *IContactListLimitedWriteOperations = @ptrCast(self);
        return try this.TryCreateOrUpdateContactAsync(contact);
    }
    pub fn TryDeleteContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IContactListLimitedWriteOperations = @ptrCast(self);
        return try this.TryDeleteContactAsync(contactId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactListLimitedWriteOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListLimitedWriteOperations.GUID;
    pub const IID: Guid = IContactListLimitedWriteOperations.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListLimitedWriteOperations.SIGNATURE);
};
pub const ContactListOtherAppReadAccess = enum(i32) {
    SystemOnly = 0,
    Limited = 1,
    Full = 2,
    None = 3,
};
pub const ContactListOtherAppWriteAccess = enum(i32) {
    None = 0,
    SystemOnly = 1,
    Limited = 2,
};
pub const ContactListSyncConstraints = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanSyncDescriptions(self: *@This()) core.HResult!bool {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getCanSyncDescriptions();
    }
    pub fn putCanSyncDescriptions(self: *@This(), value: bool) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putCanSyncDescriptions(value);
    }
    pub fn getMaxHomePhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxHomePhoneNumbers();
    }
    pub fn putMaxHomePhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxHomePhoneNumbers(value);
    }
    pub fn getMaxMobilePhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxMobilePhoneNumbers();
    }
    pub fn putMaxMobilePhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxMobilePhoneNumbers(value);
    }
    pub fn getMaxWorkPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxWorkPhoneNumbers();
    }
    pub fn putMaxWorkPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxWorkPhoneNumbers(value);
    }
    pub fn getMaxOtherPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxOtherPhoneNumbers();
    }
    pub fn putMaxOtherPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxOtherPhoneNumbers(value);
    }
    pub fn getMaxPagerPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxPagerPhoneNumbers();
    }
    pub fn putMaxPagerPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxPagerPhoneNumbers(value);
    }
    pub fn getMaxBusinessFaxPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxBusinessFaxPhoneNumbers();
    }
    pub fn putMaxBusinessFaxPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxBusinessFaxPhoneNumbers(value);
    }
    pub fn getMaxHomeFaxPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxHomeFaxPhoneNumbers();
    }
    pub fn putMaxHomeFaxPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxHomeFaxPhoneNumbers(value);
    }
    pub fn getMaxCompanyPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxCompanyPhoneNumbers();
    }
    pub fn putMaxCompanyPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxCompanyPhoneNumbers(value);
    }
    pub fn getMaxAssistantPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxAssistantPhoneNumbers();
    }
    pub fn putMaxAssistantPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxAssistantPhoneNumbers(value);
    }
    pub fn getMaxRadioPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxRadioPhoneNumbers();
    }
    pub fn putMaxRadioPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxRadioPhoneNumbers(value);
    }
    pub fn getMaxPersonalEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxPersonalEmailAddresses();
    }
    pub fn putMaxPersonalEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxPersonalEmailAddresses(value);
    }
    pub fn getMaxWorkEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxWorkEmailAddresses();
    }
    pub fn putMaxWorkEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxWorkEmailAddresses(value);
    }
    pub fn getMaxOtherEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxOtherEmailAddresses();
    }
    pub fn putMaxOtherEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxOtherEmailAddresses(value);
    }
    pub fn getMaxHomeAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxHomeAddresses();
    }
    pub fn putMaxHomeAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxHomeAddresses(value);
    }
    pub fn getMaxWorkAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxWorkAddresses();
    }
    pub fn putMaxWorkAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxWorkAddresses(value);
    }
    pub fn getMaxOtherAddresses(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxOtherAddresses();
    }
    pub fn putMaxOtherAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxOtherAddresses(value);
    }
    pub fn getMaxBirthdayDates(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxBirthdayDates();
    }
    pub fn putMaxBirthdayDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxBirthdayDates(value);
    }
    pub fn getMaxAnniversaryDates(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxAnniversaryDates();
    }
    pub fn putMaxAnniversaryDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxAnniversaryDates(value);
    }
    pub fn getMaxOtherDates(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxOtherDates();
    }
    pub fn putMaxOtherDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxOtherDates(value);
    }
    pub fn getMaxOtherRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxOtherRelationships();
    }
    pub fn putMaxOtherRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxOtherRelationships(value);
    }
    pub fn getMaxSpouseRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxSpouseRelationships();
    }
    pub fn putMaxSpouseRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxSpouseRelationships(value);
    }
    pub fn getMaxPartnerRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxPartnerRelationships();
    }
    pub fn putMaxPartnerRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxPartnerRelationships(value);
    }
    pub fn getMaxSiblingRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxSiblingRelationships();
    }
    pub fn putMaxSiblingRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxSiblingRelationships(value);
    }
    pub fn getMaxParentRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxParentRelationships();
    }
    pub fn putMaxParentRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxParentRelationships(value);
    }
    pub fn getMaxChildRelationships(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxChildRelationships();
    }
    pub fn putMaxChildRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxChildRelationships(value);
    }
    pub fn getMaxJobInfo(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxJobInfo();
    }
    pub fn putMaxJobInfo(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxJobInfo(value);
    }
    pub fn getMaxWebsites(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.getMaxWebsites();
    }
    pub fn putMaxWebsites(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *IContactListSyncConstraints = @ptrCast(self);
        return try this.putMaxWebsites(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactListSyncConstraints";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListSyncConstraints.GUID;
    pub const IID: Guid = IContactListSyncConstraints.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListSyncConstraints.SIGNATURE);
};
pub const ContactListSyncManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ContactListSyncStatus {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getLastSuccessfulSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.getLastSuccessfulSyncTime();
    }
    pub fn getLastAttemptedSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.getLastAttemptedSyncTime();
    }
    pub fn SyncAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.SyncAsync();
    }
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(ContactListSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.addSyncStatusChanged(handler);
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactListSyncManager = @ptrCast(self);
        return try this.removeSyncStatusChanged(token);
    }
    pub fn putStatus(self: *@This(), value: ContactListSyncStatus) core.HResult!void {
        var this: ?*IContactListSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactListSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStatus(value);
    }
    pub fn putLastSuccessfulSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IContactListSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactListSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastSuccessfulSyncTime(value);
    }
    pub fn putLastAttemptedSyncTime(self: *@This(), value: DateTime) core.HResult!void {
        var this: ?*IContactListSyncManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactListSyncManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLastAttemptedSyncTime(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactListSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactListSyncManager.GUID;
    pub const IID: Guid = IContactListSyncManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactListSyncManager.SIGNATURE);
};
pub const ContactListSyncStatus = enum(i32) {
    Idle = 0,
    Syncing = 1,
    UpToDate = 2,
    AuthenticationError = 3,
    PolicyError = 4,
    UnknownError = 5,
    ManualAccountRemovalRequired = 6,
};
pub const ContactLocationField = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnstructuredAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getUnstructuredAddress();
    }
    pub fn getStreet(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getStreet();
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getCity();
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getRegion();
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getCountry();
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        const this: *IContactLocationField = @ptrCast(self);
        return try this.getPostalCode();
    }
    pub fn getType(self: *@This()) core.HResult!ContactFieldType {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getCategory(self: *@This()) core.HResult!ContactFieldCategory {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCategory();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactField = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactField.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateLocation(unstructuredAddress: HSTRING) core.HResult!*ContactLocationField {
        const factory = @This().IContactLocationFieldFactoryCache.get();
        return try factory.CreateLocation(unstructuredAddress);
    }
    pub fn CreateLocationWithCategory(unstructuredAddress: HSTRING, category: ContactFieldCategory) core.HResult!*ContactLocationField {
        const factory = @This().IContactLocationFieldFactoryCache.get();
        return try factory.CreateLocationWithCategory(unstructuredAddress, category);
    }
    pub fn CreateLocationWithCategoryWithStreetWithCityWithRegionWithCountryWithPostalCode(unstructuredAddress: HSTRING, category: ContactFieldCategory, street: HSTRING, city: HSTRING, region: HSTRING, country: HSTRING, postalCode: HSTRING) core.HResult!*ContactLocationField {
        const factory = @This().IContactLocationFieldFactoryCache.get();
        return try factory.CreateLocationWithCategoryWithStreetWithCityWithRegionWithCountryWithPostalCode(unstructuredAddress, category, street, city, region, country, postalCode);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactLocationField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactLocationField.GUID;
    pub const IID: Guid = IContactLocationField.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactLocationField.SIGNATURE);
    var _IContactLocationFieldFactoryCache: FactoryCache(IContactLocationFieldFactory, RUNTIME_NAME) = .{};
};
pub const ContactManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsShowFullContactCardSupportedAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IContactManagerStatics5Cache.get();
        return try factory.IsShowFullContactCardSupportedAsync();
    }
    pub fn get_IncludeMiddleNameInSystemDisplayAndSort() core.HResult!bool {
        const factory = @This().IContactManagerStatics5Cache.get();
        return try factory.getIncludeMiddleNameInSystemDisplayAndSort();
    }
    pub fn put_IncludeMiddleNameInSystemDisplayAndSort(value: bool) core.HResult!void {
        const factory = @This().IContactManagerStatics5Cache.get();
        return try factory.putIncludeMiddleNameInSystemDisplayAndSort(value);
    }
    pub fn GetForUser(user: *User) core.HResult!*ContactManagerForUser {
        const factory = @This().IContactManagerStatics4Cache.get();
        return try factory.GetForUser(user);
    }
    pub fn ShowContactCard(contact: *Contact, selection: Rect) core.HResult!void {
        const factory = @This().IContactManagerStaticsCache.get();
        return try factory.ShowContactCard(contact, selection);
    }
    pub fn ShowContactCardWithPreferredPlacement(contact: *Contact, selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const factory = @This().IContactManagerStaticsCache.get();
        return try factory.ShowContactCardWithPreferredPlacement(contact, selection, preferredPlacement);
    }
    pub fn ShowDelayLoadedContactCard(contact: *Contact, selection: Rect, preferredPlacement: Placement) core.HResult!*ContactCardDelayedDataLoader {
        const factory = @This().IContactManagerStaticsCache.get();
        return try factory.ShowDelayLoadedContactCard(contact, selection, preferredPlacement);
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(ContactStore) {
        const factory = @This().IContactManagerStatics2Cache.get();
        return try factory.RequestStoreAsync();
    }
    pub fn ConvertContactToVCardAsync(contact: *Contact) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ConvertContactToVCardAsync(contact);
    }
    pub fn ConvertContactToVCardAsyncWithMaxBytes(contact: *Contact, maxBytes: u32) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ConvertContactToVCardAsyncWithMaxBytes(contact, maxBytes);
    }
    pub fn ConvertVCardToContactAsync(vCard: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(Contact) {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ConvertVCardToContactAsync(vCard);
    }
    pub fn RequestStoreAsyncWithAccessType(accessType: ContactStoreAccessType) core.HResult!*IAsyncOperation(ContactStore) {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.RequestStoreAsync(accessType);
    }
    pub fn RequestAnnotationStoreAsync(accessType: ContactAnnotationStoreAccessType) core.HResult!*IAsyncOperation(ContactAnnotationStore) {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.RequestAnnotationStoreAsync(accessType);
    }
    pub fn IsShowContactCardSupported() core.HResult!bool {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.IsShowContactCardSupported();
    }
    pub fn ShowContactCardWithPreferredPlacementWithContactCardOptions(contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions) core.HResult!void {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ShowContactCard(contact, selection, preferredPlacement, contactCardOptions);
    }
    pub fn IsShowDelayLoadedContactCardSupported() core.HResult!bool {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.IsShowDelayLoadedContactCardSupported();
    }
    pub fn ShowDelayLoadedContactCardWithContactCardOptions(contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions) core.HResult!*ContactCardDelayedDataLoader {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ShowDelayLoadedContactCard(contact, selection, preferredPlacement, contactCardOptions);
    }
    pub fn ShowFullContactCard(contact: *Contact, fullContactCardOptions: *FullContactCardOptions) core.HResult!void {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.ShowFullContactCard(contact, fullContactCardOptions);
    }
    pub fn get_SystemDisplayNameOrder() core.HResult!ContactNameOrder {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.getSystemDisplayNameOrder();
    }
    pub fn put_SystemDisplayNameOrder(value: ContactNameOrder) core.HResult!void {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.putSystemDisplayNameOrder(value);
    }
    pub fn get_SystemSortOrder() core.HResult!ContactNameOrder {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.getSystemSortOrder();
    }
    pub fn put_SystemSortOrder(value: ContactNameOrder) core.HResult!void {
        const factory = @This().IContactManagerStatics3Cache.get();
        return try factory.putSystemSortOrder(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IContactManagerStatics5Cache: FactoryCache(IContactManagerStatics5, RUNTIME_NAME) = .{};
    var _IContactManagerStatics4Cache: FactoryCache(IContactManagerStatics4, RUNTIME_NAME) = .{};
    var _IContactManagerStaticsCache: FactoryCache(IContactManagerStatics, RUNTIME_NAME) = .{};
    var _IContactManagerStatics2Cache: FactoryCache(IContactManagerStatics2, RUNTIME_NAME) = .{};
    var _IContactManagerStatics3Cache: FactoryCache(IContactManagerStatics3, RUNTIME_NAME) = .{};
};
pub const ContactManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ConvertContactToVCardAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.ConvertContactToVCardAsync(contact);
    }
    pub fn ConvertContactToVCardAsyncWithMaxBytes(self: *@This(), contact: *Contact, maxBytes: u32) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.ConvertContactToVCardAsyncWithMaxBytes(contact, maxBytes);
    }
    pub fn ConvertVCardToContactAsync(self: *@This(), vCard: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(Contact) {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.ConvertVCardToContactAsync(vCard);
    }
    pub fn RequestStoreAsync(self: *@This(), accessType: ContactStoreAccessType) core.HResult!*IAsyncOperation(ContactStore) {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.RequestStoreAsync(accessType);
    }
    pub fn RequestAnnotationStoreAsync(self: *@This(), accessType: ContactAnnotationStoreAccessType) core.HResult!*IAsyncOperation(ContactAnnotationStore) {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.RequestAnnotationStoreAsync(accessType);
    }
    pub fn getSystemDisplayNameOrder(self: *@This()) core.HResult!ContactNameOrder {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.getSystemDisplayNameOrder();
    }
    pub fn putSystemDisplayNameOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.putSystemDisplayNameOrder(value);
    }
    pub fn getSystemSortOrder(self: *@This()) core.HResult!ContactNameOrder {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.getSystemSortOrder();
    }
    pub fn putSystemSortOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.putSystemSortOrder(value);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IContactManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub fn ShowFullContactCard(self: *@This(), contact: *Contact, fullContactCardOptions: *FullContactCardOptions) core.HResult!void {
        var this: ?*IContactManagerForUser2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactManagerForUser2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowFullContactCard(contact, fullContactCardOptions);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactManagerForUser.GUID;
    pub const IID: Guid = IContactManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactManagerForUser.SIGNATURE);
};
pub const ContactMatchReason = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getField(self: *@This()) core.HResult!ContactMatchReasonKind {
        const this: *IContactMatchReason = @ptrCast(self);
        return try this.getField();
    }
    pub fn getSegments(self: *@This()) core.HResult!*IVectorView(TextSegment) {
        const this: *IContactMatchReason = @ptrCast(self);
        return try this.getSegments();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IContactMatchReason = @ptrCast(self);
        return try this.getText();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactMatchReason";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactMatchReason.GUID;
    pub const IID: Guid = IContactMatchReason.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactMatchReason.SIGNATURE);
};
pub const ContactMatchReasonKind = enum(i32) {
    Name = 0,
    EmailAddress = 1,
    PhoneNumber = 2,
    JobInfo = 3,
    YomiName = 4,
    Other = 5,
};
pub const ContactNameOrder = enum(i32) {
    FirstNameLastName = 0,
    LastNameFirstName = 1,
};
pub const ContactPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ClosePanel(self: *@This()) core.HResult!void {
        const this: *IContactPanel = @ptrCast(self);
        return try this.ClosePanel();
    }
    pub fn getHeaderColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IContactPanel = @ptrCast(self);
        return try this.getHeaderColor();
    }
    pub fn putHeaderColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IContactPanel = @ptrCast(self);
        return try this.putHeaderColor(value);
    }
    pub fn addLaunchFullAppRequested(self: *@This(), handler: *TypedEventHandler(ContactPanel,ContactPanelLaunchFullAppRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactPanel = @ptrCast(self);
        return try this.addLaunchFullAppRequested(handler);
    }
    pub fn removeLaunchFullAppRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactPanel = @ptrCast(self);
        return try this.removeLaunchFullAppRequested(token);
    }
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(ContactPanel,ContactPanelClosingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContactPanel = @ptrCast(self);
        return try this.addClosing(handler);
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContactPanel = @ptrCast(self);
        return try this.removeClosing(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPanel.GUID;
    pub const IID: Guid = IContactPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPanel.SIGNATURE);
};
pub const ContactPanelClosingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IContactPanelClosingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactPanelClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPanelClosingEventArgs.GUID;
    pub const IID: Guid = IContactPanelClosingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPanelClosingEventArgs.SIGNATURE);
};
pub const ContactPanelLaunchFullAppRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IContactPanelLaunchFullAppRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IContactPanelLaunchFullAppRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactPanelLaunchFullAppRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPanelLaunchFullAppRequestedEventArgs.GUID;
    pub const IID: Guid = IContactPanelLaunchFullAppRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPanelLaunchFullAppRequestedEventArgs.SIGNATURE);
};
pub const ContactPhone = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IContactPhone = @ptrCast(self);
        return try this.getNumber();
    }
    pub fn putNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactPhone = @ptrCast(self);
        return try this.putNumber(value);
    }
    pub fn getKind(self: *@This()) core.HResult!ContactPhoneKind {
        const this: *IContactPhone = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: ContactPhoneKind) core.HResult!void {
        const this: *IContactPhone = @ptrCast(self);
        return try this.putKind(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactPhone = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactPhone = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactPhone.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactPhone";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPhone.GUID;
    pub const IID: Guid = IContactPhone.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPhone.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactPhoneKind = enum(i32) {
    Home = 0,
    Mobile = 1,
    Work = 2,
    Other = 3,
    Pager = 4,
    BusinessFax = 5,
    HomeFax = 6,
    Company = 7,
    Assistant = 8,
    Radio = 9,
};
pub const ContactPicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        const this: *IContactPicker = @ptrCast(self);
        return try this.getCommitButtonText();
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactPicker = @ptrCast(self);
        return try this.putCommitButtonText(value);
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!ContactSelectionMode {
        const this: *IContactPicker = @ptrCast(self);
        return try this.getSelectionMode();
    }
    pub fn putSelectionMode(self: *@This(), value: ContactSelectionMode) core.HResult!void {
        const this: *IContactPicker = @ptrCast(self);
        return try this.putSelectionMode(value);
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IContactPicker = @ptrCast(self);
        return try this.getDesiredFields();
    }
    pub fn PickSingleContactAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactInformation) {
        const this: *IContactPicker = @ptrCast(self);
        return try this.PickSingleContactAsync();
    }
    pub fn PickMultipleContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactInformation)) {
        const this: *IContactPicker = @ptrCast(self);
        return try this.PickMultipleContactsAsync();
    }
    pub fn getDesiredFieldsWithContactFieldType(self: *@This()) core.HResult!*IVector(ContactFieldType) {
        var this: ?*IContactPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredFieldsWithContactFieldType();
    }
    pub fn PickContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        var this: ?*IContactPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickContactAsync();
    }
    pub fn PickContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(Contact)) {
        var this: ?*IContactPicker2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPicker2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PickContactsAsync();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IContactPicker3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactPicker3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactPicker.IID)));
    }
    pub fn CreateForUser(user: *User) core.HResult!*ContactPicker {
        const factory = @This().IContactPickerStaticsCache.get();
        return try factory.CreateForUser(user);
    }
    pub fn IsSupportedAsync() core.HResult!*IAsyncOperation(bool) {
        const factory = @This().IContactPickerStaticsCache.get();
        return try factory.IsSupportedAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactPicker.GUID;
    pub const IID: Guid = IContactPicker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactPicker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContactPickerStaticsCache: FactoryCache(IContactPickerStatics, RUNTIME_NAME) = .{};
};
pub const ContactQueryDesiredFields = enum(i32) {
    None = 0,
    PhoneNumber = 1,
    EmailAddress = 2,
    PostalAddress = 4,
};
pub const ContactQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextSearch(self: *@This()) core.HResult!*ContactQueryTextSearch {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getTextSearch();
    }
    pub fn getContactListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getContactListIds();
    }
    pub fn getIncludeContactsFromHiddenLists(self: *@This()) core.HResult!bool {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getIncludeContactsFromHiddenLists();
    }
    pub fn putIncludeContactsFromHiddenLists(self: *@This(), value: bool) core.HResult!void {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.putIncludeContactsFromHiddenLists(value);
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!ContactQueryDesiredFields {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getDesiredFields();
    }
    pub fn putDesiredFields(self: *@This(), value: ContactQueryDesiredFields) core.HResult!void {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.putDesiredFields(value);
    }
    pub fn getDesiredOperations(self: *@This()) core.HResult!ContactAnnotationOperations {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getDesiredOperations();
    }
    pub fn putDesiredOperations(self: *@This(), value: ContactAnnotationOperations) core.HResult!void {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.putDesiredOperations(value);
    }
    pub fn getAnnotationListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IContactQueryOptions = @ptrCast(self);
        return try this.getAnnotationListIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactQueryOptions.IID)));
    }
    pub fn CreateWithText(text: HSTRING) core.HResult!*ContactQueryOptions {
        const factory = @This().IContactQueryOptionsFactoryCache.get();
        return try factory.CreateWithText(text);
    }
    pub fn CreateWithTextAndFields(text: HSTRING, fields: ContactQuerySearchFields) core.HResult!*ContactQueryOptions {
        const factory = @This().IContactQueryOptionsFactoryCache.get();
        return try factory.CreateWithTextAndFields(text, fields);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactQueryOptions.GUID;
    pub const IID: Guid = IContactQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContactQueryOptionsFactoryCache: FactoryCache(IContactQueryOptionsFactory, RUNTIME_NAME) = .{};
};
pub const ContactQuerySearchFields = enum(i32) {
    None = 0,
    Name = 1,
    Email = 2,
    Phone = 4,
    All = -1,
};
pub const ContactQuerySearchScope = enum(i32) {
    Local = 0,
    Server = 1,
};
pub const ContactQueryTextSearch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFields(self: *@This()) core.HResult!ContactQuerySearchFields {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.getFields();
    }
    pub fn putFields(self: *@This(), value: ContactQuerySearchFields) core.HResult!void {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.putFields(value);
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getSearchScope(self: *@This()) core.HResult!ContactQuerySearchScope {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.getSearchScope();
    }
    pub fn putSearchScope(self: *@This(), value: ContactQuerySearchScope) core.HResult!void {
        const this: *IContactQueryTextSearch = @ptrCast(self);
        return try this.putSearchScope(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactQueryTextSearch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactQueryTextSearch.GUID;
    pub const IID: Guid = IContactQueryTextSearch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactQueryTextSearch.SIGNATURE);
};
pub const ContactReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactBatch) {
        const this: *IContactReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub fn GetMatchingPropertiesWithMatchReason(self: *@This(), contact: *Contact) core.HResult!*IVectorView(ContactMatchReason) {
        const this: *IContactReader = @ptrCast(self);
        return try this.GetMatchingPropertiesWithMatchReason(contact);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactReader.GUID;
    pub const IID: Guid = IContactReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactReader.SIGNATURE);
};
pub const ContactRelationship = enum(i32) {
    Other = 0,
    Spouse = 1,
    Partner = 2,
    Sibling = 3,
    Parent = 4,
    Child = 5,
};
pub const ContactSelectionMode = enum(i32) {
    Contacts = 0,
    Fields = 1,
};
pub const ContactSignificantOther = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IContactSignificantOther = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactSignificantOther = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactSignificantOther = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactSignificantOther = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getRelationship(self: *@This()) core.HResult!ContactRelationship {
        var this: ?*IContactSignificantOther2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactSignificantOther2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRelationship();
    }
    pub fn putRelationship(self: *@This(), value: ContactRelationship) core.HResult!void {
        var this: ?*IContactSignificantOther2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactSignificantOther2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRelationship(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactSignificantOther.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactSignificantOther";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactSignificantOther.GUID;
    pub const IID: Guid = IContactSignificantOther.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactSignificantOther.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContactStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        const this: *IContactStore = @ptrCast(self);
        return try this.FindContactsAsync();
    }
    pub fn FindContactsAsync(self: *@This(), searchText: HSTRING) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        const this: *IContactStore = @ptrCast(self);
        return try this.FindContactsAsync(searchText);
    }
    pub fn GetContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        const this: *IContactStore = @ptrCast(self);
        return try this.GetContactAsync(contactId);
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*ContactChangeTracker {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeTracker();
    }
    pub fn addContactChanged(self: *@This(), value: *TypedEventHandler(ContactStore,ContactChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addContactChanged(value);
    }
    pub fn removeContactChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeContactChanged(value);
    }
    pub fn getAggregateContactManager(self: *@This()) core.HResult!*AggregateContactManager {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAggregateContactManager();
    }
    pub fn FindContactListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactList)) {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindContactListsAsync();
    }
    pub fn GetContactListAsync(self: *@This(), contactListId: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetContactListAsync(contactListId);
    }
    pub fn CreateContactListAsync(self: *@This(), displayName: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateContactListAsync(displayName);
    }
    pub fn GetMeContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMeContactAsync();
    }
    pub fn GetContactReader(self: *@This()) core.HResult!*ContactReader {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetContactReader();
    }
    pub fn GetContactReader(self: *@This(), options: *ContactQueryOptions) core.HResult!*ContactReader {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetContactReader(options);
    }
    pub fn CreateContactListAsyncWithUserDataAccountId(self: *@This(), displayName: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var this: ?*IContactStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateContactListAsyncWithUserDataAccountId(displayName, userDataAccountId);
    }
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*ContactChangeTracker {
        var this: ?*IContactStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChangeTracker(identity);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactStore.GUID;
    pub const IID: Guid = IContactStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactStore.SIGNATURE);
};
pub const ContactStoreAccessType = enum(i32) {
    AppContactsReadWrite = 0,
    AllContactsReadOnly = 1,
    AllContactsReadWrite = 2,
};
pub const ContactStoreNotificationTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactStoreNotificationTriggerDetails.GUID;
    pub const IID: Guid = IContactStoreNotificationTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactStoreNotificationTriggerDetails.SIGNATURE);
};
pub const ContactWebsite = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IContactWebsite = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IContactWebsite = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IContactWebsite = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IContactWebsite = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getRawValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContactWebsite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactWebsite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawValue();
    }
    pub fn putRawValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IContactWebsite2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContactWebsite2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRawValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactWebsite.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.ContactWebsite";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactWebsite.GUID;
    pub const IID: Guid = IContactWebsite.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactWebsite.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FullContactCardOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredRemainingView(self: *@This()) core.HResult!ViewSizePreference {
        const this: *IFullContactCardOptions = @ptrCast(self);
        return try this.getDesiredRemainingView();
    }
    pub fn putDesiredRemainingView(self: *@This(), value: ViewSizePreference) core.HResult!void {
        const this: *IFullContactCardOptions = @ptrCast(self);
        return try this.putDesiredRemainingView(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFullContactCardOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.FullContactCardOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFullContactCardOptions.GUID;
    pub const IID: Guid = IFullContactCardOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFullContactCardOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAggregateContactManager = extern struct {
    vtable: *const VTable,
    pub fn FindRawContactsAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        var _r: *IAsyncOperation(IVectorView(Contact)) = undefined;
        const _c = self.vtable.FindRawContactsAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryLinkContactsAsync(self: *@This(), primaryContact: *Contact, secondaryContact: *Contact) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.TryLinkContactsAsync(@ptrCast(self), primaryContact, secondaryContact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnlinkRawContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UnlinkRawContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetPreferredSourceForPictureAsync(self: *@This(), aggregateContact: *Contact, rawContact: *Contact) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetPreferredSourceForPictureAsync(@ptrCast(self), aggregateContact, rawContact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IAggregateContactManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0379d5dd-db5a-4fd3-b54e-4df17917a212";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindRawContactsAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncOperation(IVectorView(Contact))) callconv(.winapi) HRESULT,
        TryLinkContactsAsync: *const fn(self: *anyopaque, primaryContact: *Contact, secondaryContact: *Contact, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        UnlinkRawContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TrySetPreferredSourceForPictureAsync: *const fn(self: *anyopaque, aggregateContact: *Contact, rawContact: *Contact, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAggregateContactManager2 = extern struct {
    vtable: *const VTable,
    pub fn SetRemoteIdentificationInformationAsync(self: *@This(), contactListId: HSTRING, remoteSourceId: HSTRING, accountId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetRemoteIdentificationInformationAsync(@ptrCast(self), contactListId, remoteSourceId, accountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IAggregateContactManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e8cc2d8-a9cd-4430-9c4b-01348db2ca50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetRemoteIdentificationInformationAsync: *const fn(self: *anyopaque, contactListId: HSTRING, remoteSourceId: HSTRING, accountId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContact = extern struct {
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
    pub fn getFields(self: *@This()) core.HResult!*IVector(IContactField) {
        var _r: *IVector(IContactField) = undefined;
        const _c = self.vtable.get_Fields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContact";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec0072f3-2118-4049-9ebc-17f0ab692b64";
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
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Fields: *const fn(self: *anyopaque, _r: **IVector(IContactField)) callconv(.winapi) HRESULT,
    };
};
pub const IContact2 = extern struct {
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
    pub fn getNotes(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Notes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNotes(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Notes(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhones(self: *@This()) core.HResult!*IVector(ContactPhone) {
        var _r: *IVector(ContactPhone) = undefined;
        const _c = self.vtable.get_Phones(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmails(self: *@This()) core.HResult!*IVector(ContactEmail) {
        var _r: *IVector(ContactEmail) = undefined;
        const _c = self.vtable.get_Emails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddresses(self: *@This()) core.HResult!*IVector(ContactAddress) {
        var _r: *IVector(ContactAddress) = undefined;
        const _c = self.vtable.get_Addresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectedServiceAccounts(self: *@This()) core.HResult!*IVector(ContactConnectedServiceAccount) {
        var _r: *IVector(ContactConnectedServiceAccount) = undefined;
        const _c = self.vtable.get_ConnectedServiceAccounts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImportantDates(self: *@This()) core.HResult!*IVector(ContactDate) {
        var _r: *IVector(ContactDate) = undefined;
        const _c = self.vtable.get_ImportantDates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataSuppliers(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DataSuppliers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJobInfo(self: *@This()) core.HResult!*IVector(ContactJobInfo) {
        var _r: *IVector(ContactJobInfo) = undefined;
        const _c = self.vtable.get_JobInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignificantOthers(self: *@This()) core.HResult!*IVector(ContactSignificantOther) {
        var _r: *IVector(ContactSignificantOther) = undefined;
        const _c = self.vtable.get_SignificantOthers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebsites(self: *@This()) core.HResult!*IVector(ContactWebsite) {
        var _r: *IVector(ContactWebsite) = undefined;
        const _c = self.vtable.get_Websites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_ProviderProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContact2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f312f365-bb77-4c94-802d-8328cee40c08";
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
        get_Notes: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Notes: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Phones: *const fn(self: *anyopaque, _r: **IVector(ContactPhone)) callconv(.winapi) HRESULT,
        get_Emails: *const fn(self: *anyopaque, _r: **IVector(ContactEmail)) callconv(.winapi) HRESULT,
        get_Addresses: *const fn(self: *anyopaque, _r: **IVector(ContactAddress)) callconv(.winapi) HRESULT,
        get_ConnectedServiceAccounts: *const fn(self: *anyopaque, _r: **IVector(ContactConnectedServiceAccount)) callconv(.winapi) HRESULT,
        get_ImportantDates: *const fn(self: *anyopaque, _r: **IVector(ContactDate)) callconv(.winapi) HRESULT,
        get_DataSuppliers: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_JobInfo: *const fn(self: *anyopaque, _r: **IVector(ContactJobInfo)) callconv(.winapi) HRESULT,
        get_SignificantOthers: *const fn(self: *anyopaque, _r: **IVector(ContactSignificantOther)) callconv(.winapi) HRESULT,
        get_Websites: *const fn(self: *anyopaque, _r: **IVector(ContactWebsite)) callconv(.winapi) HRESULT,
        get_ProviderProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IContact3 = extern struct {
    vtable: *const VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayPictureUserUpdateTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_DisplayPictureUserUpdateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayPictureUserUpdateTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_DisplayPictureUserUpdateTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMe(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMe(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAggregateId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AggregateId(@ptrCast(self), &_r);
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
    pub fn getRingToneToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RingToneToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRingToneToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RingToneToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDisplayPictureManuallySet(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisplayPictureManuallySet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLargeDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_LargeDisplayPicture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmallDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_SmallDisplayPicture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceDisplayPicture(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_SourceDisplayPicture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceDisplayPicture(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_SourceDisplayPicture(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextToneToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TextToneToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextToneToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TextToneToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAggregate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAggregate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FullName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayNameOverride(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayNameOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayNameOverride(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayNameOverride(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNickname(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Nickname(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNickname(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Nickname(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSortName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SortName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContact3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48201e67-e08e-42a4-b561-41d08ca9575d";
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
        get_DisplayPictureUserUpdateTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_DisplayPictureUserUpdateTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_IsMe: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AggregateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RingToneToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RingToneToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsDisplayPictureManuallySet: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_LargeDisplayPicture: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_SmallDisplayPicture: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_SourceDisplayPicture: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_SourceDisplayPicture: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_TextToneToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TextToneToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsAggregate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FullName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayNameOverride: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayNameOverride: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Nickname: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Nickname: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SortName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactAddress = extern struct {
    vtable: *const VTable,
    pub fn getStreetAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StreetAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStreetAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_StreetAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocality(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Locality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocality(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Locality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Region(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Region(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Country(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCountry(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Country(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostalCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPostalCode(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PostalCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!ContactAddressKind {
        var _r: ContactAddressKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ContactAddressKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9739d39a-42ce-4872-8d70-3063aa584b70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StreetAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_StreetAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Locality: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Locality: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Region: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Region: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Country: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Country: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_PostalCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PostalCode: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ContactAddressKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ContactAddressKind) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactAnnotation = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnnotationListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AnnotationListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getSupportedOperations(self: *@This()) core.HResult!ContactAnnotationOperations {
        var _r: ContactAnnotationOperations = undefined;
        const _c = self.vtable.get_SupportedOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportedOperations(self: *@This(), value: ContactAnnotationOperations) core.HResult!void {
        const _c = self.vtable.put_SupportedOperations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_ProviderProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "821fc2ef-7d41-44a2-84c3-60a281dd7b86";
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
        get_AnnotationListId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ContactId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SupportedOperations: *const fn(self: *anyopaque, _r: *ContactAnnotationOperations) callconv(.winapi) HRESULT,
        put_SupportedOperations: *const fn(self: *anyopaque, value: ContactAnnotationOperations) callconv(.winapi) HRESULT,
        get_IsDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ProviderProperties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IContactAnnotation2 = extern struct {
    vtable: *const VTable,
    pub fn getContactListId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactListId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactListId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactListId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAnnotation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b691ecf3-4ab7-4a1f-9941-0c9cf3171b75";
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
        put_ContactListId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactAnnotationList = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderPackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySaveAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySaveAnnotationAsync(@ptrCast(self), annotation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationAsync(self: *@This(), annotationId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotation) {
        var _r: *IAsyncOperation(ContactAnnotation) = undefined;
        const _c = self.vtable.GetAnnotationAsync(@ptrCast(self), annotationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAnnotationsByRemoteIdAsync(self: *@This(), remoteId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotation)) = undefined;
        const _c = self.vtable.FindAnnotationsByRemoteIdAsync(@ptrCast(self), remoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAnnotationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotation)) = undefined;
        const _c = self.vtable.FindAnnotationsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAnnotationAsync(@ptrCast(self), annotation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAnnotationList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92a486aa-5c88-45b9-aad0-461888e68d8a";
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
        get_ProviderPackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TrySaveAnnotationAsync: *const fn(self: *anyopaque, annotation: *ContactAnnotation, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetAnnotationAsync: *const fn(self: *anyopaque, annotationId: HSTRING, _r: **IAsyncOperation(ContactAnnotation)) callconv(.winapi) HRESULT,
        FindAnnotationsByRemoteIdAsync: *const fn(self: *anyopaque, remoteId: HSTRING, _r: **IAsyncOperation(IVectorView(ContactAnnotation))) callconv(.winapi) HRESULT,
        FindAnnotationsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactAnnotation))) callconv(.winapi) HRESULT,
        DeleteAnnotationAsync: *const fn(self: *anyopaque, annotation: *ContactAnnotation, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IContactAnnotationStore = extern struct {
    vtable: *const VTable,
    pub fn FindContactIdsByEmailAsync(self: *@This(), emailAddress: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.FindContactIdsByEmailAsync(@ptrCast(self), emailAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactIdsByPhoneNumberAsync(self: *@This(), phoneNumber: HSTRING) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.FindContactIdsByPhoneNumberAsync(@ptrCast(self), phoneNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAnnotationsForContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotation)) = undefined;
        const _c = self.vtable.FindAnnotationsForContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAnnotationAsync(self: *@This(), annotation: *ContactAnnotation) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DisableAnnotationAsync(@ptrCast(self), annotation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAnnotationListAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        var _r: *IAsyncOperation(ContactAnnotationList) = undefined;
        const _c = self.vtable.CreateAnnotationListAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAnnotationListAsync(self: *@This(), userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        var _r: *IAsyncOperation(ContactAnnotationList) = undefined;
        const _c = self.vtable.CreateAnnotationListAsync(@ptrCast(self), userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationListAsync(self: *@This(), annotationListId: HSTRING) core.HResult!*IAsyncOperation(ContactAnnotationList) {
        var _r: *IAsyncOperation(ContactAnnotationList) = undefined;
        const _c = self.vtable.GetAnnotationListAsync(@ptrCast(self), annotationListId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAnnotationListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotationList)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotationList)) = undefined;
        const _c = self.vtable.FindAnnotationListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAnnotationStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23acf4aa-7a77-457d-8203-987f4b31af09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindContactIdsByEmailAsync: *const fn(self: *anyopaque, emailAddress: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        FindContactIdsByPhoneNumberAsync: *const fn(self: *anyopaque, phoneNumber: HSTRING, _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
        FindAnnotationsForContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncOperation(IVectorView(ContactAnnotation))) callconv(.winapi) HRESULT,
        DisableAnnotationAsync: *const fn(self: *anyopaque, annotation: *ContactAnnotation, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CreateAnnotationListAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ContactAnnotationList)) callconv(.winapi) HRESULT,
        CreateAnnotationListAsync: *const fn(self: *anyopaque, userDataAccountId: HSTRING, _r: **IAsyncOperation(ContactAnnotationList)) callconv(.winapi) HRESULT,
        GetAnnotationListAsync: *const fn(self: *anyopaque, annotationListId: HSTRING, _r: **IAsyncOperation(ContactAnnotationList)) callconv(.winapi) HRESULT,
        FindAnnotationListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactAnnotationList))) callconv(.winapi) HRESULT,
    };
};
pub const IContactAnnotationStore2 = extern struct {
    vtable: *const VTable,
    pub fn FindAnnotationsForContactListAsync(self: *@This(), contactListId: HSTRING) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotation)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotation)) = undefined;
        const _c = self.vtable.FindAnnotationsForContactListAsync(@ptrCast(self), contactListId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactAnnotationStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ede23fd-61e7-4967-8ec5-bdf280a24063";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAnnotationsForContactListAsync: *const fn(self: *anyopaque, contactListId: HSTRING, _r: **IAsyncOperation(IVectorView(ContactAnnotation))) callconv(.winapi) HRESULT,
    };
};
pub const IContactBatch = extern struct {
    vtable: *const VTable,
    pub fn getContacts(self: *@This()) core.HResult!*IVectorView(Contact) {
        var _r: *IVectorView(Contact) = undefined;
        const _c = self.vtable.get_Contacts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!ContactBatchStatus {
        var _r: ContactBatchStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35d1972d-bfce-46bb-93f8-a5b06ec5e201";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contacts: *const fn(self: *anyopaque, _r: **IVectorView(Contact)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ContactBatchStatus) callconv(.winapi) HRESULT,
    };
};
pub const IContactCardDelayedDataLoader = extern struct {
    vtable: *const VTable,
    pub fn SetData(self: *@This(), contact: *Contact) core.HResult!void {
        const _c = self.vtable.SetData(@ptrCast(self), contact);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactCardDelayedDataLoader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b60af902-1546-434d-869c-6e3520760ef3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetData: *const fn(self: *anyopaque, contact: *Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactCardOptions = extern struct {
    vtable: *const VTable,
    pub fn getHeaderKind(self: *@This()) core.HResult!ContactCardHeaderKind {
        var _r: ContactCardHeaderKind = undefined;
        const _c = self.vtable.get_HeaderKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderKind(self: *@This(), value: ContactCardHeaderKind) core.HResult!void {
        const _c = self.vtable.put_HeaderKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialTabKind(self: *@This()) core.HResult!ContactCardTabKind {
        var _r: ContactCardTabKind = undefined;
        const _c = self.vtable.get_InitialTabKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialTabKind(self: *@This(), value: ContactCardTabKind) core.HResult!void {
        const _c = self.vtable.put_InitialTabKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactCardOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c0a4f7e-6ab6-4f3f-be72-817236eeea5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeaderKind: *const fn(self: *anyopaque, _r: *ContactCardHeaderKind) callconv(.winapi) HRESULT,
        put_HeaderKind: *const fn(self: *anyopaque, value: ContactCardHeaderKind) callconv(.winapi) HRESULT,
        get_InitialTabKind: *const fn(self: *anyopaque, _r: *ContactCardTabKind) callconv(.winapi) HRESULT,
        put_InitialTabKind: *const fn(self: *anyopaque, value: ContactCardTabKind) callconv(.winapi) HRESULT,
    };
};
pub const IContactCardOptions2 = extern struct {
    vtable: *const VTable,
    pub fn getServerSearchContactListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ServerSearchContactListIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactCardOptions2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f271ba0-d74b-4cc6-9f53-1b0eb5d1273c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServerSearchContactListIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IContactChange = extern struct {
    vtable: *const VTable,
    pub fn getChangeType(self: *@This()) core.HResult!ContactChangeType {
        var _r: ContactChangeType = undefined;
        const _c = self.vtable.get_ChangeType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "951d4b10-6a59-4720-a4e1-363d98c135d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeType: *const fn(self: *anyopaque, _r: *ContactChangeType) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
    };
};
pub const IContactChangeReader = extern struct {
    vtable: *const VTable,
    pub fn AcceptChanges(self: *@This()) core.HResult!void {
        const _c = self.vtable.AcceptChanges(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AcceptChangesThrough(self: *@This(), lastChangeToAccept: *ContactChange) core.HResult!void {
        const _c = self.vtable.AcceptChangesThrough(@ptrCast(self), lastChangeToAccept);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactChange)) {
        var _r: *IAsyncOperation(IVectorView(ContactChange)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChangeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217319fa-2d0c-42e0-a9da-3ecd56a78a47";
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
        AcceptChangesThrough: *const fn(self: *anyopaque, lastChangeToAccept: *ContactChange) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactChange))) callconv(.winapi) HRESULT,
    };
};
pub const IContactChangeTracker = extern struct {
    vtable: *const VTable,
    pub fn Enable(self: *@This()) core.HResult!void {
        const _c = self.vtable.Enable(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetChangeReader(self: *@This()) core.HResult!*ContactChangeReader {
        var _r: *ContactChangeReader = undefined;
        const _c = self.vtable.GetChangeReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChangeTracker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e992952-309b-404d-9712-b37bd30278aa";
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
        GetChangeReader: *const fn(self: *anyopaque, _r: **ContactChangeReader) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IContactChangeTracker2 = extern struct {
    vtable: *const VTable,
    pub fn getIsTracking(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTracking(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChangeTracker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f8ad0fc-9321-4d18-9c09-d708c63fcd31";
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
    };
};
pub const IContactChangedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChangedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5143ae8-1b03-46f8-b694-a523e83cfcb6";
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
pub const IContactChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*ContactChangedDeferral {
        var _r: *ContactChangedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "525e7fd1-73f3-4b7d-a918-580be4366121";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **ContactChangedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactConnectedServiceAccount = extern struct {
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
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactConnectedServiceAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6f83553-aa27-4731-8e4a-3dec5ce9eec9";
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
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactDate = extern struct {
    vtable: *const VTable,
    pub fn getDay(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Day(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDay(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Day(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMonth(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Month(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMonth(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Month(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYear(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_Year(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYear(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_Year(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!ContactDateKind {
        var _r: ContactDateKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ContactDateKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactDate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe98ae66-b205-4934-9174-0ff2b0565707";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Day: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Day: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_Month: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Month: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_Year: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_Year: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ContactDateKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ContactDateKind) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactEmail = extern struct {
    vtable: *const VTable,
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
    pub fn getKind(self: *@This()) core.HResult!ContactEmailKind {
        var _r: ContactEmailKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ContactEmailKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactEmail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90a219a9-e3d3-4d63-993b-05b9a5393abf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Address: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ContactEmailKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ContactEmailKind) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactField = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!ContactFieldType {
        var _r: ContactFieldType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategory(self: *@This()) core.HResult!ContactFieldCategory {
        var _r: ContactFieldCategory = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b176486a-d293-492c-a058-db575b3e3c0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *ContactFieldType) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *ContactFieldCategory) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactFieldFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateField(self: *@This(), value: HSTRING, ty: ContactFieldType) core.HResult!*ContactField {
        var _r: *ContactField = undefined;
        const _c = self.vtable.CreateField(@ptrCast(self), value, ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFieldWithTyWithCategory(self: *@This(), value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        var _r: *ContactField = undefined;
        const _c = self.vtable.CreateFieldWithTyWithCategory(@ptrCast(self), value, ty, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFieldWithTyWithCategory(self: *@This(), name: HSTRING, value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory) core.HResult!*ContactField {
        var _r: *ContactField = undefined;
        const _c = self.vtable.CreateFieldWithTyWithCategory(@ptrCast(self), name, value, ty, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactFieldFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85e2913f-0e4a-4a3e-8994-406ae7ed646e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateField: *const fn(self: *anyopaque, value: HSTRING, ty: ContactFieldType, _r: **ContactField) callconv(.winapi) HRESULT,
        CreateFieldWithTyWithCategory: *const fn(self: *anyopaque, value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory, _r: **ContactField) callconv(.winapi) HRESULT,
        CreateFieldWithTyWithCategory: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, ty: ContactFieldType, category: ContactFieldCategory, _r: **ContactField) callconv(.winapi) HRESULT,
    };
};
pub const IContactGroup = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59bdeb01-9e9a-475d-bfe5-a37b806d852c";
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
pub const IContactInformation = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.GetThumbnailAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmails(self: *@This()) core.HResult!*IVectorView(ContactField) {
        var _r: *IVectorView(ContactField) = undefined;
        const _c = self.vtable.get_Emails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumbers(self: *@This()) core.HResult!*IVectorView(ContactField) {
        var _r: *IVectorView(ContactField) = undefined;
        const _c = self.vtable.get_PhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocations(self: *@This()) core.HResult!*IVectorView(ContactLocationField) {
        var _r: *IVectorView(ContactLocationField) = undefined;
        const _c = self.vtable.get_Locations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstantMessages(self: *@This()) core.HResult!*IVectorView(ContactInstantMessageField) {
        var _r: *IVectorView(ContactInstantMessageField) = undefined;
        const _c = self.vtable.get_InstantMessages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomFields(self: *@This()) core.HResult!*IVectorView(ContactField) {
        var _r: *IVectorView(ContactField) = undefined;
        const _c = self.vtable.get_CustomFields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn QueryCustomFields(self: *@This(), customName: HSTRING) core.HResult!*IVectorView(ContactField) {
        var _r: *IVectorView(ContactField) = undefined;
        const _c = self.vtable.QueryCustomFields(@ptrCast(self), customName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "275eb6d4-6a2e-4278-a914-e460d5f088f6";
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
        GetThumbnailAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
        get_Emails: *const fn(self: *anyopaque, _r: **IVectorView(ContactField)) callconv(.winapi) HRESULT,
        get_PhoneNumbers: *const fn(self: *anyopaque, _r: **IVectorView(ContactField)) callconv(.winapi) HRESULT,
        get_Locations: *const fn(self: *anyopaque, _r: **IVectorView(ContactLocationField)) callconv(.winapi) HRESULT,
        get_InstantMessages: *const fn(self: *anyopaque, _r: **IVectorView(ContactInstantMessageField)) callconv(.winapi) HRESULT,
        get_CustomFields: *const fn(self: *anyopaque, _r: **IVectorView(ContactField)) callconv(.winapi) HRESULT,
        QueryCustomFields: *const fn(self: *anyopaque, customName: HSTRING, _r: **IVectorView(ContactField)) callconv(.winapi) HRESULT,
    };
};
pub const IContactInstantMessageField = extern struct {
    vtable: *const VTable,
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getService(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Service(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaunchUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LaunchUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactInstantMessageField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cce33b37-0d85-41fa-b43d-da599c3eb009";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Service: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LaunchUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IContactInstantMessageFieldFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstantMessage(self: *@This(), userName: HSTRING) core.HResult!*ContactInstantMessageField {
        var _r: *ContactInstantMessageField = undefined;
        const _c = self.vtable.CreateInstantMessage(@ptrCast(self), userName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstantMessageWithCategory(self: *@This(), userName: HSTRING, category: ContactFieldCategory) core.HResult!*ContactInstantMessageField {
        var _r: *ContactInstantMessageField = undefined;
        const _c = self.vtable.CreateInstantMessageWithCategory(@ptrCast(self), userName, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstantMessageWithVerb(self: *@This(), userName: HSTRING, category: ContactFieldCategory, service: HSTRING, displayText: HSTRING, verb: *Uri) core.HResult!*ContactInstantMessageField {
        var _r: *ContactInstantMessageField = undefined;
        const _c = self.vtable.CreateInstantMessageWithVerb(@ptrCast(self), userName, category, service, displayText, verb, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactInstantMessageFieldFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba0b6794-91a3-4bb2-b1b9-69a5dff0ba09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstantMessage: *const fn(self: *anyopaque, userName: HSTRING, _r: **ContactInstantMessageField) callconv(.winapi) HRESULT,
        CreateInstantMessageWithCategory: *const fn(self: *anyopaque, userName: HSTRING, category: ContactFieldCategory, _r: **ContactInstantMessageField) callconv(.winapi) HRESULT,
        CreateInstantMessageWithVerb: *const fn(self: *anyopaque, userName: HSTRING, category: ContactFieldCategory, service: HSTRING, displayText: HSTRING, verb: *Uri, _r: **ContactInstantMessageField) callconv(.winapi) HRESULT,
    };
};
pub const IContactJobInfo = extern struct {
    vtable: *const VTable,
    pub fn getCompanyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CompanyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompanyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CompanyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompanyYomiName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CompanyYomiName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompanyYomiName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CompanyYomiName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDepartment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Department(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDepartment(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Department(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getManager(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Manager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putManager(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Manager(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Office(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffice(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Office(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompanyAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CompanyAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompanyAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CompanyAddress(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactJobInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d117b4c-ce50-4b43-9e69-b18258ea5315";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompanyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CompanyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CompanyYomiName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CompanyYomiName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Department: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Department: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Manager: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Manager: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Office: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Office: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CompanyAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CompanyAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactLaunchActionVerbsStatics = extern struct {
    vtable: *const VTable,
    pub fn getCall(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Call(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMap(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Map(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPost(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Post(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoCall(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoCall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactLaunchActionVerbsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb1232d6-ee73-46e7-8761-11cd0157728f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Call: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Map: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Post: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoCall: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactList = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
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
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHidden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHidden(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!ContactListOtherAppReadAccess {
        var _r: ContactListOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: ContactListOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppWriteAccess(self: *@This()) core.HResult!ContactListOtherAppWriteAccess {
        var _r: ContactListOtherAppWriteAccess = undefined;
        const _c = self.vtable.get_OtherAppWriteAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppWriteAccess(self: *@This(), value: ContactListOtherAppWriteAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppWriteAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChangeTracker(self: *@This()) core.HResult!*ContactChangeTracker {
        var _r: *ContactChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSyncManager(self: *@This()) core.HResult!*ContactListSyncManager {
        var _r: *ContactListSyncManager = undefined;
        const _c = self.vtable.get_SyncManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsServerSearch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsServerSearch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addContactChanged(self: *@This(), value: *TypedEventHandler(ContactList,ContactChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContactChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContactChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContactChanged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactFromRemoteIdAsync(self: *@This(), remoteId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.GetContactFromRemoteIdAsync(@ptrCast(self), remoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMeContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.GetMeContactAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactReader(self: *@This()) core.HResult!*ContactReader {
        var _r: *ContactReader = undefined;
        const _c = self.vtable.GetContactReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactReader(self: *@This(), options: *ContactQueryOptions) core.HResult!*ContactReader {
        var _r: *ContactReader = undefined;
        const _c = self.vtable.GetContactReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.GetContactAsync(@ptrCast(self), contactId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16ddec75-392c-4845-9dfb-51a3e7ef3e42";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SourceDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsHidden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHidden: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *ContactListOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: ContactListOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_OtherAppWriteAccess: *const fn(self: *anyopaque, _r: *ContactListOtherAppWriteAccess) callconv(.winapi) HRESULT,
        put_OtherAppWriteAccess: *const fn(self: *anyopaque, value: ContactListOtherAppWriteAccess) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **ContactChangeTracker) callconv(.winapi) HRESULT,
        get_SyncManager: *const fn(self: *anyopaque, _r: **ContactListSyncManager) callconv(.winapi) HRESULT,
        get_SupportsServerSearch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_ContactChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(ContactList,ContactChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContactChanged: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetContactFromRemoteIdAsync: *const fn(self: *anyopaque, remoteId: HSTRING, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        GetMeContactAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        GetContactReader: *const fn(self: *anyopaque, _r: **ContactReader) callconv(.winapi) HRESULT,
        GetContactReader: *const fn(self: *anyopaque, options: *ContactQueryOptions, _r: **ContactReader) callconv(.winapi) HRESULT,
        SaveContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetContactAsync: *const fn(self: *anyopaque, contactId: HSTRING, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
    };
};
pub const IContactList2 = extern struct {
    vtable: *const VTable,
    pub fn RegisterSyncManagerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RegisterSyncManagerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsServerSearch(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsServerSearch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSyncConstraints(self: *@This()) core.HResult!*ContactListSyncConstraints {
        var _r: *ContactListSyncConstraints = undefined;
        const _c = self.vtable.get_SyncConstraints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactList2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb3943b4-4550-4dcb-9229-40ff91fb0203";
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
        put_SupportsServerSearch: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SyncConstraints: *const fn(self: *anyopaque, _r: **ContactListSyncConstraints) callconv(.winapi) HRESULT,
    };
};
pub const IContactList3 = extern struct {
    vtable: *const VTable,
    pub fn getLimitedWriteOperations(self: *@This()) core.HResult!*ContactListLimitedWriteOperations {
        var _r: *ContactListLimitedWriteOperations = undefined;
        const _c = self.vtable.get_LimitedWriteOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*ContactChangeTracker {
        var _r: *ContactChangeTracker = undefined;
        const _c = self.vtable.GetChangeTracker(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactList3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1578ee57-26fc-41e8-a850-5aa32514aca9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LimitedWriteOperations: *const fn(self: *anyopaque, _r: **ContactListLimitedWriteOperations) callconv(.winapi) HRESULT,
        GetChangeTracker: *const fn(self: *anyopaque, identity: HSTRING, _r: **ContactChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IContactListLimitedWriteOperations = extern struct {
    vtable: *const VTable,
    pub fn TryCreateOrUpdateContactAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryCreateOrUpdateContactAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDeleteContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDeleteContactAsync(@ptrCast(self), contactId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactListLimitedWriteOperations";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e19813da-4a0b-44b8-9a1f-a0f3d218175f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateOrUpdateContactAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDeleteContactAsync: *const fn(self: *anyopaque, contactId: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IContactListSyncConstraints = extern struct {
    vtable: *const VTable,
    pub fn getCanSyncDescriptions(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSyncDescriptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanSyncDescriptions(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanSyncDescriptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxHomePhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxHomePhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxHomePhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxHomePhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxMobilePhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxMobilePhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxMobilePhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxMobilePhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxWorkPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxWorkPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxWorkPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxWorkPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxOtherPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxOtherPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxOtherPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxOtherPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPagerPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxPagerPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPagerPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxPagerPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxBusinessFaxPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxBusinessFaxPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxBusinessFaxPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxBusinessFaxPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxHomeFaxPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxHomeFaxPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxHomeFaxPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxHomeFaxPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxCompanyPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxCompanyPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxCompanyPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxCompanyPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxAssistantPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxAssistantPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAssistantPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxAssistantPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxRadioPhoneNumbers(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxRadioPhoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxRadioPhoneNumbers(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxRadioPhoneNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPersonalEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxPersonalEmailAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPersonalEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxPersonalEmailAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxWorkEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxWorkEmailAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxWorkEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxWorkEmailAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxOtherEmailAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxOtherEmailAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxOtherEmailAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxOtherEmailAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxHomeAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxHomeAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxHomeAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxHomeAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxWorkAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxWorkAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxWorkAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxWorkAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxOtherAddresses(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxOtherAddresses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxOtherAddresses(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxOtherAddresses(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxBirthdayDates(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxBirthdayDates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxBirthdayDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxBirthdayDates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxAnniversaryDates(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxAnniversaryDates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAnniversaryDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxAnniversaryDates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxOtherDates(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxOtherDates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxOtherDates(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxOtherDates(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxOtherRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxOtherRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxOtherRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxOtherRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSpouseRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxSpouseRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSpouseRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxSpouseRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPartnerRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxPartnerRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPartnerRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxPartnerRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSiblingRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxSiblingRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSiblingRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxSiblingRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxParentRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxParentRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxParentRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxParentRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxChildRelationships(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxChildRelationships(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxChildRelationships(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxChildRelationships(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxJobInfo(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxJobInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxJobInfo(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxJobInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxWebsites(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_MaxWebsites(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxWebsites(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_MaxWebsites(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactListSyncConstraints";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2b0bf01-3062-4e2e-969d-018d1987f314";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanSyncDescriptions: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanSyncDescriptions: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaxHomePhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxHomePhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxMobilePhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxMobilePhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxWorkPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxWorkPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxOtherPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxOtherPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxPagerPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxPagerPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxBusinessFaxPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxBusinessFaxPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxHomeFaxPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxHomeFaxPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxCompanyPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxCompanyPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxAssistantPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxAssistantPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxRadioPhoneNumbers: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxRadioPhoneNumbers: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxPersonalEmailAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxPersonalEmailAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxWorkEmailAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxWorkEmailAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxOtherEmailAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxOtherEmailAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxHomeAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxHomeAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxWorkAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxWorkAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxOtherAddresses: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxOtherAddresses: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxBirthdayDates: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxBirthdayDates: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxAnniversaryDates: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxAnniversaryDates: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxOtherDates: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxOtherDates: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxOtherRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxOtherRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxSpouseRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxSpouseRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxPartnerRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxPartnerRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxSiblingRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxSiblingRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxParentRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxParentRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxChildRelationships: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxChildRelationships: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxJobInfo: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxJobInfo: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_MaxWebsites: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_MaxWebsites: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IContactListSyncManager = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ContactListSyncStatus {
        var _r: ContactListSyncStatus = undefined;
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
    pub fn addSyncStatusChanged(self: *@This(), handler: *TypedEventHandler(ContactListSyncManager,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SyncStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSyncStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SyncStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactListSyncManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "146e83be-7925-4acc-9de5-21ddd06f8674";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ContactListSyncStatus) callconv(.winapi) HRESULT,
        get_LastSuccessfulSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_LastAttemptedSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        SyncAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_SyncStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactListSyncManager,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SyncStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IContactListSyncManager2 = extern struct {
    vtable: *const VTable,
    pub fn putStatus(self: *@This(), value: ContactListSyncStatus) core.HResult!void {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactListSyncManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9591247-bb55-4e23-8128-370134a85d0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: ContactListSyncStatus) callconv(.winapi) HRESULT,
        put_LastSuccessfulSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        put_LastAttemptedSyncTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IContactLocationField = extern struct {
    vtable: *const VTable,
    pub fn getUnstructuredAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnstructuredAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Street(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_City(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Region(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCountry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Country(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostalCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactLocationField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ec00f82-ab6e-4b36-89e3-b23bc0a1dacc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnstructuredAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Street: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_City: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Region: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Country: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PostalCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactLocationFieldFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateLocation(self: *@This(), unstructuredAddress: HSTRING) core.HResult!*ContactLocationField {
        var _r: *ContactLocationField = undefined;
        const _c = self.vtable.CreateLocation(@ptrCast(self), unstructuredAddress, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLocationWithCategory(self: *@This(), unstructuredAddress: HSTRING, category: ContactFieldCategory) core.HResult!*ContactLocationField {
        var _r: *ContactLocationField = undefined;
        const _c = self.vtable.CreateLocationWithCategory(@ptrCast(self), unstructuredAddress, category, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLocationWithPostalCode(self: *@This(), unstructuredAddress: HSTRING, category: ContactFieldCategory, street: HSTRING, city: HSTRING, region: HSTRING, country: HSTRING, postalCode: HSTRING) core.HResult!*ContactLocationField {
        var _r: *ContactLocationField = undefined;
        const _c = self.vtable.CreateLocationWithPostalCode(@ptrCast(self), unstructuredAddress, category, street, city, region, country, postalCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactLocationFieldFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f79932d7-2fdf-43fe-8f18-41897390bcfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateLocation: *const fn(self: *anyopaque, unstructuredAddress: HSTRING, _r: **ContactLocationField) callconv(.winapi) HRESULT,
        CreateLocationWithCategory: *const fn(self: *anyopaque, unstructuredAddress: HSTRING, category: ContactFieldCategory, _r: **ContactLocationField) callconv(.winapi) HRESULT,
        CreateLocationWithPostalCode: *const fn(self: *anyopaque, unstructuredAddress: HSTRING, category: ContactFieldCategory, street: HSTRING, city: HSTRING, region: HSTRING, country: HSTRING, postalCode: HSTRING, _r: **ContactLocationField) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn ConvertContactToVCardAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        var _r: *IAsyncOperation(RandomAccessStreamReference) = undefined;
        const _c = self.vtable.ConvertContactToVCardAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertContactToVCardAsyncWithMaxBytes(self: *@This(), contact: *Contact, maxBytes: u32) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        var _r: *IAsyncOperation(RandomAccessStreamReference) = undefined;
        const _c = self.vtable.ConvertContactToVCardAsyncWithMaxBytes(@ptrCast(self), contact, maxBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertVCardToContactAsync(self: *@This(), vCard: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.ConvertVCardToContactAsync(@ptrCast(self), vCard, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This(), accessType: ContactStoreAccessType) core.HResult!*IAsyncOperation(ContactStore) {
        var _r: *IAsyncOperation(ContactStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAnnotationStoreAsync(self: *@This(), accessType: ContactAnnotationStoreAccessType) core.HResult!*IAsyncOperation(ContactAnnotationStore) {
        var _r: *IAsyncOperation(ContactAnnotationStore) = undefined;
        const _c = self.vtable.RequestAnnotationStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemDisplayNameOrder(self: *@This()) core.HResult!ContactNameOrder {
        var _r: ContactNameOrder = undefined;
        const _c = self.vtable.get_SystemDisplayNameOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemDisplayNameOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const _c = self.vtable.put_SystemDisplayNameOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemSortOrder(self: *@This()) core.HResult!ContactNameOrder {
        var _r: ContactNameOrder = undefined;
        const _c = self.vtable.get_SystemSortOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemSortOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const _c = self.vtable.put_SystemSortOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b74bba57-1076-4bef-aef3-54686d18387d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertContactToVCardAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncOperation(RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        ConvertContactToVCardAsyncWithMaxBytes: *const fn(self: *anyopaque, contact: *Contact, maxBytes: u32, _r: **IAsyncOperation(RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        ConvertVCardToContactAsync: *const fn(self: *anyopaque, vCard: *IRandomAccessStreamReference, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: ContactStoreAccessType, _r: **IAsyncOperation(ContactStore)) callconv(.winapi) HRESULT,
        RequestAnnotationStoreAsync: *const fn(self: *anyopaque, accessType: ContactAnnotationStoreAccessType, _r: **IAsyncOperation(ContactAnnotationStore)) callconv(.winapi) HRESULT,
        get_SystemDisplayNameOrder: *const fn(self: *anyopaque, _r: *ContactNameOrder) callconv(.winapi) HRESULT,
        put_SystemDisplayNameOrder: *const fn(self: *anyopaque, value: ContactNameOrder) callconv(.winapi) HRESULT,
        get_SystemSortOrder: *const fn(self: *anyopaque, _r: *ContactNameOrder) callconv(.winapi) HRESULT,
        put_SystemSortOrder: *const fn(self: *anyopaque, value: ContactNameOrder) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerForUser2 = extern struct {
    vtable: *const VTable,
    pub fn ShowFullContactCard(self: *@This(), contact: *Contact, fullContactCardOptions: *FullContactCardOptions) core.HResult!void {
        const _c = self.vtable.ShowFullContactCard(@ptrCast(self), contact, fullContactCardOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerForUser2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d469c2e-3b75-4a73-bb30-736645472256";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowFullContactCard: *const fn(self: *anyopaque, contact: *Contact, fullContactCardOptions: *FullContactCardOptions) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowContactCard(self: *@This(), contact: *Contact, selection: Rect) core.HResult!void {
        const _c = self.vtable.ShowContactCard(@ptrCast(self), contact, selection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowContactCardWithSelectionWithPreferredPlacement(self: *@This(), contact: *Contact, selection: Rect, preferredPlacement: Placement) core.HResult!void {
        const _c = self.vtable.ShowContactCardWithSelectionWithPreferredPlacement(@ptrCast(self), contact, selection, preferredPlacement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowDelayLoadedContactCard(self: *@This(), contact: *Contact, selection: Rect, preferredPlacement: Placement) core.HResult!*ContactCardDelayedDataLoader {
        var _r: *ContactCardDelayedDataLoader = undefined;
        const _c = self.vtable.ShowDelayLoadedContactCard(@ptrCast(self), contact, selection, preferredPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81f21ac0-f661-4708-ba4f-d386bd0d622e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowContactCard: *const fn(self: *anyopaque, contact: *Contact, selection: Rect) callconv(.winapi) HRESULT,
        ShowContactCardWithSelectionWithPreferredPlacement: *const fn(self: *anyopaque, contact: *Contact, selection: Rect, preferredPlacement: Placement) callconv(.winapi) HRESULT,
        ShowDelayLoadedContactCard: *const fn(self: *anyopaque, contact: *Contact, selection: Rect, preferredPlacement: Placement, _r: **ContactCardDelayedDataLoader) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactStore) {
        var _r: *IAsyncOperation(ContactStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a178e620-47d8-48cc-963c-9592b6e510c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ContactStore)) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn ConvertContactToVCardAsync(self: *@This(), contact: *Contact) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        var _r: *IAsyncOperation(RandomAccessStreamReference) = undefined;
        const _c = self.vtable.ConvertContactToVCardAsync(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertContactToVCardAsyncWithMaxBytes(self: *@This(), contact: *Contact, maxBytes: u32) core.HResult!*IAsyncOperation(RandomAccessStreamReference) {
        var _r: *IAsyncOperation(RandomAccessStreamReference) = undefined;
        const _c = self.vtable.ConvertContactToVCardAsyncWithMaxBytes(@ptrCast(self), contact, maxBytes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertVCardToContactAsync(self: *@This(), vCard: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.ConvertVCardToContactAsync(@ptrCast(self), vCard, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStoreAsync(self: *@This(), accessType: ContactStoreAccessType) core.HResult!*IAsyncOperation(ContactStore) {
        var _r: *IAsyncOperation(ContactStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAnnotationStoreAsync(self: *@This(), accessType: ContactAnnotationStoreAccessType) core.HResult!*IAsyncOperation(ContactAnnotationStore) {
        var _r: *IAsyncOperation(ContactAnnotationStore) = undefined;
        const _c = self.vtable.RequestAnnotationStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsShowContactCardSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsShowContactCardSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowContactCard(self: *@This(), contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions) core.HResult!void {
        const _c = self.vtable.ShowContactCard(@ptrCast(self), contact, selection, preferredPlacement, contactCardOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsShowDelayLoadedContactCardSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsShowDelayLoadedContactCardSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowDelayLoadedContactCard(self: *@This(), contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions) core.HResult!*ContactCardDelayedDataLoader {
        var _r: *ContactCardDelayedDataLoader = undefined;
        const _c = self.vtable.ShowDelayLoadedContactCard(@ptrCast(self), contact, selection, preferredPlacement, contactCardOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowFullContactCard(self: *@This(), contact: *Contact, fullContactCardOptions: *FullContactCardOptions) core.HResult!void {
        const _c = self.vtable.ShowFullContactCard(@ptrCast(self), contact, fullContactCardOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemDisplayNameOrder(self: *@This()) core.HResult!ContactNameOrder {
        var _r: ContactNameOrder = undefined;
        const _c = self.vtable.get_SystemDisplayNameOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemDisplayNameOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const _c = self.vtable.put_SystemDisplayNameOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemSortOrder(self: *@This()) core.HResult!ContactNameOrder {
        var _r: ContactNameOrder = undefined;
        const _c = self.vtable.get_SystemSortOrder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemSortOrder(self: *@This(), value: ContactNameOrder) core.HResult!void {
        const _c = self.vtable.put_SystemSortOrder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4cc3d42-7586-492a-930b-7bc138fc2139";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ConvertContactToVCardAsync: *const fn(self: *anyopaque, contact: *Contact, _r: **IAsyncOperation(RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        ConvertContactToVCardAsyncWithMaxBytes: *const fn(self: *anyopaque, contact: *Contact, maxBytes: u32, _r: **IAsyncOperation(RandomAccessStreamReference)) callconv(.winapi) HRESULT,
        ConvertVCardToContactAsync: *const fn(self: *anyopaque, vCard: *IRandomAccessStreamReference, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: ContactStoreAccessType, _r: **IAsyncOperation(ContactStore)) callconv(.winapi) HRESULT,
        RequestAnnotationStoreAsync: *const fn(self: *anyopaque, accessType: ContactAnnotationStoreAccessType, _r: **IAsyncOperation(ContactAnnotationStore)) callconv(.winapi) HRESULT,
        IsShowContactCardSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowContactCard: *const fn(self: *anyopaque, contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions) callconv(.winapi) HRESULT,
        IsShowDelayLoadedContactCardSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowDelayLoadedContactCard: *const fn(self: *anyopaque, contact: *Contact, selection: Rect, preferredPlacement: Placement, contactCardOptions: *ContactCardOptions, _r: **ContactCardDelayedDataLoader) callconv(.winapi) HRESULT,
        ShowFullContactCard: *const fn(self: *anyopaque, contact: *Contact, fullContactCardOptions: *FullContactCardOptions) callconv(.winapi) HRESULT,
        get_SystemDisplayNameOrder: *const fn(self: *anyopaque, _r: *ContactNameOrder) callconv(.winapi) HRESULT,
        put_SystemDisplayNameOrder: *const fn(self: *anyopaque, value: ContactNameOrder) callconv(.winapi) HRESULT,
        get_SystemSortOrder: *const fn(self: *anyopaque, _r: *ContactNameOrder) callconv(.winapi) HRESULT,
        put_SystemSortOrder: *const fn(self: *anyopaque, value: ContactNameOrder) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*ContactManagerForUser {
        var _r: *ContactManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24982272-347b-46dc-8d95-51bd41e15aaf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **ContactManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IContactManagerStatics5 = extern struct {
    vtable: *const VTable,
    pub fn IsShowFullContactCardSupportedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsShowFullContactCardSupportedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeMiddleNameInSystemDisplayAndSort(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeMiddleNameInSystemDisplayAndSort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeMiddleNameInSystemDisplayAndSort(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeMiddleNameInSystemDisplayAndSort(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactManagerStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7591a87-acb7-4fad-90f2-a8ab64cdbba4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsShowFullContactCardSupportedAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_IncludeMiddleNameInSystemDisplayAndSort: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeMiddleNameInSystemDisplayAndSort: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IContactMatchReason = extern struct {
    vtable: *const VTable,
    pub fn getField(self: *@This()) core.HResult!ContactMatchReasonKind {
        var _r: ContactMatchReasonKind = undefined;
        const _c = self.vtable.get_Field(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSegments(self: *@This()) core.HResult!*IVectorView(TextSegment) {
        var _r: *IVectorView(TextSegment) = undefined;
        const _c = self.vtable.get_Segments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactMatchReason";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc922504-e7d8-413e-95f4-b75c54c74077";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Field: *const fn(self: *anyopaque, _r: *ContactMatchReasonKind) callconv(.winapi) HRESULT,
        get_Segments: *const fn(self: *anyopaque, _r: **IVectorView(TextSegment)) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactName = extern struct {
    vtable: *const VTable,
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirstName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFirstName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FirstName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LastName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LastName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMiddleName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MiddleName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMiddleName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MiddleName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYomiGivenName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_YomiGivenName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYomiGivenName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_YomiGivenName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getYomiFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_YomiFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putYomiFamilyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_YomiFamilyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHonorificNameSuffix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HonorificNameSuffix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHonorificNameSuffix(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HonorificNameSuffix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHonorificNamePrefix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HonorificNamePrefix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHonorificNamePrefix(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HonorificNamePrefix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYomiDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_YomiDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f404e97b-9034-453c-8ebf-140a38c86f1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FirstName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FirstName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LastName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LastName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MiddleName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MiddleName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_YomiGivenName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_YomiGivenName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_YomiFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_YomiFamilyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HonorificNameSuffix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HonorificNameSuffix: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HonorificNamePrefix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HonorificNamePrefix: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_YomiDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactPanel = extern struct {
    vtable: *const VTable,
    pub fn ClosePanel(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClosePanel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaderColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_HeaderColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_HeaderColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLaunchFullAppRequested(self: *@This(), handler: *TypedEventHandler(ContactPanel,ContactPanelLaunchFullAppRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LaunchFullAppRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLaunchFullAppRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LaunchFullAppRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(ContactPanel,ContactPanelClosingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41bf1265-d2ee-4b97-a80a-7d8d64cca6f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ClosePanel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_HeaderColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_HeaderColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        add_LaunchFullAppRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactPanel,ContactPanelLaunchFullAppRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LaunchFullAppRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closing: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContactPanel,ContactPanelClosingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IContactPanelClosingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPanelClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "222174d3-cf4b-46d7-b739-6edc16110bfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IContactPanelLaunchFullAppRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPanelLaunchFullAppRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88d61c0e-23b4-4be8-8afc-072c25a4190d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IContactPhone = extern struct {
    vtable: *const VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Number(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Number(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!ContactPhoneKind {
        var _r: ContactPhoneKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKind(self: *@This(), value: ContactPhoneKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPhone";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "467dab65-2712-4f52-b783-9ea8111c63cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Number: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Number: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ContactPhoneKind) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: ContactPhoneKind) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactPicker = extern struct {
    vtable: *const VTable,
    pub fn getCommitButtonText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CommitButtonText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommitButtonText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CommitButtonText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionMode(self: *@This()) core.HResult!ContactSelectionMode {
        var _r: ContactSelectionMode = undefined;
        const _c = self.vtable.get_SelectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionMode(self: *@This(), value: ContactSelectionMode) core.HResult!void {
        const _c = self.vtable.put_SelectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_DesiredFields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickSingleContactAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactInformation) {
        var _r: *IAsyncOperation(ContactInformation) = undefined;
        const _c = self.vtable.PickSingleContactAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickMultipleContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactInformation)) {
        var _r: *IAsyncOperation(IVectorView(ContactInformation)) = undefined;
        const _c = self.vtable.PickMultipleContactsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e09fd91-42f8-4055-90a0-896f96738936";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommitButtonText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CommitButtonText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SelectionMode: *const fn(self: *anyopaque, _r: *ContactSelectionMode) callconv(.winapi) HRESULT,
        put_SelectionMode: *const fn(self: *anyopaque, value: ContactSelectionMode) callconv(.winapi) HRESULT,
        get_DesiredFields: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        PickSingleContactAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ContactInformation)) callconv(.winapi) HRESULT,
        PickMultipleContactsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactInformation))) callconv(.winapi) HRESULT,
    };
};
pub const IContactPicker2 = extern struct {
    vtable: *const VTable,
    pub fn getDesiredFieldsWithContactFieldType(self: *@This()) core.HResult!*IVector(ContactFieldType) {
        var _r: *IVector(ContactFieldType) = undefined;
        const _c = self.vtable.get_DesiredFieldsWithContactFieldType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.PickContactAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVector(Contact)) {
        var _r: *IAsyncOperation(IVector(Contact)) = undefined;
        const _c = self.vtable.PickContactsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPicker2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b35011cf-5cef-4d24-aa0c-340c5208725d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredFieldsWithContactFieldType: *const fn(self: *anyopaque, _r: **IVector(ContactFieldType)) callconv(.winapi) HRESULT,
        PickContactAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        PickContactsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVector(Contact))) callconv(.winapi) HRESULT,
    };
};
pub const IContactPicker3 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPicker3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e723315-b243-4bed-8516-22b1a7ac0ace";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IContactPickerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForUser(self: *@This(), user: *User) core.HResult!*ContactPicker {
        var _r: *ContactPicker = undefined;
        const _c = self.vtable.CreateForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupportedAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsSupportedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactPickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7488c029-6a53-4258-a3e9-62dff6784b6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForUser: *const fn(self: *anyopaque, user: *User, _r: **ContactPicker) callconv(.winapi) HRESULT,
        IsSupportedAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IContactQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getTextSearch(self: *@This()) core.HResult!*ContactQueryTextSearch {
        var _r: *ContactQueryTextSearch = undefined;
        const _c = self.vtable.get_TextSearch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContactListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ContactListIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIncludeContactsFromHiddenLists(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncludeContactsFromHiddenLists(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncludeContactsFromHiddenLists(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncludeContactsFromHiddenLists(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredFields(self: *@This()) core.HResult!ContactQueryDesiredFields {
        var _r: ContactQueryDesiredFields = undefined;
        const _c = self.vtable.get_DesiredFields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredFields(self: *@This(), value: ContactQueryDesiredFields) core.HResult!void {
        const _c = self.vtable.put_DesiredFields(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredOperations(self: *@This()) core.HResult!ContactAnnotationOperations {
        var _r: ContactAnnotationOperations = undefined;
        const _c = self.vtable.get_DesiredOperations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredOperations(self: *@This(), value: ContactAnnotationOperations) core.HResult!void {
        const _c = self.vtable.put_DesiredOperations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAnnotationListIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AnnotationListIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4408cc9e-7d7c-42f0-8ac7-f50733ecdbc1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextSearch: *const fn(self: *anyopaque, _r: **ContactQueryTextSearch) callconv(.winapi) HRESULT,
        get_ContactListIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_IncludeContactsFromHiddenLists: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncludeContactsFromHiddenLists: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DesiredFields: *const fn(self: *anyopaque, _r: *ContactQueryDesiredFields) callconv(.winapi) HRESULT,
        put_DesiredFields: *const fn(self: *anyopaque, value: ContactQueryDesiredFields) callconv(.winapi) HRESULT,
        get_DesiredOperations: *const fn(self: *anyopaque, _r: *ContactAnnotationOperations) callconv(.winapi) HRESULT,
        put_DesiredOperations: *const fn(self: *anyopaque, value: ContactAnnotationOperations) callconv(.winapi) HRESULT,
        get_AnnotationListIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IContactQueryOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithText(self: *@This(), text: HSTRING) core.HResult!*ContactQueryOptions {
        var _r: *ContactQueryOptions = undefined;
        const _c = self.vtable.CreateWithText(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithTextAndFields(self: *@This(), text: HSTRING, fields: ContactQuerySearchFields) core.HResult!*ContactQueryOptions {
        var _r: *ContactQueryOptions = undefined;
        const _c = self.vtable.CreateWithTextAndFields(@ptrCast(self), text, fields, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactQueryOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "543fba47-8ce7-46cb-9dac-9aa42a1bc8e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithText: *const fn(self: *anyopaque, text: HSTRING, _r: **ContactQueryOptions) callconv(.winapi) HRESULT,
        CreateWithTextAndFields: *const fn(self: *anyopaque, text: HSTRING, fields: ContactQuerySearchFields, _r: **ContactQueryOptions) callconv(.winapi) HRESULT,
    };
};
pub const IContactQueryTextSearch = extern struct {
    vtable: *const VTable,
    pub fn getFields(self: *@This()) core.HResult!ContactQuerySearchFields {
        var _r: ContactQuerySearchFields = undefined;
        const _c = self.vtable.get_Fields(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFields(self: *@This(), value: ContactQuerySearchFields) core.HResult!void {
        const _c = self.vtable.put_Fields(@ptrCast(self), value);
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
    pub fn getSearchScope(self: *@This()) core.HResult!ContactQuerySearchScope {
        var _r: ContactQuerySearchScope = undefined;
        const _c = self.vtable.get_SearchScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchScope(self: *@This(), value: ContactQuerySearchScope) core.HResult!void {
        const _c = self.vtable.put_SearchScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactQueryTextSearch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7e3f9cb-a957-439b-a0b7-1c02a1963ff0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Fields: *const fn(self: *anyopaque, _r: *ContactQuerySearchFields) callconv(.winapi) HRESULT,
        put_Fields: *const fn(self: *anyopaque, value: ContactQuerySearchFields) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SearchScope: *const fn(self: *anyopaque, _r: *ContactQuerySearchScope) callconv(.winapi) HRESULT,
        put_SearchScope: *const fn(self: *anyopaque, value: ContactQuerySearchScope) callconv(.winapi) HRESULT,
    };
};
pub const IContactReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(ContactBatch) {
        var _r: *IAsyncOperation(ContactBatch) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMatchingPropertiesWithMatchReason(self: *@This(), contact: *Contact) core.HResult!*IVectorView(ContactMatchReason) {
        var _r: *IVectorView(ContactMatchReason) = undefined;
        const _c = self.vtable.GetMatchingPropertiesWithMatchReason(@ptrCast(self), contact, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d397e42e-1488-42f2-bf64-253f4884bfed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ContactBatch)) callconv(.winapi) HRESULT,
        GetMatchingPropertiesWithMatchReason: *const fn(self: *anyopaque, contact: *Contact, _r: **IVectorView(ContactMatchReason)) callconv(.winapi) HRESULT,
    };
};
pub const IContactSignificantOther = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactSignificantOther";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8873b5ab-c5fb-46d8-93fe-da3ff1934054";
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
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactSignificantOther2 = extern struct {
    vtable: *const VTable,
    pub fn getRelationship(self: *@This()) core.HResult!ContactRelationship {
        var _r: ContactRelationship = undefined;
        const _c = self.vtable.get_Relationship(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelationship(self: *@This(), value: ContactRelationship) core.HResult!void {
        const _c = self.vtable.put_Relationship(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactSignificantOther2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d7bd474-3f03-45f8-ba0f-c4ed37d64219";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Relationship: *const fn(self: *anyopaque, _r: *ContactRelationship) callconv(.winapi) HRESULT,
        put_Relationship: *const fn(self: *anyopaque, value: ContactRelationship) callconv(.winapi) HRESULT,
    };
};
pub const IContactStore = extern struct {
    vtable: *const VTable,
    pub fn FindContactsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        var _r: *IAsyncOperation(IVectorView(Contact)) = undefined;
        const _c = self.vtable.FindContactsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactsAsync(self: *@This(), searchText: HSTRING) core.HResult!*IAsyncOperation(IVectorView(Contact)) {
        var _r: *IAsyncOperation(IVectorView(Contact)) = undefined;
        const _c = self.vtable.FindContactsAsync(@ptrCast(self), searchText, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactAsync(self: *@This(), contactId: HSTRING) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.GetContactAsync(@ptrCast(self), contactId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c220b10-3a6c-4293-b9bc-fe987f6e0d52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindContactsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(Contact))) callconv(.winapi) HRESULT,
        FindContactsAsync: *const fn(self: *anyopaque, searchText: HSTRING, _r: **IAsyncOperation(IVectorView(Contact))) callconv(.winapi) HRESULT,
        GetContactAsync: *const fn(self: *anyopaque, contactId: HSTRING, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
    };
};
pub const IContactStore2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeTracker(self: *@This()) core.HResult!*ContactChangeTracker {
        var _r: *ContactChangeTracker = undefined;
        const _c = self.vtable.get_ChangeTracker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addContactChanged(self: *@This(), value: *TypedEventHandler(ContactStore,ContactChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContactChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContactChanged(self: *@This(), value: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContactChanged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAggregateContactManager(self: *@This()) core.HResult!*AggregateContactManager {
        var _r: *AggregateContactManager = undefined;
        const _c = self.vtable.get_AggregateContactManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactList)) {
        var _r: *IAsyncOperation(IVectorView(ContactList)) = undefined;
        const _c = self.vtable.FindContactListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactListAsync(self: *@This(), contactListId: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var _r: *IAsyncOperation(ContactList) = undefined;
        const _c = self.vtable.GetContactListAsync(@ptrCast(self), contactListId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContactListAsync(self: *@This(), displayName: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var _r: *IAsyncOperation(ContactList) = undefined;
        const _c = self.vtable.CreateContactListAsync(@ptrCast(self), displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMeContactAsync(self: *@This()) core.HResult!*IAsyncOperation(Contact) {
        var _r: *IAsyncOperation(Contact) = undefined;
        const _c = self.vtable.GetMeContactAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactReader(self: *@This()) core.HResult!*ContactReader {
        var _r: *ContactReader = undefined;
        const _c = self.vtable.GetContactReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContactReader(self: *@This(), options: *ContactQueryOptions) core.HResult!*ContactReader {
        var _r: *ContactReader = undefined;
        const _c = self.vtable.GetContactReader(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContactListAsyncWithUserDataAccountId(self: *@This(), displayName: HSTRING, userDataAccountId: HSTRING) core.HResult!*IAsyncOperation(ContactList) {
        var _r: *IAsyncOperation(ContactList) = undefined;
        const _c = self.vtable.CreateContactListAsyncWithUserDataAccountId(@ptrCast(self), displayName, userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18ce1c22-ebd5-4bfb-b690-5f4f27c4f0e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeTracker: *const fn(self: *anyopaque, _r: **ContactChangeTracker) callconv(.winapi) HRESULT,
        add_ContactChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(ContactStore,ContactChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContactChanged: *const fn(self: *anyopaque, value: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AggregateContactManager: *const fn(self: *anyopaque, _r: **AggregateContactManager) callconv(.winapi) HRESULT,
        FindContactListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactList))) callconv(.winapi) HRESULT,
        GetContactListAsync: *const fn(self: *anyopaque, contactListId: HSTRING, _r: **IAsyncOperation(ContactList)) callconv(.winapi) HRESULT,
        CreateContactListAsync: *const fn(self: *anyopaque, displayName: HSTRING, _r: **IAsyncOperation(ContactList)) callconv(.winapi) HRESULT,
        GetMeContactAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Contact)) callconv(.winapi) HRESULT,
        GetContactReader: *const fn(self: *anyopaque, _r: **ContactReader) callconv(.winapi) HRESULT,
        GetContactReader: *const fn(self: *anyopaque, options: *ContactQueryOptions, _r: **ContactReader) callconv(.winapi) HRESULT,
        CreateContactListAsyncWithUserDataAccountId: *const fn(self: *anyopaque, displayName: HSTRING, userDataAccountId: HSTRING, _r: **IAsyncOperation(ContactList)) callconv(.winapi) HRESULT,
    };
};
pub const IContactStore3 = extern struct {
    vtable: *const VTable,
    pub fn GetChangeTracker(self: *@This(), identity: HSTRING) core.HResult!*ContactChangeTracker {
        var _r: *ContactChangeTracker = undefined;
        const _c = self.vtable.GetChangeTracker(@ptrCast(self), identity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactStore3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb882c6c-004e-4050-87f0-840407ee6818";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetChangeTracker: *const fn(self: *anyopaque, identity: HSTRING, _r: **ContactChangeTracker) callconv(.winapi) HRESULT,
    };
};
pub const IContactStoreNotificationTriggerDetails = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactStoreNotificationTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abb298d6-878a-4f8b-a9ce-46bb7d1c84ce";
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
pub const IContactWebsite = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactWebsite";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f130176-dc1b-4055-ad66-652f39d990e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IContactWebsite2 = extern struct {
    vtable: *const VTable,
    pub fn getRawValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RawValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRawValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RawValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IContactWebsite2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f87ee91e-5647-4068-bb5e-4b6f437ce308";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RawValue: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RawValue: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFullContactCardOptions = extern struct {
    vtable: *const VTable,
    pub fn getDesiredRemainingView(self: *@This()) core.HResult!ViewSizePreference {
        var _r: ViewSizePreference = undefined;
        const _c = self.vtable.get_DesiredRemainingView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredRemainingView(self: *@This(), value: ViewSizePreference) core.HResult!void {
        const _c = self.vtable.put_DesiredRemainingView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IFullContactCardOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8744436c-5cf9-4683-bdca-a1fdebf8dbce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredRemainingView: *const fn(self: *anyopaque, _r: *ViewSizePreference) callconv(.winapi) HRESULT,
        put_DesiredRemainingView: *const fn(self: *anyopaque, value: ViewSizePreference) callconv(.winapi) HRESULT,
    };
};
pub const IKnownContactFieldStatics = extern struct {
    vtable: *const VTable,
    pub fn getEmail(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Email(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstantMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InstantMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertNameToType(self: *@This(), name: HSTRING) core.HResult!ContactFieldType {
        var _r: ContactFieldType = undefined;
        const _c = self.vtable.ConvertNameToType(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConvertTypeToName(self: *@This(), ty: ContactFieldType) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ConvertTypeToName(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IKnownContactFieldStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e0e1b12-d627-4fca-bad4-1faf168c7d14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Email: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstantMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ConvertNameToType: *const fn(self: *anyopaque, name: HSTRING, _r: *ContactFieldType) callconv(.winapi) HRESULT,
        ConvertTypeToName: *const fn(self: *anyopaque, ty: ContactFieldType, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPinnedContactIdsQueryResult = extern struct {
    vtable: *const VTable,
    pub fn getContactIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ContactIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IPinnedContactIdsQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d9b2552-1579-4ddc-871f-a30a3aea9ba1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPinnedContactManager = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPinSurfaceSupported(self: *@This(), surface: PinnedContactSurface) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPinSurfaceSupported(@ptrCast(self), surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsContactPinned(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContactPinned(@ptrCast(self), contact, surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinContactAsync(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinContactAsync(@ptrCast(self), contact, surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPinContactsAsync(self: *@This(), contacts: *IIterable(Contact), surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestPinContactsAsync(@ptrCast(self), contacts, surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestUnpinContactAsync(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestUnpinContactAsync(@ptrCast(self), contact, surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SignalContactActivity(self: *@This(), contact: *Contact) core.HResult!void {
        const _c = self.vtable.SignalContactActivity(@ptrCast(self), contact);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPinnedContactIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(PinnedContactIdsQueryResult) {
        var _r: *IAsyncOperation(PinnedContactIdsQueryResult) = undefined;
        const _c = self.vtable.GetPinnedContactIdsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IPinnedContactManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcbc740c-e1d6-45c3-b8b6-a35604e167a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        IsPinSurfaceSupported: *const fn(self: *anyopaque, surface: PinnedContactSurface, _r: *bool) callconv(.winapi) HRESULT,
        IsContactPinned: *const fn(self: *anyopaque, contact: *Contact, surface: PinnedContactSurface, _r: *bool) callconv(.winapi) HRESULT,
        RequestPinContactAsync: *const fn(self: *anyopaque, contact: *Contact, surface: PinnedContactSurface, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPinContactsAsync: *const fn(self: *anyopaque, contacts: *IIterable(Contact), surface: PinnedContactSurface, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestUnpinContactAsync: *const fn(self: *anyopaque, contact: *Contact, surface: PinnedContactSurface, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SignalContactActivity: *const fn(self: *anyopaque, contact: *Contact) callconv(.winapi) HRESULT,
        GetPinnedContactIdsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PinnedContactIdsQueryResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPinnedContactManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PinnedContactManager {
        var _r: *PinnedContactManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*PinnedContactManager {
        var _r: *PinnedContactManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.IPinnedContactManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f65ccc7e-fdf9-486a-ace9-bc311d0ae7f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PinnedContactManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **PinnedContactManager) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const KnownContactField = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Email() core.HResult!HSTRING {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.getEmail();
    }
    pub fn get_PhoneNumber() core.HResult!HSTRING {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.getPhoneNumber();
    }
    pub fn get_Location() core.HResult!HSTRING {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.getLocation();
    }
    pub fn get_InstantMessage() core.HResult!HSTRING {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.getInstantMessage();
    }
    pub fn ConvertNameToType(name: HSTRING) core.HResult!ContactFieldType {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.ConvertNameToType(name);
    }
    pub fn ConvertTypeToName(ty: ContactFieldType) core.HResult!HSTRING {
        const factory = @This().IKnownContactFieldStaticsCache.get();
        return try factory.ConvertTypeToName(ty);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.KnownContactField";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownContactFieldStaticsCache: FactoryCache(IKnownContactFieldStatics, RUNTIME_NAME) = .{};
};
pub const PinnedContactIdsQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IPinnedContactIdsQueryResult = @ptrCast(self);
        return try this.getContactIds();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.PinnedContactIdsQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPinnedContactIdsQueryResult.GUID;
    pub const IID: Guid = IPinnedContactIdsQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPinnedContactIdsQueryResult.SIGNATURE);
};
pub const PinnedContactManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.getUser();
    }
    pub fn IsPinSurfaceSupported(self: *@This(), surface: PinnedContactSurface) core.HResult!bool {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.IsPinSurfaceSupported(surface);
    }
    pub fn IsContactPinned(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!bool {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.IsContactPinned(contact, surface);
    }
    pub fn RequestPinContactAsync(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.RequestPinContactAsync(contact, surface);
    }
    pub fn RequestPinContactsAsync(self: *@This(), contacts: *IIterable(Contact), surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.RequestPinContactsAsync(contacts, surface);
    }
    pub fn RequestUnpinContactAsync(self: *@This(), contact: *Contact, surface: PinnedContactSurface) core.HResult!*IAsyncOperation(bool) {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.RequestUnpinContactAsync(contact, surface);
    }
    pub fn SignalContactActivity(self: *@This(), contact: *Contact) core.HResult!void {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.SignalContactActivity(contact);
    }
    pub fn GetPinnedContactIdsAsync(self: *@This()) core.HResult!*IAsyncOperation(PinnedContactIdsQueryResult) {
        const this: *IPinnedContactManager = @ptrCast(self);
        return try this.GetPinnedContactIdsAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PinnedContactManager {
        const factory = @This().IPinnedContactManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*PinnedContactManager {
        const factory = @This().IPinnedContactManagerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IPinnedContactManagerStaticsCache.get();
        return try factory.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Contacts.PinnedContactManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPinnedContactManager.GUID;
    pub const IID: Guid = IPinnedContactManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPinnedContactManager.SIGNATURE);
    var _IPinnedContactManagerStaticsCache: FactoryCache(IPinnedContactManagerStatics, RUNTIME_NAME) = .{};
};
pub const PinnedContactSurface = enum(i32) {
    StartMenu = 0,
    Taskbar = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const RandomAccessStreamReference = @import("../Storage/Streams.zig").RandomAccessStreamReference;
const Deferral = @import("../Foundation.zig").Deferral;
const IVector = @import("../Foundation/Collections.zig").IVector;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const IClosable = @import("../Foundation.zig").IClosable;
const ViewSizePreference = @import("../UI/ViewManagement.zig").ViewSizePreference;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const Placement = @import("../UI/Popups.zig").Placement;
const TextSegment = @import("../Data/Text.zig").TextSegment;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const User = @import("../System.zig").User;
pub const DataProvider = @import("./Contacts/DataProvider.zig");
pub const Provider = @import("./Contacts/Provider.zig");
