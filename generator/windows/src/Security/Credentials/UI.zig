pub const AuthenticationProtocol = enum(i32) {
    Basic = 0,
    Digest = 1,
    Ntlm = 2,
    Kerberos = 3,
    Negotiate = 4,
    CredSsp = 5,
    Custom = 6,
};
pub const CredentialPicker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn PickAsync(options: *CredentialPickerOptions) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        const factory = @This().ICredentialPickerStaticsCache.get();
        return try factory.PickAsync(options);
    }
    pub fn PickAsyncWithMessage(targetName: HSTRING, message: HSTRING) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        const factory = @This().ICredentialPickerStaticsCache.get();
        return try factory.PickAsyncWithMessage(targetName, message);
    }
    pub fn PickAsyncWithMessageWithCaption(targetName: HSTRING, message: HSTRING, caption: HSTRING) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        const factory = @This().ICredentialPickerStaticsCache.get();
        return try factory.PickAsyncWithMessageWithCaption(targetName, message, caption);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.CredentialPicker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICredentialPickerStaticsCache: FactoryCache(ICredentialPickerStatics, RUNTIME_NAME) = .{};
};
pub const CredentialPickerOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putCaption(value);
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getCaption();
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putMessage(value);
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn putErrorCode(self: *@This(), value: u32) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putErrorCode(value);
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putAuthenticationProtocol(self: *@This(), value: AuthenticationProtocol) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putAuthenticationProtocol(value);
    }
    pub fn getAuthenticationProtocol(self: *@This()) core.HResult!AuthenticationProtocol {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getAuthenticationProtocol();
    }
    pub fn putCustomAuthenticationProtocol(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putCustomAuthenticationProtocol(value);
    }
    pub fn getCustomAuthenticationProtocol(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getCustomAuthenticationProtocol();
    }
    pub fn putPreviousCredential(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putPreviousCredential(value);
    }
    pub fn getPreviousCredential(self: *@This()) core.HResult!*IBuffer {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getPreviousCredential();
    }
    pub fn putAlwaysDisplayDialog(self: *@This(), value: bool) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putAlwaysDisplayDialog(value);
    }
    pub fn getAlwaysDisplayDialog(self: *@This()) core.HResult!bool {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getAlwaysDisplayDialog();
    }
    pub fn putCallerSavesCredential(self: *@This(), value: bool) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putCallerSavesCredential(value);
    }
    pub fn getCallerSavesCredential(self: *@This()) core.HResult!bool {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getCallerSavesCredential();
    }
    pub fn putCredentialSaveOption(self: *@This(), value: CredentialSaveOption) core.HResult!void {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.putCredentialSaveOption(value);
    }
    pub fn getCredentialSaveOption(self: *@This()) core.HResult!CredentialSaveOption {
        const this: *ICredentialPickerOptions = @ptrCast(self);
        return try this.getCredentialSaveOption();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICredentialPickerOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.CredentialPickerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICredentialPickerOptions.GUID;
    pub const IID: Guid = ICredentialPickerOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICredentialPickerOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CredentialPickerResults = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getCredentialSaveOption(self: *@This()) core.HResult!CredentialSaveOption {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredentialSaveOption();
    }
    pub fn getCredentialSaved(self: *@This()) core.HResult!bool {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredentialSaved();
    }
    pub fn getCredential(self: *@This()) core.HResult!*IBuffer {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredential();
    }
    pub fn getCredentialDomainName(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredentialDomainName();
    }
    pub fn getCredentialUserName(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredentialUserName();
    }
    pub fn getCredentialPassword(self: *@This()) core.HResult!HSTRING {
        const this: *ICredentialPickerResults = @ptrCast(self);
        return try this.getCredentialPassword();
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.CredentialPickerResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICredentialPickerResults.GUID;
    pub const IID: Guid = ICredentialPickerResults.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICredentialPickerResults.SIGNATURE);
};
pub const CredentialSaveOption = enum(i32) {
    Unselected = 0,
    Selected = 1,
    Hidden = 2,
};
pub const ICredentialPickerOptions = extern struct {
    vtable: *const VTable,
    pub fn putCaption(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Caption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Message(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putErrorCode(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ErrorCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationProtocol(self: *@This(), value: AuthenticationProtocol) core.HResult!void {
        const _c = self.vtable.put_AuthenticationProtocol(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthenticationProtocol(self: *@This()) core.HResult!AuthenticationProtocol {
        var _r: AuthenticationProtocol = undefined;
        const _c = self.vtable.get_AuthenticationProtocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomAuthenticationProtocol(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CustomAuthenticationProtocol(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomAuthenticationProtocol(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomAuthenticationProtocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreviousCredential(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_PreviousCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreviousCredential(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PreviousCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysDisplayDialog(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysDisplayDialog(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysDisplayDialog(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysDisplayDialog(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallerSavesCredential(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CallerSavesCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallerSavesCredential(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CallerSavesCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCredentialSaveOption(self: *@This(), value: CredentialSaveOption) core.HResult!void {
        const _c = self.vtable.put_CredentialSaveOption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCredentialSaveOption(self: *@This()) core.HResult!CredentialSaveOption {
        var _r: CredentialSaveOption = undefined;
        const _c = self.vtable.get_CredentialSaveOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.ICredentialPickerOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "965a0b4c-95fa-467f-992b-0b22e5859bf6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Caption: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Message: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ErrorCode: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AuthenticationProtocol: *const fn(self: *anyopaque, value: AuthenticationProtocol) callconv(.winapi) HRESULT,
        get_AuthenticationProtocol: *const fn(self: *anyopaque, _r: *AuthenticationProtocol) callconv(.winapi) HRESULT,
        put_CustomAuthenticationProtocol: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CustomAuthenticationProtocol: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PreviousCredential: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_PreviousCredential: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_AlwaysDisplayDialog: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AlwaysDisplayDialog: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CallerSavesCredential: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CallerSavesCredential: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CredentialSaveOption: *const fn(self: *anyopaque, value: CredentialSaveOption) callconv(.winapi) HRESULT,
        get_CredentialSaveOption: *const fn(self: *anyopaque, _r: *CredentialSaveOption) callconv(.winapi) HRESULT,
    };
};
pub const ICredentialPickerResults = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialSaveOption(self: *@This()) core.HResult!CredentialSaveOption {
        var _r: CredentialSaveOption = undefined;
        const _c = self.vtable.get_CredentialSaveOption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialSaved(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CredentialSaved(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredential(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Credential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialDomainName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CredentialDomainName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CredentialUserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCredentialPassword(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CredentialPassword(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.ICredentialPickerResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1948f99a-cc30-410c-9c38-cc0884c5b3d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CredentialSaveOption: *const fn(self: *anyopaque, _r: *CredentialSaveOption) callconv(.winapi) HRESULT,
        get_CredentialSaved: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Credential: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_CredentialDomainName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CredentialUserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CredentialPassword: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICredentialPickerStatics = extern struct {
    vtable: *const VTable,
    pub fn PickAsync(self: *@This(), options: *CredentialPickerOptions) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        var _r: *IAsyncOperation(CredentialPickerResults) = undefined;
        const _c = self.vtable.PickAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickAsyncWithMessage(self: *@This(), targetName: HSTRING, message: HSTRING) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        var _r: *IAsyncOperation(CredentialPickerResults) = undefined;
        const _c = self.vtable.PickAsyncWithMessage(@ptrCast(self), targetName, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PickAsyncWithCaption(self: *@This(), targetName: HSTRING, message: HSTRING, caption: HSTRING) core.HResult!*IAsyncOperation(CredentialPickerResults) {
        var _r: *IAsyncOperation(CredentialPickerResults) = undefined;
        const _c = self.vtable.PickAsyncWithCaption(@ptrCast(self), targetName, message, caption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.ICredentialPickerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa3a5c73-c9ea-4782-99fb-e6d7e938e12d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PickAsync: *const fn(self: *anyopaque, options: *CredentialPickerOptions, _r: **IAsyncOperation(CredentialPickerResults)) callconv(.winapi) HRESULT,
        PickAsyncWithMessage: *const fn(self: *anyopaque, targetName: HSTRING, message: HSTRING, _r: **IAsyncOperation(CredentialPickerResults)) callconv(.winapi) HRESULT,
        PickAsyncWithCaption: *const fn(self: *anyopaque, targetName: HSTRING, message: HSTRING, caption: HSTRING, _r: **IAsyncOperation(CredentialPickerResults)) callconv(.winapi) HRESULT,
    };
};
pub const IUserConsentVerifierStatics = extern struct {
    vtable: *const VTable,
    pub fn CheckAvailabilityAsync(self: *@This()) core.HResult!*IAsyncOperation(UserConsentVerifierAvailability) {
        var _r: *IAsyncOperation(UserConsentVerifierAvailability) = undefined;
        const _c = self.vtable.CheckAvailabilityAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestVerificationAsync(self: *@This(), message: HSTRING) core.HResult!*IAsyncOperation(UserConsentVerificationResult) {
        var _r: *IAsyncOperation(UserConsentVerificationResult) = undefined;
        const _c = self.vtable.RequestVerificationAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.IUserConsentVerifierStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af4f3f91-564c-4ddc-b8b5-973447627c65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CheckAvailabilityAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(UserConsentVerifierAvailability)) callconv(.winapi) HRESULT,
        RequestVerificationAsync: *const fn(self: *anyopaque, message: HSTRING, _r: **IAsyncOperation(UserConsentVerificationResult)) callconv(.winapi) HRESULT,
    };
};
pub const UserConsentVerificationResult = enum(i32) {
    Verified = 0,
    DeviceNotPresent = 1,
    NotConfiguredForUser = 2,
    DisabledByPolicy = 3,
    DeviceBusy = 4,
    RetriesExhausted = 5,
    Canceled = 6,
};
pub const UserConsentVerifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CheckAvailabilityAsync() core.HResult!*IAsyncOperation(UserConsentVerifierAvailability) {
        const factory = @This().IUserConsentVerifierStaticsCache.get();
        return try factory.CheckAvailabilityAsync();
    }
    pub fn RequestVerificationAsync(message: HSTRING) core.HResult!*IAsyncOperation(UserConsentVerificationResult) {
        const factory = @This().IUserConsentVerifierStaticsCache.get();
        return try factory.RequestVerificationAsync(message);
    }
    pub const NAME: []const u8 = "Windows.Security.Credentials.UI.UserConsentVerifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUserConsentVerifierStaticsCache: FactoryCache(IUserConsentVerifierStatics, RUNTIME_NAME) = .{};
};
pub const UserConsentVerifierAvailability = enum(i32) {
    Available = 0,
    DeviceNotPresent = 1,
    NotConfiguredForUser = 2,
    DisabledByPolicy = 3,
    DeviceBusy = 4,
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
