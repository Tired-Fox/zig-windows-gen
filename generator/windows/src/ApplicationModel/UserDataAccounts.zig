pub const IUserDataAccount = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserDisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!UserDataAccountOtherAppReadAccess {
        var _r: UserDataAccountOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: UserDataAccountOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceAccountTypeId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceAccountTypeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn FindAppointmentCalendarsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        var _r: *IAsyncOperation(IVectorView(AppointmentCalendar)) = undefined;
        const _c = self.vtable.FindAppointmentCalendarsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindEmailMailboxesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailbox)) {
        var _r: *IAsyncOperation(IVectorView(EmailMailbox)) = undefined;
        const _c = self.vtable.FindEmailMailboxesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactList)) {
        var _r: *IAsyncOperation(IVectorView(ContactList)) = undefined;
        const _c = self.vtable.FindContactListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactAnnotationListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotationList)) {
        var _r: *IAsyncOperation(IVectorView(ContactAnnotationList)) = undefined;
        const _c = self.vtable.FindContactAnnotationListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9c4367e-b348-4910-be94-4ad4bba6dea7";
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
        get_UserDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserDisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *UserDataAccountOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: UserDataAccountOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_DeviceAccountTypeId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FindAppointmentCalendarsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppointmentCalendar))) callconv(.winapi) HRESULT,
        FindEmailMailboxesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EmailMailbox))) callconv(.winapi) HRESULT,
        FindContactListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactList))) callconv(.winapi) HRESULT,
        FindContactAnnotationListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactAnnotationList))) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccount2 = extern struct {
    vtable: *const VTable,
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EnterpriseId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsProtectedUnderLock(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProtectedUnderLock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccount2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "078cd89f-de82-404b-8195-c8a3ac198f60";
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
        get_IsProtectedUnderLock: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccount3 = extern struct {
    vtable: *const VTable,
    pub fn getExplictReadAccessPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ExplictReadAccessPackageFamilyNames(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccount3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01533845-6c43-4286-9d69-3e1709a1f266";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExplictReadAccessPackageFamilyNames: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccount4 = extern struct {
    vtable: *const VTable,
    pub fn getCanShowCreateContactGroup(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanShowCreateContactGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanShowCreateContactGroup(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanShowCreateContactGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_ProviderProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindUserDataTaskListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataTaskList)) {
        var _r: *IAsyncOperation(IVectorView(UserDataTaskList)) = undefined;
        const _c = self.vtable.FindUserDataTaskListsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindContactGroupsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactGroup)) {
        var _r: *IAsyncOperation(IVectorView(ContactGroup)) = undefined;
        const _c = self.vtable.FindContactGroupsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShowCreateContactGroupAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.TryShowCreateContactGroupAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsProtectedUnderLock(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsProtectedUnderLock(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIcon(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Icon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccount4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4315210-eae5-4f0a-a8b2-1cca115e008f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanShowCreateContactGroup: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanShowCreateContactGroup: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ProviderProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        FindUserDataTaskListsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UserDataTaskList))) callconv(.winapi) HRESULT,
        FindContactGroupsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(ContactGroup))) callconv(.winapi) HRESULT,
        TryShowCreateContactGroupAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        put_IsProtectedUnderLock: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_Icon: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), storeAccessType: UserDataAccountStoreAccessType) core.HResult!*IAsyncOperation(UserDataAccountStore) {
        var _r: *IAsyncOperation(UserDataAccountStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), storeAccessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56a6e8db-db8f-41ab-a65f-8c5971aac982";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, storeAccessType: UserDataAccountStoreAccessType, _r: **IAsyncOperation(UserDataAccountStore)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), storeAccessType: UserDataAccountStoreAccessType) core.HResult!*IAsyncOperation(UserDataAccountStore) {
        var _r: *IAsyncOperation(UserDataAccountStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), storeAccessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAccountAsync(self: *@This(), contentKinds: UserDataAccountContentKinds) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.ShowAddAccountAsync(@ptrCast(self), contentKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAccountSettingsAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAccountSettingsAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAccountErrorResolverAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAccountErrorResolverAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d9b89ea-1928-4a20-86d5-3c737f7dc3b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, storeAccessType: UserDataAccountStoreAccessType, _r: **IAsyncOperation(UserDataAccountStore)) callconv(.winapi) HRESULT,
        ShowAddAccountAsync: *const fn(self: *anyopaque, contentKinds: UserDataAccountContentKinds, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ShowAccountSettingsAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAccountErrorResolverAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*UserDataAccountManagerForUser {
        var _r: *UserDataAccountManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a3ded88-316b-435e-b534-f7d4b4b7dba6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **UserDataAccountManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountStore = extern struct {
    vtable: *const VTable,
    pub fn FindAccountsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataAccount)) {
        var _r: *IAsyncOperation(IVectorView(UserDataAccount)) = undefined;
        const _c = self.vtable.FindAccountsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccountAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var _r: *IAsyncOperation(UserDataAccount) = undefined;
        const _c = self.vtable.GetAccountAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAccountAsync(self: *@This(), userDisplayName: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var _r: *IAsyncOperation(UserDataAccount) = undefined;
        const _c = self.vtable.CreateAccountAsync(@ptrCast(self), userDisplayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2073b0ad-7d0a-4e76-bf45-2368f978a59a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAccountsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UserDataAccount))) callconv(.winapi) HRESULT,
        GetAccountAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(UserDataAccount)) callconv(.winapi) HRESULT,
        CreateAccountAsync: *const fn(self: *anyopaque, userDisplayName: HSTRING, _r: **IAsyncOperation(UserDataAccount)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountStore2 = extern struct {
    vtable: *const VTable,
    pub fn CreateAccountAsync(self: *@This(), userDisplayName: HSTRING, packageRelativeAppId: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var _r: *IAsyncOperation(UserDataAccount) = undefined;
        const _c = self.vtable.CreateAccountAsync(@ptrCast(self), userDisplayName, packageRelativeAppId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStoreChanged(self: *@This(), handler: *TypedEventHandler(UserDataAccountStore,UserDataAccountStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StoreChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StoreChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1e0aef7-9560-4631-8af0-061d30161469";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAccountAsync: *const fn(self: *anyopaque, userDisplayName: HSTRING, packageRelativeAppId: HSTRING, _r: **IAsyncOperation(UserDataAccount)) callconv(.winapi) HRESULT,
        add_StoreChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UserDataAccountStore,UserDataAccountStoreChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StoreChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountStore3 = extern struct {
    vtable: *const VTable,
    pub fn CreateAccountAsync(self: *@This(), userDisplayName: HSTRING, packageRelativeAppId: HSTRING, enterpriseId: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var _r: *IAsyncOperation(UserDataAccount) = undefined;
        const _c = self.vtable.CreateAccountAsync(@ptrCast(self), userDisplayName, packageRelativeAppId, enterpriseId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStore3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8142c094-f3c9-478b-b117-6585bebb6789";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAccountAsync: *const fn(self: *anyopaque, userDisplayName: HSTRING, packageRelativeAppId: HSTRING, enterpriseId: HSTRING, _r: **IAsyncOperation(UserDataAccount)) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountStoreChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.IUserDataAccountStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84e3e2e5-8820-4512-b1f6-2e035be1072c";
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
pub const UserDataAccount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUserDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getUserDisplayName();
    }
    pub fn putUserDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.putUserDisplayName(value);
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!UserDataAccountOtherAppReadAccess {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: UserDataAccountOtherAppReadAccess) core.HResult!void {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn getDeviceAccountTypeId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getDeviceAccountTypeId();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn DeleteAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.DeleteAsync();
    }
    pub fn FindAppointmentCalendarsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppointmentCalendar)) {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.FindAppointmentCalendarsAsync();
    }
    pub fn FindEmailMailboxesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EmailMailbox)) {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.FindEmailMailboxesAsync();
    }
    pub fn FindContactListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactList)) {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.FindContactListsAsync();
    }
    pub fn FindContactAnnotationListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactAnnotationList)) {
        const this: *IUserDataAccount = @ptrCast(self);
        return try this.FindContactAnnotationListsAsync();
    }
    pub fn getEnterpriseId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUserDataAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEnterpriseId();
    }
    pub fn getIsProtectedUnderLock(self: *@This()) core.HResult!bool {
        var this: ?*IUserDataAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsProtectedUnderLock();
    }
    pub fn getExplictReadAccessPackageFamilyNames(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IUserDataAccount3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExplictReadAccessPackageFamilyNames();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IUserDataAccount3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IUserDataAccount3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDisplayName(value);
    }
    pub fn getCanShowCreateContactGroup(self: *@This()) core.HResult!bool {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanShowCreateContactGroup();
    }
    pub fn putCanShowCreateContactGroup(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanShowCreateContactGroup(value);
    }
    pub fn getProviderProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProviderProperties();
    }
    pub fn FindUserDataTaskListsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataTaskList)) {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindUserDataTaskListsAsync();
    }
    pub fn FindContactGroupsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(ContactGroup)) {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindContactGroupsAsync();
    }
    pub fn TryShowCreateContactGroupAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryShowCreateContactGroupAsync();
    }
    pub fn putIsProtectedUnderLock(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsProtectedUnderLock(value);
    }
    pub fn putIcon(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        var this: ?*IUserDataAccount4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccount4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIcon(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.UserDataAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccount.GUID;
    pub const IID: Guid = IUserDataAccount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccount.SIGNATURE);
};
pub const UserDataAccountContentKinds = enum(i32) {
    Email = 1,
    Contact = 2,
    Appointment = 4,
};
pub const UserDataAccountManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestStoreAsync(storeAccessType: UserDataAccountStoreAccessType) core.HResult!*IAsyncOperation(UserDataAccountStore) {
        const factory = @This().IUserDataAccountManagerStaticsCache.get();
        return try factory.RequestStoreAsync(storeAccessType);
    }
    pub fn ShowAddAccountAsync(contentKinds: UserDataAccountContentKinds) core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserDataAccountManagerStaticsCache.get();
        return try factory.ShowAddAccountAsync(contentKinds);
    }
    pub fn ShowAccountSettingsAsync(id: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IUserDataAccountManagerStaticsCache.get();
        return try factory.ShowAccountSettingsAsync(id);
    }
    pub fn ShowAccountErrorResolverAsync(id: HSTRING) core.HResult!*IAsyncAction {
        const factory = @This().IUserDataAccountManagerStaticsCache.get();
        return try factory.ShowAccountErrorResolverAsync(id);
    }
    pub fn GetForUser(user: *User) core.HResult!*UserDataAccountManagerForUser {
        const factory = @This().IUserDataAccountManagerStatics2Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.UserDataAccountManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUserDataAccountManagerStaticsCache: FactoryCache(IUserDataAccountManagerStatics, RUNTIME_NAME) = .{};
    var _IUserDataAccountManagerStatics2Cache: FactoryCache(IUserDataAccountManagerStatics2, RUNTIME_NAME) = .{};
};
pub const UserDataAccountManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestStoreAsync(self: *@This(), storeAccessType: UserDataAccountStoreAccessType) core.HResult!*IAsyncOperation(UserDataAccountStore) {
        const this: *IUserDataAccountManagerForUser = @ptrCast(self);
        return try this.RequestStoreAsync(storeAccessType);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IUserDataAccountManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.UserDataAccountManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountManagerForUser.GUID;
    pub const IID: Guid = IUserDataAccountManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountManagerForUser.SIGNATURE);
};
pub const UserDataAccountOtherAppReadAccess = enum(i32) {
    SystemOnly = 0,
    Full = 1,
    None = 2,
};
pub const UserDataAccountStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindAccountsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UserDataAccount)) {
        const this: *IUserDataAccountStore = @ptrCast(self);
        return try this.FindAccountsAsync();
    }
    pub fn GetAccountAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        const this: *IUserDataAccountStore = @ptrCast(self);
        return try this.GetAccountAsync(id);
    }
    pub fn CreateAccountAsync(self: *@This(), userDisplayName: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var this: ?*IUserDataAccountStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAccountAsync(userDisplayName);
    }
    pub fn CreateAccountAsyncWithPackageRelativeAppId(self: *@This(), userDisplayName: HSTRING, packageRelativeAppId: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var this: ?*IUserDataAccountStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAccountAsyncWithPackageRelativeAppId(userDisplayName, packageRelativeAppId);
    }
    pub fn addStoreChanged(self: *@This(), handler: *TypedEventHandler(UserDataAccountStore,UserDataAccountStoreChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUserDataAccountStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStoreChanged(handler);
    }
    pub fn removeStoreChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUserDataAccountStore2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountStore2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStoreChanged(token);
    }
    pub fn CreateAccountAsyncWithEnterpriseId(self: *@This(), userDisplayName: HSTRING, packageRelativeAppId: HSTRING, enterpriseId: HSTRING) core.HResult!*IAsyncOperation(UserDataAccount) {
        var this: ?*IUserDataAccountStore3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountStore3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAccountAsyncWithEnterpriseId(userDisplayName, packageRelativeAppId, enterpriseId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.UserDataAccountStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountStore.GUID;
    pub const IID: Guid = IUserDataAccountStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountStore.SIGNATURE);
};
pub const UserDataAccountStoreAccessType = enum(i32) {
    AllAccountsReadOnly = 0,
    AppAccountsReadWrite = 1,
};
pub const UserDataAccountStoreChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IUserDataAccountStoreChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.UserDataAccountStoreChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountStoreChangedEventArgs.GUID;
    pub const IID: Guid = IUserDataAccountStoreChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountStoreChangedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IVector = @import("../Foundation/Collections.zig").IVector;
const ContactList = @import("./Contacts.zig").ContactList;
const AppointmentCalendar = @import("./Appointments.zig").AppointmentCalendar;
const EmailMailbox = @import("./Email.zig").EmailMailbox;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const ContactAnnotationList = @import("./Contacts.zig").ContactAnnotationList;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const ContactGroup = @import("./Contacts.zig").ContactGroup;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const UserDataTaskList = @import("./UserDataTasks.zig").UserDataTaskList;
const User = @import("../System.zig").User;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
pub const Provider = @import("./UserDataAccounts/Provider.zig");
pub const SystemAccess = @import("./UserDataAccounts/SystemAccess.zig");
