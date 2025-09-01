pub const AccountsSettingsPane = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAccountCommandsRequested(self: *@This(), handler: *TypedEventHandler(AccountsSettingsPane,AccountsSettingsPaneCommandsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAccountsSettingsPane = @ptrCast(self);
        return try this.addAccountCommandsRequested(handler);
    }
    pub fn removeAccountCommandsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IAccountsSettingsPane = @ptrCast(self);
        return try this.removeAccountCommandsRequested(cookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*AccountsSettingsPane {
        const _f = @This().IAccountsSettingsPaneStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub fn Show() core.HResult!void {
        const _f = @This().IAccountsSettingsPaneStaticsCache.get();
        return try _f.Show();
    }
    pub fn ShowManageAccountsForUserAsync(user: *User) core.HResult!*IAsyncAction {
        const _f = @This().IAccountsSettingsPaneStatics3Cache.get();
        return try _f.ShowManageAccountsForUserAsync(user);
    }
    pub fn ShowAddAccountForUserAsync(user: *User) core.HResult!*IAsyncAction {
        const _f = @This().IAccountsSettingsPaneStatics3Cache.get();
        return try _f.ShowAddAccountForUserAsync(user);
    }
    pub fn ShowManageAccountsAsync() core.HResult!*IAsyncAction {
        const _f = @This().IAccountsSettingsPaneStatics2Cache.get();
        return try _f.ShowManageAccountsAsync();
    }
    pub fn ShowAddAccountAsync() core.HResult!*IAsyncAction {
        const _f = @This().IAccountsSettingsPaneStatics2Cache.get();
        return try _f.ShowAddAccountAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.AccountsSettingsPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccountsSettingsPane.GUID;
    pub const IID: Guid = IAccountsSettingsPane.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccountsSettingsPane.SIGNATURE);
    var _IAccountsSettingsPaneStaticsCache: FactoryCache(IAccountsSettingsPaneStatics, RUNTIME_NAME) = .{};
    var _IAccountsSettingsPaneStatics3Cache: FactoryCache(IAccountsSettingsPaneStatics3, RUNTIME_NAME) = .{};
    var _IAccountsSettingsPaneStatics2Cache: FactoryCache(IAccountsSettingsPaneStatics2, RUNTIME_NAME) = .{};
};
pub const AccountsSettingsPaneCommandsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccountProviderCommands(self: *@This()) core.HResult!*IVector(WebAccountProviderCommand) {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getWebAccountProviderCommands();
    }
    pub fn getWebAccountCommands(self: *@This()) core.HResult!*IVector(WebAccountCommand) {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getWebAccountCommands();
    }
    pub fn getCredentialCommands(self: *@This()) core.HResult!*IVector(CredentialCommand) {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getCredentialCommands();
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(SettingsCommand) {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getCommands();
    }
    pub fn getHeaderText(self: *@This()) core.HResult!HSTRING {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getHeaderText();
    }
    pub fn putHeaderText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.putHeaderText(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AccountsSettingsPaneEventDeferral {
        const this: *IAccountsSettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IAccountsSettingsPaneCommandsRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAccountsSettingsPaneCommandsRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.AccountsSettingsPaneCommandsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccountsSettingsPaneCommandsRequestedEventArgs.GUID;
    pub const IID: Guid = IAccountsSettingsPaneCommandsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccountsSettingsPaneCommandsRequestedEventArgs.SIGNATURE);
};
pub const AccountsSettingsPaneEventDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IAccountsSettingsPaneEventDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.AccountsSettingsPaneEventDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccountsSettingsPaneEventDeferral.GUID;
    pub const IID: Guid = IAccountsSettingsPaneEventDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccountsSettingsPaneEventDeferral.SIGNATURE);
};
pub const CredentialCommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        const this: *ICredentialCommand = @ptrCast(self);
        return try this.getPasswordCredential();
    }
    pub fn getCredentialDeleted(self: *@This()) core.HResult!*CredentialCommandCredentialDeletedHandler {
        const this: *ICredentialCommand = @ptrCast(self);
        return try this.getCredentialDeleted();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCredentialCommand(passwordCredential: *PasswordCredential) core.HResult!*CredentialCommand {
        const _f = @This().ICredentialCommandFactoryCache.get();
        return try _f.CreateCredentialCommand(passwordCredential);
    }
    pub fn CreateCredentialCommandWithHandler(passwordCredential: *PasswordCredential, deleted: *CredentialCommandCredentialDeletedHandler) core.HResult!*CredentialCommand {
        const _f = @This().ICredentialCommandFactoryCache.get();
        return try _f.CreateCredentialCommandWithHandler(passwordCredential, deleted);
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.CredentialCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICredentialCommand.GUID;
    pub const IID: Guid = ICredentialCommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICredentialCommand.SIGNATURE);
    var _ICredentialCommandFactoryCache: FactoryCache(ICredentialCommandFactory, RUNTIME_NAME) = .{};
};
pub const CredentialCommandCredentialDeletedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, command: *CredentialCommand) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, command: *CredentialCommand) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, command: *CredentialCommand) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, command);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.CredentialCommandCredentialDeletedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61c0e185-0977-4678-b4e2-98727afbeed9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, command: *CredentialCommand) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const IAccountsSettingsPane = extern struct {
    vtable: *const VTable,
    pub fn addAccountCommandsRequested(self: *@This(), handler: *TypedEventHandler(AccountsSettingsPane,AccountsSettingsPaneCommandsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountCommandsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountCommandsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountCommandsRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81ea942c-4f09-4406-a538-838d9b14b7e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AccountCommandsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AccountsSettingsPane,AccountsSettingsPaneCommandsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountCommandsRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAccountsSettingsPaneCommandsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWebAccountProviderCommands(self: *@This()) core.HResult!*IVector(WebAccountProviderCommand) {
        var _r: *IVector(WebAccountProviderCommand) = undefined;
        const _c = self.vtable.get_WebAccountProviderCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebAccountCommands(self: *@This()) core.HResult!*IVector(WebAccountCommand) {
        var _r: *IVector(WebAccountCommand) = undefined;
        const _c = self.vtable.get_WebAccountCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialCommands(self: *@This()) core.HResult!*IVector(CredentialCommand) {
        var _r: *IVector(CredentialCommand) = undefined;
        const _c = self.vtable.get_CredentialCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommands(self: *@This()) core.HResult!*IVector(SettingsCommand) {
        var _r: *IVector(SettingsCommand) = undefined;
        const _c = self.vtable.get_Commands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_HeaderText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AccountsSettingsPaneEventDeferral {
        var _r: *AccountsSettingsPaneEventDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b68c099-db19-45d0-9abf-95d3773c9330";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccountProviderCommands: *const fn(self: *anyopaque, _r: **IVector(WebAccountProviderCommand)) callconv(.winapi) HRESULT,
        get_WebAccountCommands: *const fn(self: *anyopaque, _r: **IVector(WebAccountCommand)) callconv(.winapi) HRESULT,
        get_CredentialCommands: *const fn(self: *anyopaque, _r: **IVector(CredentialCommand)) callconv(.winapi) HRESULT,
        get_Commands: *const fn(self: *anyopaque, _r: **IVector(SettingsCommand)) callconv(.winapi) HRESULT,
        get_HeaderText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_HeaderText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **AccountsSettingsPaneEventDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IAccountsSettingsPaneCommandsRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneCommandsRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "362f7bad-4e37-4967-8c40-e78ee7a1e5bb";
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
pub const IAccountsSettingsPaneEventDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneEventDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbf25d3f-e5ba-40ef-93da-65e096e5fb04";
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
pub const IAccountsSettingsPaneStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*AccountsSettingsPane {
        var _r: *AccountsSettingsPane = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Show(self: *@This()) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "561f8b60-b0ec-4150-a8dc-208ee44b068a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **AccountsSettingsPane) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAccountsSettingsPaneStatics2 = extern struct {
    vtable: *const VTable,
    pub fn ShowManageAccountsAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowManageAccountsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAccountAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAddAccountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d21df7c2-ce0d-484f-b8e8-e823c215765e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowManageAccountsAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAddAccountAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAccountsSettingsPaneStatics3 = extern struct {
    vtable: *const VTable,
    pub fn ShowManageAccountsForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowManageAccountsForUserAsync(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAddAccountForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAddAccountForUserAsync(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IAccountsSettingsPaneStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08410458-a2ba-4c6f-b4ac-48f514331216";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowManageAccountsForUserAsync: *const fn(self: *anyopaque, user: *User, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAddAccountForUserAsync: *const fn(self: *anyopaque, user: *User, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICredentialCommand = extern struct {
    vtable: *const VTable,
    pub fn getPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_PasswordCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialDeleted(self: *@This()) core.HResult!*CredentialCommandCredentialDeletedHandler {
        var _r: *CredentialCommandCredentialDeletedHandler = undefined;
        const _c = self.vtable.get_CredentialDeleted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ICredentialCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5f665e6-6143-4a7a-a971-b017ba978ce2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PasswordCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        get_CredentialDeleted: *const fn(self: *anyopaque, _r: **CredentialCommandCredentialDeletedHandler) callconv(.winapi) HRESULT,
    };
};
pub const ICredentialCommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateCredentialCommand(self: *@This(), passwordCredential: *PasswordCredential) core.HResult!*CredentialCommand {
        var _r: *CredentialCommand = undefined;
        const _c = self.vtable.CreateCredentialCommand(@ptrCast(self), passwordCredential, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCredentialCommandWithHandler(self: *@This(), passwordCredential: *PasswordCredential, deleted: *CredentialCommandCredentialDeletedHandler) core.HResult!*CredentialCommand {
        var _r: *CredentialCommand = undefined;
        const _c = self.vtable.CreateCredentialCommandWithHandler(@ptrCast(self), passwordCredential, deleted, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ICredentialCommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27e88c17-bc3e-4b80-9495-4ed720e48a91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCredentialCommand: *const fn(self: *anyopaque, passwordCredential: *PasswordCredential, _r: **CredentialCommand) callconv(.winapi) HRESULT,
        CreateCredentialCommandWithHandler: *const fn(self: *anyopaque, passwordCredential: *PasswordCredential, deleted: *CredentialCommandCredentialDeletedHandler, _r: **CredentialCommand) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsCommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateSettingsCommand(self: *@This(), settingsCommandId: *IInspectable, label: HSTRING, handler: *UICommandInvokedHandler) core.HResult!*SettingsCommand {
        var _r: *SettingsCommand = undefined;
        const _c = self.vtable.CreateSettingsCommand(@ptrCast(self), settingsCommandId, label, handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsCommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68e15b33-1c83-433a-aa5a-ceeea5bd4764";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSettingsCommand: *const fn(self: *anyopaque, settingsCommandId: *IInspectable, label: HSTRING, handler: *UICommandInvokedHandler, _r: **SettingsCommand) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsCommandStatics = extern struct {
    vtable: *const VTable,
    pub fn getAccountsCommand(self: *@This()) core.HResult!*SettingsCommand {
        var _r: *SettingsCommand = undefined;
        const _c = self.vtable.get_AccountsCommand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsCommandStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "749ae954-2f69-4b17-8aba-d05ce5778e46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccountsCommand: *const fn(self: *anyopaque, _r: **SettingsCommand) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountCommand = extern struct {
    vtable: *const VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_WebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvoked(self: *@This()) core.HResult!*WebAccountCommandInvokedHandler {
        var _r: *WebAccountCommandInvokedHandler = undefined;
        const _c = self.vtable.get_Invoked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActions(self: *@This()) core.HResult!SupportedWebAccountActions {
        var _r: SupportedWebAccountActions = undefined;
        const _c = self.vtable.get_Actions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IWebAccountCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "caa39398-9cfa-4246-b0c4-a913a3896541";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccount: *const fn(self: *anyopaque, _r: **WebAccount) callconv(.winapi) HRESULT,
        get_Invoked: *const fn(self: *anyopaque, _r: **WebAccountCommandInvokedHandler) callconv(.winapi) HRESULT,
        get_Actions: *const fn(self: *anyopaque, _r: *SupportedWebAccountActions) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountCommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWebAccountCommand(self: *@This(), webAccount: *WebAccount, invoked: *WebAccountCommandInvokedHandler, actions: SupportedWebAccountActions) core.HResult!*WebAccountCommand {
        var _r: *WebAccountCommand = undefined;
        const _c = self.vtable.CreateWebAccountCommand(@ptrCast(self), webAccount, invoked, actions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IWebAccountCommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfa6cdff-2f2d-42f5-81de-1d56bafc496d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWebAccountCommand: *const fn(self: *anyopaque, webAccount: *WebAccount, invoked: *WebAccountCommandInvokedHandler, actions: SupportedWebAccountActions, _r: **WebAccountCommand) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountInvokedArgs = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!WebAccountAction {
        var _r: WebAccountAction = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IWebAccountInvokedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7abcc40-a1d8-4c5d-9a7f-1d34b2f90ad2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *WebAccountAction) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderCommand = extern struct {
    vtable: *const VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        var _r: *WebAccountProvider = undefined;
        const _c = self.vtable.get_WebAccountProvider(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInvoked(self: *@This()) core.HResult!*WebAccountProviderCommandInvokedHandler {
        var _r: *WebAccountProviderCommandInvokedHandler = undefined;
        const _c = self.vtable.get_Invoked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IWebAccountProviderCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d69bdd9a-a0a6-4e9b-88dc-c71e757a3501";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WebAccountProvider: *const fn(self: *anyopaque, _r: **WebAccountProvider) callconv(.winapi) HRESULT,
        get_Invoked: *const fn(self: *anyopaque, _r: **WebAccountProviderCommandInvokedHandler) callconv(.winapi) HRESULT,
    };
};
pub const IWebAccountProviderCommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWebAccountProviderCommand(self: *@This(), webAccountProvider: *WebAccountProvider, invoked: *WebAccountProviderCommandInvokedHandler) core.HResult!*WebAccountProviderCommand {
        var _r: *WebAccountProviderCommand = undefined;
        const _c = self.vtable.CreateWebAccountProviderCommand(@ptrCast(self), webAccountProvider, invoked, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.IWebAccountProviderCommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5658a1b-b176-4776-8469-a9d3ff0b3f59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWebAccountProviderCommand: *const fn(self: *anyopaque, webAccountProvider: *WebAccountProvider, invoked: *WebAccountProviderCommandInvokedHandler, _r: **WebAccountProviderCommand) callconv(.winapi) HRESULT,
    };
};
pub const SettingsCommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IUICommand = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getInvoked(self: *@This()) core.HResult!*UICommandInvokedHandler {
        const this: *IUICommand = @ptrCast(self);
        return try this.getInvoked();
    }
    pub fn putInvoked(self: *@This(), value: *UICommandInvokedHandler) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putInvoked(value);
    }
    pub fn getId(self: *@This()) core.HResult!*IInspectable {
        const this: *IUICommand = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IUICommand = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateSettingsCommand(settingsCommandId: *IInspectable, label: HSTRING, handler: *UICommandInvokedHandler) core.HResult!*SettingsCommand {
        const _f = @This().ISettingsCommandFactoryCache.get();
        return try _f.CreateSettingsCommand(settingsCommandId, label, handler);
    }
    pub fn getAccountsCommand() core.HResult!*SettingsCommand {
        const _f = @This().ISettingsCommandStaticsCache.get();
        return try _f.getAccountsCommand();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.SettingsCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUICommand.GUID;
    pub const IID: Guid = IUICommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUICommand.SIGNATURE);
    var _ISettingsCommandFactoryCache: FactoryCache(ISettingsCommandFactory, RUNTIME_NAME) = .{};
    var _ISettingsCommandStaticsCache: FactoryCache(ISettingsCommandStatics, RUNTIME_NAME) = .{};
};
pub const SupportedWebAccountActions = enum(i32) {
    None = 0,
    Reconnect = 1,
    Remove = 2,
    ViewDetails = 4,
    Manage = 8,
    More = 16,
};
pub const WebAccountAction = enum(i32) {
    Reconnect = 0,
    Remove = 1,
    ViewDetails = 2,
    Manage = 3,
    More = 4,
};
pub const WebAccountCommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IWebAccountCommand = @ptrCast(self);
        return try this.getWebAccount();
    }
    pub fn getInvoked(self: *@This()) core.HResult!*WebAccountCommandInvokedHandler {
        const this: *IWebAccountCommand = @ptrCast(self);
        return try this.getInvoked();
    }
    pub fn getActions(self: *@This()) core.HResult!SupportedWebAccountActions {
        const this: *IWebAccountCommand = @ptrCast(self);
        return try this.getActions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWebAccountCommand(webAccount: *WebAccount, invoked: *WebAccountCommandInvokedHandler, actions: SupportedWebAccountActions) core.HResult!*WebAccountCommand {
        const _f = @This().IWebAccountCommandFactoryCache.get();
        return try _f.CreateWebAccountCommand(webAccount, invoked, actions);
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.WebAccountCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountCommand.GUID;
    pub const IID: Guid = IWebAccountCommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountCommand.SIGNATURE);
    var _IWebAccountCommandFactoryCache: FactoryCache(IWebAccountCommandFactory, RUNTIME_NAME) = .{};
};
pub const WebAccountCommandInvokedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, command: *WebAccountCommand, args: *WebAccountInvokedArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, command: *WebAccountCommand, args: *WebAccountInvokedArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, command: *WebAccountCommand, args: *WebAccountInvokedArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, command, args);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.WebAccountCommandInvokedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ee6e459-1705-4a9a-b599-a0c3d6921973";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, command: *WebAccountCommand, args: *WebAccountInvokedArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const WebAccountInvokedArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!WebAccountAction {
        const this: *IWebAccountInvokedArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.WebAccountInvokedArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountInvokedArgs.GUID;
    pub const IID: Guid = IWebAccountInvokedArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountInvokedArgs.SIGNATURE);
};
pub const WebAccountProviderCommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWebAccountProvider(self: *@This()) core.HResult!*WebAccountProvider {
        const this: *IWebAccountProviderCommand = @ptrCast(self);
        return try this.getWebAccountProvider();
    }
    pub fn getInvoked(self: *@This()) core.HResult!*WebAccountProviderCommandInvokedHandler {
        const this: *IWebAccountProviderCommand = @ptrCast(self);
        return try this.getInvoked();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWebAccountProviderCommand(webAccountProvider: *WebAccountProvider, invoked: *WebAccountProviderCommandInvokedHandler) core.HResult!*WebAccountProviderCommand {
        const _f = @This().IWebAccountProviderCommandFactoryCache.get();
        return try _f.CreateWebAccountProviderCommand(webAccountProvider, invoked);
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.WebAccountProviderCommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebAccountProviderCommand.GUID;
    pub const IID: Guid = IWebAccountProviderCommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebAccountProviderCommand.SIGNATURE);
    var _IWebAccountProviderCommandFactoryCache: FactoryCache(IWebAccountProviderCommandFactory, RUNTIME_NAME) = .{};
};
pub const WebAccountProviderCommandInvokedHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, command: *WebAccountProviderCommand) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, command: *WebAccountProviderCommand) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, command: *WebAccountProviderCommand) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, command);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.WebAccountProviderCommandInvokedHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7de5527-4c8f-42dd-84da-5ec493abdb9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, command: *WebAccountProviderCommand) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ISettingsPane = extern struct {
    vtable: *const VTable,
    pub fn addCommandsRequested(self: *@This(), handler: *TypedEventHandler(SettingsPane,SettingsPaneCommandsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommandsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommandsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommandsRequested(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1cd0932-4570-4c69-8d38-89446561ace0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CommandsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SettingsPane,SettingsPaneCommandsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommandsRequested: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsPaneCommandsRequest = extern struct {
    vtable: *const VTable,
    pub fn getApplicationCommands(self: *@This()) core.HResult!*IVector(SettingsCommand) {
        var _r: *IVector(SettingsCommand) = undefined;
        const _c = self.vtable.get_ApplicationCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44df23ae-5d6e-4068-a168-f47643182114";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationCommands: *const fn(self: *anyopaque, _r: **IVector(SettingsCommand)) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsPaneCommandsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*SettingsPaneCommandsRequest {
        var _r: *SettingsPaneCommandsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsPaneCommandsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "205f5d24-1b48-4629-a6ca-2fdfedafb75d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **SettingsPaneCommandsRequest) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsPaneStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SettingsPane {
        var _r: *SettingsPane = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Show(self: *@This()) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEdge(self: *@This()) core.HResult!SettingsEdgeLocation {
        var _r: SettingsEdgeLocation = undefined;
        const _c = self.vtable.get_Edge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.ISettingsPaneStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c6a52c5-ff19-471b-ba6b-f8f35694ad9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SettingsPane) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Edge: *const fn(self: *anyopaque, _r: *SettingsEdgeLocation) callconv(.winapi) HRESULT,
    };
};
pub const SettingsEdgeLocation = enum(i32) {
    Right = 0,
    Left = 1,
};
pub const SettingsPane = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCommandsRequested(self: *@This(), handler: *TypedEventHandler(SettingsPane,SettingsPaneCommandsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISettingsPane = @ptrCast(self);
        return try this.addCommandsRequested(handler);
    }
    pub fn removeCommandsRequested(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISettingsPane = @ptrCast(self);
        return try this.removeCommandsRequested(cookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*SettingsPane {
        const _f = @This().ISettingsPaneStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub fn Show() core.HResult!void {
        const _f = @This().ISettingsPaneStaticsCache.get();
        return try _f.Show();
    }
    pub fn getEdge() core.HResult!SettingsEdgeLocation {
        const _f = @This().ISettingsPaneStaticsCache.get();
        return try _f.getEdge();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.SettingsPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISettingsPane.GUID;
    pub const IID: Guid = ISettingsPane.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISettingsPane.SIGNATURE);
    var _ISettingsPaneStaticsCache: FactoryCache(ISettingsPaneStatics, RUNTIME_NAME) = .{};
};
pub const SettingsPaneCommandsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getApplicationCommands(self: *@This()) core.HResult!*IVector(SettingsCommand) {
        const this: *ISettingsPaneCommandsRequest = @ptrCast(self);
        return try this.getApplicationCommands();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISettingsPaneCommandsRequest.GUID;
    pub const IID: Guid = ISettingsPaneCommandsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISettingsPaneCommandsRequest.SIGNATURE);
};
pub const SettingsPaneCommandsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*SettingsPaneCommandsRequest {
        const this: *ISettingsPaneCommandsRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.ApplicationSettings.SettingsPaneCommandsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISettingsPaneCommandsRequestedEventArgs.GUID;
    pub const IID: Guid = ISettingsPaneCommandsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISettingsPaneCommandsRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IUICommand = @import("./Popups.zig").IUICommand;
const WebAccount = @import("../Security/Credentials.zig").WebAccount;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const UICommandInvokedHandler = @import("./Popups.zig").UICommandInvokedHandler;
const IInspectable = @import("../Foundation.zig").IInspectable;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const IAgileObject = @import("../root.zig").IAgileObject;
const WebAccountProvider = @import("../Security/Credentials.zig").WebAccountProvider;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
