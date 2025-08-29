pub const IUserDataAccountPartnerAccountInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPriority(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Priority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountKind(self: *@This()) core.HResult!UserDataAccountProviderPartnerAccountKind {
        var _r: UserDataAccountProviderPartnerAccountKind = undefined;
        const _c = self.vtable.get_AccountKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountPartnerAccountInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f200037-f6ef-4ec3-8630-012c59c1149f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Priority: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AccountKind: *const fn(self: *anyopaque, _r: *UserDataAccountProviderPartnerAccountKind) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountProviderAddAccountOperation = extern struct {
    vtable: *const VTable,
    pub fn getContentKinds(self: *@This()) core.HResult!UserDataAccountContentKinds {
        var _r: UserDataAccountContentKinds = undefined;
        const _c = self.vtable.get_ContentKinds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartnerAccountInfos(self: *@This()) core.HResult!*IVectorView(UserDataAccountPartnerAccountInfo) {
        var _r: *IVectorView(UserDataAccountPartnerAccountInfo) = undefined;
        const _c = self.vtable.get_PartnerAccountInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This(), userDataAccountId: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self), userDataAccountId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderAddAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9c72530-3f84-4b5d-8eaa-45e97aa842ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentKinds: *const fn(self: *anyopaque, _r: *UserDataAccountContentKinds) callconv(.winapi) HRESULT,
        get_PartnerAccountInfos: *const fn(self: *anyopaque, _r: **IVectorView(UserDataAccountPartnerAccountInfo)) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque, userDataAccountId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountProviderOperation = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!UserDataAccountProviderOperationKind {
        var _r: UserDataAccountProviderOperationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a20aad63-888c-4a62-a3dd-34d07a802b2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *UserDataAccountProviderOperationKind) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountProviderResolveErrorsOperation = extern struct {
    vtable: *const VTable,
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderResolveErrorsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6235dc15-bfcb-41e1-9957-9759a28846cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountProviderSettingsOperation = extern struct {
    vtable: *const VTable,
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserDataAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportCompleted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.IUserDataAccountProviderSettingsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92034db7-8648-4f30-acfa-3002658ca80d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserDataAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ReportCompleted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const UserDataAccountPartnerAccountInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccountPartnerAccountInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getPriority(self: *@This()) core.HResult!u32 {
        const this: *IUserDataAccountPartnerAccountInfo = @ptrCast(self);
        return try this.getPriority();
    }
    pub fn getAccountKind(self: *@This()) core.HResult!UserDataAccountProviderPartnerAccountKind {
        const this: *IUserDataAccountPartnerAccountInfo = @ptrCast(self);
        return try this.getAccountKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountPartnerAccountInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountPartnerAccountInfo.GUID;
    pub const IID: Guid = IUserDataAccountPartnerAccountInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountPartnerAccountInfo.SIGNATURE);
};
pub const UserDataAccountProviderAddAccountOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentKinds(self: *@This()) core.HResult!UserDataAccountContentKinds {
        const this: *IUserDataAccountProviderAddAccountOperation = @ptrCast(self);
        return try this.getContentKinds();
    }
    pub fn getPartnerAccountInfos(self: *@This()) core.HResult!*IVectorView(UserDataAccountPartnerAccountInfo) {
        const this: *IUserDataAccountProviderAddAccountOperation = @ptrCast(self);
        return try this.getPartnerAccountInfos();
    }
    pub fn ReportCompleted(self: *@This(), userDataAccountId: HSTRING) core.HResult!void {
        const this: *IUserDataAccountProviderAddAccountOperation = @ptrCast(self);
        return try this.ReportCompleted(userDataAccountId);
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataAccountProviderOperationKind {
        var this: ?*IUserDataAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderAddAccountOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountProviderAddAccountOperation.GUID;
    pub const IID: Guid = IUserDataAccountProviderAddAccountOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountProviderAddAccountOperation.SIGNATURE);
};
pub const UserDataAccountProviderOperationKind = enum(i32) {
    AddAccount = 0,
    Settings = 1,
    ResolveErrors = 2,
};
pub const UserDataAccountProviderPartnerAccountKind = enum(i32) {
    Exchange = 0,
    PopOrImap = 1,
};
pub const UserDataAccountProviderResolveErrorsOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccountProviderResolveErrorsOperation = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IUserDataAccountProviderResolveErrorsOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataAccountProviderOperationKind {
        var this: ?*IUserDataAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderResolveErrorsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountProviderResolveErrorsOperation.GUID;
    pub const IID: Guid = IUserDataAccountProviderResolveErrorsOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountProviderResolveErrorsOperation.SIGNATURE);
};
pub const UserDataAccountProviderSettingsOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserDataAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IUserDataAccountProviderSettingsOperation = @ptrCast(self);
        return try this.getUserDataAccountId();
    }
    pub fn ReportCompleted(self: *@This()) core.HResult!void {
        const this: *IUserDataAccountProviderSettingsOperation = @ptrCast(self);
        return try this.ReportCompleted();
    }
    pub fn getKind(self: *@This()) core.HResult!UserDataAccountProviderOperationKind {
        var this: ?*IUserDataAccountProviderOperation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUserDataAccountProviderOperation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKind();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.Provider.UserDataAccountProviderSettingsOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserDataAccountProviderSettingsOperation.GUID;
    pub const IID: Guid = IUserDataAccountProviderSettingsOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserDataAccountProviderSettingsOperation.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const UserDataAccountContentKinds = @import("../UserDataAccounts.zig").UserDataAccountContentKinds;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
