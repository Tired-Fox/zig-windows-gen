pub const EasClientSecurityPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequireEncryption(self: *@This()) core.HResult!bool {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getRequireEncryption();
    }
    pub fn putRequireEncryption(self: *@This(), value: bool) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putRequireEncryption(value);
    }
    pub fn getMinPasswordLength(self: *@This()) core.HResult!u8 {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getMinPasswordLength();
    }
    pub fn putMinPasswordLength(self: *@This(), value: u8) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putMinPasswordLength(value);
    }
    pub fn getDisallowConvenienceLogon(self: *@This()) core.HResult!bool {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getDisallowConvenienceLogon();
    }
    pub fn putDisallowConvenienceLogon(self: *@This(), value: bool) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putDisallowConvenienceLogon(value);
    }
    pub fn getMinPasswordComplexCharacters(self: *@This()) core.HResult!u8 {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getMinPasswordComplexCharacters();
    }
    pub fn putMinPasswordComplexCharacters(self: *@This(), value: u8) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putMinPasswordComplexCharacters(value);
    }
    pub fn getPasswordExpiration(self: *@This()) core.HResult!TimeSpan {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getPasswordExpiration();
    }
    pub fn putPasswordExpiration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putPasswordExpiration(value);
    }
    pub fn getPasswordHistory(self: *@This()) core.HResult!u32 {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getPasswordHistory();
    }
    pub fn putPasswordHistory(self: *@This(), value: u32) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putPasswordHistory(value);
    }
    pub fn getMaxPasswordFailedAttempts(self: *@This()) core.HResult!u8 {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getMaxPasswordFailedAttempts();
    }
    pub fn putMaxPasswordFailedAttempts(self: *@This(), value: u8) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putMaxPasswordFailedAttempts(value);
    }
    pub fn getMaxInactivityTimeLock(self: *@This()) core.HResult!TimeSpan {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.getMaxInactivityTimeLock();
    }
    pub fn putMaxInactivityTimeLock(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.putMaxInactivityTimeLock(value);
    }
    pub fn CheckCompliance(self: *@This()) core.HResult!*EasComplianceResults {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.CheckCompliance();
    }
    pub fn ApplyAsync(self: *@This()) core.HResult!*IAsyncOperation(EasComplianceResults) {
        const this: *IEasClientSecurityPolicy = @ptrCast(self);
        return try this.ApplyAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEasClientSecurityPolicy.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.EasClientSecurityPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasClientSecurityPolicy.GUID;
    pub const IID: Guid = IEasClientSecurityPolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasClientSecurityPolicy.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EasComplianceResults = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompliant(self: *@This()) core.HResult!bool {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getCompliant();
    }
    pub fn getRequireEncryptionResult(self: *@This()) core.HResult!EasRequireEncryptionResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getRequireEncryptionResult();
    }
    pub fn getMinPasswordLengthResult(self: *@This()) core.HResult!EasMinPasswordLengthResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getMinPasswordLengthResult();
    }
    pub fn getDisallowConvenienceLogonResult(self: *@This()) core.HResult!EasDisallowConvenienceLogonResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getDisallowConvenienceLogonResult();
    }
    pub fn getMinPasswordComplexCharactersResult(self: *@This()) core.HResult!EasMinPasswordComplexCharactersResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getMinPasswordComplexCharactersResult();
    }
    pub fn getPasswordExpirationResult(self: *@This()) core.HResult!EasPasswordExpirationResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getPasswordExpirationResult();
    }
    pub fn getPasswordHistoryResult(self: *@This()) core.HResult!EasPasswordHistoryResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getPasswordHistoryResult();
    }
    pub fn getMaxPasswordFailedAttemptsResult(self: *@This()) core.HResult!EasMaxPasswordFailedAttemptsResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getMaxPasswordFailedAttemptsResult();
    }
    pub fn getMaxInactivityTimeLockResult(self: *@This()) core.HResult!EasMaxInactivityTimeLockResult {
        const this: *IEasComplianceResults = @ptrCast(self);
        return try this.getMaxInactivityTimeLockResult();
    }
    pub fn getEncryptionProviderType(self: *@This()) core.HResult!EasEncryptionProviderType {
        var this: ?*IEasComplianceResults2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEasComplianceResults2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncryptionProviderType();
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.EasComplianceResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasComplianceResults.GUID;
    pub const IID: Guid = IEasComplianceResults.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasComplianceResults.SIGNATURE);
};
pub const EasDisallowConvenienceLogonResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
};
pub const EasEncryptionProviderType = enum(i32) {
    NotEvaluated = 0,
    WindowsEncryption = 1,
    OtherEncryption = 2,
};
pub const EasMaxInactivityTimeLockResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    InvalidParameter = 4,
};
pub const EasMaxPasswordFailedAttemptsResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    InvalidParameter = 4,
};
pub const EasMinPasswordComplexCharactersResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    RequestedPolicyNotEnforceable = 4,
    InvalidParameter = 5,
    CurrentUserHasBlankPassword = 6,
    AdminsHaveBlankPassword = 7,
    UserCannotChangePassword = 8,
    AdminsCannotChangePassword = 9,
    LocalControlledUsersCannotChangePassword = 10,
    ConnectedAdminsProviderPolicyIsWeak = 11,
    ConnectedUserProviderPolicyIsWeak = 12,
    ChangeConnectedAdminsPassword = 13,
    ChangeConnectedUserPassword = 14,
};
pub const EasMinPasswordLengthResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    RequestedPolicyNotEnforceable = 4,
    InvalidParameter = 5,
    CurrentUserHasBlankPassword = 6,
    AdminsHaveBlankPassword = 7,
    UserCannotChangePassword = 8,
    AdminsCannotChangePassword = 9,
    LocalControlledUsersCannotChangePassword = 10,
    ConnectedAdminsProviderPolicyIsWeak = 11,
    ConnectedUserProviderPolicyIsWeak = 12,
    ChangeConnectedAdminsPassword = 13,
    ChangeConnectedUserPassword = 14,
};
pub const EasPasswordExpirationResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    RequestedExpirationIncompatible = 4,
    InvalidParameter = 5,
    UserCannotChangePassword = 6,
    AdminsCannotChangePassword = 7,
    LocalControlledUsersCannotChangePassword = 8,
};
pub const EasPasswordHistoryResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    RequestedPolicyIsStricter = 3,
    InvalidParameter = 4,
};
pub const EasRequireEncryptionResult = enum(i32) {
    NotEvaluated = 0,
    Compliant = 1,
    CanBeCompliant = 2,
    NotProvisionedOnAllVolumes = 3,
    DeFixedDataNotSupported = 4,
    FixedDataNotSupported = 4,
    DeHardwareNotCompliant = 5,
    HardwareNotCompliant = 5,
    DeWinReNotConfigured = 6,
    LockNotConfigured = 6,
    DeProtectionSuspended = 7,
    ProtectionSuspended = 7,
    DeOsVolumeNotProtected = 8,
    OsVolumeNotProtected = 8,
    DeProtectionNotYetEnabled = 9,
    ProtectionNotYetEnabled = 9,
    NoFeatureLicense = 10,
    OsNotProtected = 11,
    UnexpectedFailure = 12,
};
pub const IEasClientSecurityPolicy = extern struct {
    vtable: *const VTable,
    pub fn getRequireEncryption(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequireEncryption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequireEncryption(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequireEncryption(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinPasswordLength(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_MinPasswordLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinPasswordLength(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_MinPasswordLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisallowConvenienceLogon(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisallowConvenienceLogon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisallowConvenienceLogon(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DisallowConvenienceLogon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinPasswordComplexCharacters(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_MinPasswordComplexCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinPasswordComplexCharacters(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_MinPasswordComplexCharacters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPasswordExpiration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_PasswordExpiration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPasswordExpiration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_PasswordExpiration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPasswordHistory(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PasswordHistory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPasswordHistory(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_PasswordHistory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxPasswordFailedAttempts(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_MaxPasswordFailedAttempts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPasswordFailedAttempts(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_MaxPasswordFailedAttempts(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxInactivityTimeLock(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxInactivityTimeLock(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxInactivityTimeLock(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_MaxInactivityTimeLock(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CheckCompliance(self: *@This()) core.HResult!*EasComplianceResults {
        var _r: *EasComplianceResults = undefined;
        const _c = self.vtable.CheckCompliance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyAsync(self: *@This()) core.HResult!*IAsyncOperation(EasComplianceResults) {
        var _r: *IAsyncOperation(EasComplianceResults) = undefined;
        const _c = self.vtable.ApplyAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.IEasClientSecurityPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45b72362-dfba-4a9b-aced-6fe2adcb6420";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequireEncryption: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequireEncryption: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MinPasswordLength: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_MinPasswordLength: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_DisallowConvenienceLogon: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DisallowConvenienceLogon: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MinPasswordComplexCharacters: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_MinPasswordComplexCharacters: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_PasswordExpiration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_PasswordExpiration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_PasswordHistory: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_PasswordHistory: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_MaxPasswordFailedAttempts: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_MaxPasswordFailedAttempts: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        get_MaxInactivityTimeLock: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_MaxInactivityTimeLock: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        CheckCompliance: *const fn(self: *anyopaque, _r: **EasComplianceResults) callconv(.winapi) HRESULT,
        ApplyAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(EasComplianceResults)) callconv(.winapi) HRESULT,
    };
};
pub const IEasComplianceResults = extern struct {
    vtable: *const VTable,
    pub fn getCompliant(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Compliant(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequireEncryptionResult(self: *@This()) core.HResult!EasRequireEncryptionResult {
        var _r: EasRequireEncryptionResult = undefined;
        const _c = self.vtable.get_RequireEncryptionResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinPasswordLengthResult(self: *@This()) core.HResult!EasMinPasswordLengthResult {
        var _r: EasMinPasswordLengthResult = undefined;
        const _c = self.vtable.get_MinPasswordLengthResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisallowConvenienceLogonResult(self: *@This()) core.HResult!EasDisallowConvenienceLogonResult {
        var _r: EasDisallowConvenienceLogonResult = undefined;
        const _c = self.vtable.get_DisallowConvenienceLogonResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinPasswordComplexCharactersResult(self: *@This()) core.HResult!EasMinPasswordComplexCharactersResult {
        var _r: EasMinPasswordComplexCharactersResult = undefined;
        const _c = self.vtable.get_MinPasswordComplexCharactersResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPasswordExpirationResult(self: *@This()) core.HResult!EasPasswordExpirationResult {
        var _r: EasPasswordExpirationResult = undefined;
        const _c = self.vtable.get_PasswordExpirationResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPasswordHistoryResult(self: *@This()) core.HResult!EasPasswordHistoryResult {
        var _r: EasPasswordHistoryResult = undefined;
        const _c = self.vtable.get_PasswordHistoryResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPasswordFailedAttemptsResult(self: *@This()) core.HResult!EasMaxPasswordFailedAttemptsResult {
        var _r: EasMaxPasswordFailedAttemptsResult = undefined;
        const _c = self.vtable.get_MaxPasswordFailedAttemptsResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxInactivityTimeLockResult(self: *@This()) core.HResult!EasMaxInactivityTimeLockResult {
        var _r: EasMaxInactivityTimeLockResult = undefined;
        const _c = self.vtable.get_MaxInactivityTimeLockResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "463c299c-7f19-4c66-b403-cb45dd57a2b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Compliant: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RequireEncryptionResult: *const fn(self: *anyopaque, _r: *EasRequireEncryptionResult) callconv(.winapi) HRESULT,
        get_MinPasswordLengthResult: *const fn(self: *anyopaque, _r: *EasMinPasswordLengthResult) callconv(.winapi) HRESULT,
        get_DisallowConvenienceLogonResult: *const fn(self: *anyopaque, _r: *EasDisallowConvenienceLogonResult) callconv(.winapi) HRESULT,
        get_MinPasswordComplexCharactersResult: *const fn(self: *anyopaque, _r: *EasMinPasswordComplexCharactersResult) callconv(.winapi) HRESULT,
        get_PasswordExpirationResult: *const fn(self: *anyopaque, _r: *EasPasswordExpirationResult) callconv(.winapi) HRESULT,
        get_PasswordHistoryResult: *const fn(self: *anyopaque, _r: *EasPasswordHistoryResult) callconv(.winapi) HRESULT,
        get_MaxPasswordFailedAttemptsResult: *const fn(self: *anyopaque, _r: *EasMaxPasswordFailedAttemptsResult) callconv(.winapi) HRESULT,
        get_MaxInactivityTimeLockResult: *const fn(self: *anyopaque, _r: *EasMaxInactivityTimeLockResult) callconv(.winapi) HRESULT,
    };
};
pub const IEasComplianceResults2 = extern struct {
    vtable: *const VTable,
    pub fn getEncryptionProviderType(self: *@This()) core.HResult!EasEncryptionProviderType {
        var _r: EasEncryptionProviderType = undefined;
        const _c = self.vtable.get_EncryptionProviderType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.IEasComplianceResults2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2fbe60c9-1aa8-47f5-88bb-cb3ef0bffb15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncryptionProviderType: *const fn(self: *anyopaque, _r: *EasEncryptionProviderType) callconv(.winapi) HRESULT,
    };
};
pub const EasClientDeviceInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getId();
    }
    pub fn getOperatingSystem(self: *@This()) core.HResult!HSTRING {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getOperatingSystem();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getSystemManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getSystemManufacturer();
    }
    pub fn getSystemProductName(self: *@This()) core.HResult!HSTRING {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getSystemProductName();
    }
    pub fn getSystemSku(self: *@This()) core.HResult!HSTRING {
        const this: *IEasClientDeviceInformation = @ptrCast(self);
        return try this.getSystemSku();
    }
    pub fn getSystemHardwareVersion(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEasClientDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEasClientDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemHardwareVersion();
    }
    pub fn getSystemFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        var this: ?*IEasClientDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IEasClientDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemFirmwareVersion();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEasClientDeviceInformation.IID)));
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.EasClientDeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasClientDeviceInformation.GUID;
    pub const IID: Guid = IEasClientDeviceInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasClientDeviceInformation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IEasClientDeviceInformation = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOperatingSystem(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OperatingSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemManufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemProductName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemProductName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemSku(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemSku(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54dfd981-1968-4ca3-b958-e595d16505eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_OperatingSystem: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemManufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemProductName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemSku: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEasClientDeviceInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getSystemHardwareVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemHardwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SystemFirmwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.ExchangeActiveSyncProvisioning.IEasClientDeviceInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ffb35923-bb26-4d6a-81bc-165aee0ad754";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemHardwareVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SystemFirmwareVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
