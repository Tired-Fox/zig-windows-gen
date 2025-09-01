pub const DeviceAccountAuthenticationType = enum(i32) {
    Basic = 0,
    OAuth = 1,
    SingleSignOn = 2,
};
pub const DeviceAccountConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccountName(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getAccountName();
    }
    pub fn putAccountName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putAccountName(value);
    }
    pub fn getDeviceAccountTypeId(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getDeviceAccountTypeId();
    }
    pub fn putDeviceAccountTypeId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putDeviceAccountTypeId(value);
    }
    pub fn getServerType(self: *@This()) core.HResult!DeviceAccountServerType {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getServerType();
    }
    pub fn putServerType(self: *@This(), value: DeviceAccountServerType) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putServerType(value);
    }
    pub fn getEmailAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getEmailAddress();
    }
    pub fn putEmailAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putEmailAddress(value);
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getDomain();
    }
    pub fn putDomain(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putDomain(value);
    }
    pub fn getEmailSyncEnabled(self: *@This()) core.HResult!bool {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getEmailSyncEnabled();
    }
    pub fn putEmailSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putEmailSyncEnabled(value);
    }
    pub fn getContactsSyncEnabled(self: *@This()) core.HResult!bool {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getContactsSyncEnabled();
    }
    pub fn putContactsSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putContactsSyncEnabled(value);
    }
    pub fn getCalendarSyncEnabled(self: *@This()) core.HResult!bool {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getCalendarSyncEnabled();
    }
    pub fn putCalendarSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putCalendarSyncEnabled(value);
    }
    pub fn getIncomingServerAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getIncomingServerAddress();
    }
    pub fn putIncomingServerAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putIncomingServerAddress(value);
    }
    pub fn getIncomingServerPort(self: *@This()) core.HResult!i32 {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getIncomingServerPort();
    }
    pub fn putIncomingServerPort(self: *@This(), value: i32) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putIncomingServerPort(value);
    }
    pub fn getIncomingServerRequiresSsl(self: *@This()) core.HResult!bool {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getIncomingServerRequiresSsl();
    }
    pub fn putIncomingServerRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putIncomingServerRequiresSsl(value);
    }
    pub fn getIncomingServerUsername(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getIncomingServerUsername();
    }
    pub fn putIncomingServerUsername(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putIncomingServerUsername(value);
    }
    pub fn getOutgoingServerAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getOutgoingServerAddress();
    }
    pub fn putOutgoingServerAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putOutgoingServerAddress(value);
    }
    pub fn getOutgoingServerPort(self: *@This()) core.HResult!i32 {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getOutgoingServerPort();
    }
    pub fn putOutgoingServerPort(self: *@This(), value: i32) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putOutgoingServerPort(value);
    }
    pub fn getOutgoingServerRequiresSsl(self: *@This()) core.HResult!bool {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getOutgoingServerRequiresSsl();
    }
    pub fn putOutgoingServerRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putOutgoingServerRequiresSsl(value);
    }
    pub fn getOutgoingServerUsername(self: *@This()) core.HResult!HSTRING {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.getOutgoingServerUsername();
    }
    pub fn putOutgoingServerUsername(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDeviceAccountConfiguration = @ptrCast(self);
        return try this.putOutgoingServerUsername(value);
    }
    pub fn getIncomingServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncomingServerCredential();
    }
    pub fn putIncomingServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncomingServerCredential(value);
    }
    pub fn getOutgoingServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingServerCredential();
    }
    pub fn putOutgoingServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingServerCredential(value);
    }
    pub fn getOAuthRefreshToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOAuthRefreshToken();
    }
    pub fn putOAuthRefreshToken(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOAuthRefreshToken(value);
    }
    pub fn getIsExternallyManaged(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsExternallyManaged();
    }
    pub fn putIsExternallyManaged(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsExternallyManaged(value);
    }
    pub fn getAccountIconId(self: *@This()) core.HResult!DeviceAccountIconId {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccountIconId();
    }
    pub fn putAccountIconId(self: *@This(), value: DeviceAccountIconId) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAccountIconId(value);
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!DeviceAccountAuthenticationType {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuthenticationType();
    }
    pub fn putAuthenticationType(self: *@This(), value: DeviceAccountAuthenticationType) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAuthenticationType(value);
    }
    pub fn getIsSsoAuthenticationSupported(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSsoAuthenticationSupported();
    }
    pub fn getSsoAccountId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSsoAccountId();
    }
    pub fn putSsoAccountId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSsoAccountId(value);
    }
    pub fn getAlwaysDownloadFullMessage(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlwaysDownloadFullMessage();
    }
    pub fn putAlwaysDownloadFullMessage(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlwaysDownloadFullMessage(value);
    }
    pub fn getDoesPolicyAllowMailSync(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDoesPolicyAllowMailSync();
    }
    pub fn getSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSyncScheduleKind();
    }
    pub fn putSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSyncScheduleKind(value);
    }
    pub fn getMailAgeFilter(self: *@This()) core.HResult!DeviceAccountMailAgeFilter {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMailAgeFilter();
    }
    pub fn putMailAgeFilter(self: *@This(), value: DeviceAccountMailAgeFilter) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMailAgeFilter(value);
    }
    pub fn getIsClientAuthenticationCertificateRequired(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsClientAuthenticationCertificateRequired();
    }
    pub fn putIsClientAuthenticationCertificateRequired(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsClientAuthenticationCertificateRequired(value);
    }
    pub fn getAutoSelectAuthenticationCertificate(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoSelectAuthenticationCertificate();
    }
    pub fn putAutoSelectAuthenticationCertificate(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoSelectAuthenticationCertificate(value);
    }
    pub fn getAuthenticationCertificateId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuthenticationCertificateId();
    }
    pub fn putAuthenticationCertificateId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAuthenticationCertificateId(value);
    }
    pub fn getCardDavSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCardDavSyncScheduleKind();
    }
    pub fn putCardDavSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCardDavSyncScheduleKind(value);
    }
    pub fn getCalDavSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCalDavSyncScheduleKind();
    }
    pub fn putCalDavSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCalDavSyncScheduleKind(value);
    }
    pub fn getCardDavServerUrl(self: *@This()) core.HResult!*Uri {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCardDavServerUrl();
    }
    pub fn putCardDavServerUrl(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCardDavServerUrl(value);
    }
    pub fn getCardDavRequiresSsl(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCardDavRequiresSsl();
    }
    pub fn putCardDavRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCardDavRequiresSsl(value);
    }
    pub fn getCalDavServerUrl(self: *@This()) core.HResult!*Uri {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCalDavServerUrl();
    }
    pub fn putCalDavServerUrl(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCalDavServerUrl(value);
    }
    pub fn getCalDavRequiresSsl(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCalDavRequiresSsl();
    }
    pub fn putCalDavRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCalDavRequiresSsl(value);
    }
    pub fn getWasModifiedByUser(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWasModifiedByUser();
    }
    pub fn putWasModifiedByUser(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWasModifiedByUser(value);
    }
    pub fn getWasIncomingServerCertificateHashConfirmed(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWasIncomingServerCertificateHashConfirmed();
    }
    pub fn putWasIncomingServerCertificateHashConfirmed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWasIncomingServerCertificateHashConfirmed(value);
    }
    pub fn getIncomingServerCertificateHash(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIncomingServerCertificateHash();
    }
    pub fn putIncomingServerCertificateHash(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIncomingServerCertificateHash(value);
    }
    pub fn getIsOutgoingServerAuthenticationRequired(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOutgoingServerAuthenticationRequired();
    }
    pub fn putIsOutgoingServerAuthenticationRequired(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOutgoingServerAuthenticationRequired(value);
    }
    pub fn getIsOutgoingServerAuthenticationEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOutgoingServerAuthenticationEnabled();
    }
    pub fn putIsOutgoingServerAuthenticationEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOutgoingServerAuthenticationEnabled(value);
    }
    pub fn getWasOutgoingServerCertificateHashConfirmed(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWasOutgoingServerCertificateHashConfirmed();
    }
    pub fn putWasOutgoingServerCertificateHashConfirmed(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putWasOutgoingServerCertificateHashConfirmed(value);
    }
    pub fn getOutgoingServerCertificateHash(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOutgoingServerCertificateHash();
    }
    pub fn putOutgoingServerCertificateHash(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOutgoingServerCertificateHash(value);
    }
    pub fn getIsSyncScheduleManagedBySystem(self: *@This()) core.HResult!bool {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSyncScheduleManagedBySystem();
    }
    pub fn putIsSyncScheduleManagedBySystem(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IDeviceAccountConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDeviceAccountConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsSyncScheduleManagedBySystem(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDeviceAccountConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.DeviceAccountConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeviceAccountConfiguration.GUID;
    pub const IID: Guid = IDeviceAccountConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeviceAccountConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DeviceAccountIconId = enum(i32) {
    Exchange = 0,
    Msa = 1,
    Outlook = 2,
    Generic = 3,
};
pub const DeviceAccountMailAgeFilter = enum(i32) {
    All = 0,
    Last1Day = 1,
    Last3Days = 2,
    Last7Days = 3,
    Last14Days = 4,
    Last30Days = 5,
    Last90Days = 6,
};
pub const DeviceAccountServerType = enum(i32) {
    Exchange = 0,
    Pop = 1,
    Imap = 2,
};
pub const DeviceAccountSyncScheduleKind = enum(i32) {
    Manual = 0,
    Every15Minutes = 1,
    Every30Minutes = 2,
    Every60Minutes = 3,
    Every2Hours = 4,
    Daily = 5,
    AsItemsArrive = 6,
};
pub const IDeviceAccountConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getAccountName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccountName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AccountName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceAccountTypeId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceAccountTypeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeviceAccountTypeId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DeviceAccountTypeId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServerType(self: *@This()) core.HResult!DeviceAccountServerType {
        var _r: DeviceAccountServerType = undefined;
        const _c = self.vtable.get_ServerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServerType(self: *@This(), value: DeviceAccountServerType) core.HResult!void {
        const _c = self.vtable.put_ServerType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEmailAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EmailAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmailAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EmailAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDomain(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Domain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDomain(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Domain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEmailSyncEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EmailSyncEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEmailSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EmailSyncEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactsSyncEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ContactsSyncEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactsSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ContactsSyncEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCalendarSyncEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CalendarSyncEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCalendarSyncEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CalendarSyncEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncomingServerAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IncomingServerAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IncomingServerAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncomingServerPort(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IncomingServerPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerPort(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_IncomingServerPort(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncomingServerRequiresSsl(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IncomingServerRequiresSsl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IncomingServerRequiresSsl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncomingServerUsername(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IncomingServerUsername(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerUsername(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IncomingServerUsername(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OutgoingServerAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerPort(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_OutgoingServerPort(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerPort(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerPort(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerRequiresSsl(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OutgoingServerRequiresSsl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerRequiresSsl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerUsername(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OutgoingServerUsername(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerUsername(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerUsername(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad0123a3-fbdc-4d1b-be43-5a27ea4a1b63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccountName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AccountName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DeviceAccountTypeId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DeviceAccountTypeId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServerType: *const fn(self: *anyopaque, _r: *DeviceAccountServerType) callconv(.winapi) HRESULT,
        put_ServerType: *const fn(self: *anyopaque, value: DeviceAccountServerType) callconv(.winapi) HRESULT,
        get_EmailAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EmailAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Domain: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Domain: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_EmailSyncEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EmailSyncEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ContactsSyncEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ContactsSyncEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CalendarSyncEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CalendarSyncEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncomingServerAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IncomingServerAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IncomingServerPort: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_IncomingServerPort: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_IncomingServerRequiresSsl: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IncomingServerRequiresSsl: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncomingServerUsername: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IncomingServerUsername: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OutgoingServerAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OutgoingServerAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OutgoingServerPort: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_OutgoingServerPort: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_OutgoingServerRequiresSsl: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_OutgoingServerRequiresSsl: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OutgoingServerUsername: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OutgoingServerUsername: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDeviceAccountConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getIncomingServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_IncomingServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_IncomingServerCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_OutgoingServerCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOAuthRefreshToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OAuthRefreshToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOAuthRefreshToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OAuthRefreshToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsExternallyManaged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsExternallyManaged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsExternallyManaged(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsExternallyManaged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccountIconId(self: *@This()) core.HResult!DeviceAccountIconId {
        var _r: DeviceAccountIconId = undefined;
        const _c = self.vtable.get_AccountIconId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccountIconId(self: *@This(), value: DeviceAccountIconId) core.HResult!void {
        const _c = self.vtable.put_AccountIconId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!DeviceAccountAuthenticationType {
        var _r: DeviceAccountAuthenticationType = undefined;
        const _c = self.vtable.get_AuthenticationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationType(self: *@This(), value: DeviceAccountAuthenticationType) core.HResult!void {
        const _c = self.vtable.put_AuthenticationType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSsoAuthenticationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSsoAuthenticationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSsoAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SsoAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSsoAccountId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SsoAccountId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysDownloadFullMessage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysDownloadFullMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysDownloadFullMessage(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysDownloadFullMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDoesPolicyAllowMailSync(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DoesPolicyAllowMailSync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var _r: DeviceAccountSyncScheduleKind = undefined;
        const _c = self.vtable.get_SyncScheduleKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        const _c = self.vtable.put_SyncScheduleKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMailAgeFilter(self: *@This()) core.HResult!DeviceAccountMailAgeFilter {
        var _r: DeviceAccountMailAgeFilter = undefined;
        const _c = self.vtable.get_MailAgeFilter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMailAgeFilter(self: *@This(), value: DeviceAccountMailAgeFilter) core.HResult!void {
        const _c = self.vtable.put_MailAgeFilter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsClientAuthenticationCertificateRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsClientAuthenticationCertificateRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsClientAuthenticationCertificateRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsClientAuthenticationCertificateRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoSelectAuthenticationCertificate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoSelectAuthenticationCertificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoSelectAuthenticationCertificate(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoSelectAuthenticationCertificate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthenticationCertificateId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AuthenticationCertificateId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationCertificateId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AuthenticationCertificateId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCardDavSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var _r: DeviceAccountSyncScheduleKind = undefined;
        const _c = self.vtable.get_CardDavSyncScheduleKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCardDavSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        const _c = self.vtable.put_CardDavSyncScheduleKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCalDavSyncScheduleKind(self: *@This()) core.HResult!DeviceAccountSyncScheduleKind {
        var _r: DeviceAccountSyncScheduleKind = undefined;
        const _c = self.vtable.get_CalDavSyncScheduleKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCalDavSyncScheduleKind(self: *@This(), value: DeviceAccountSyncScheduleKind) core.HResult!void {
        const _c = self.vtable.put_CalDavSyncScheduleKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCardDavServerUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_CardDavServerUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCardDavServerUrl(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_CardDavServerUrl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCardDavRequiresSsl(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CardDavRequiresSsl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCardDavRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CardDavRequiresSsl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCalDavServerUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_CalDavServerUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCalDavServerUrl(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_CalDavServerUrl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCalDavRequiresSsl(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CalDavRequiresSsl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCalDavRequiresSsl(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CalDavRequiresSsl(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWasModifiedByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasModifiedByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWasModifiedByUser(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_WasModifiedByUser(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWasIncomingServerCertificateHashConfirmed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasIncomingServerCertificateHashConfirmed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWasIncomingServerCertificateHashConfirmed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_WasIncomingServerCertificateHashConfirmed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIncomingServerCertificateHash(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IncomingServerCertificateHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIncomingServerCertificateHash(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IncomingServerCertificateHash(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOutgoingServerAuthenticationRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOutgoingServerAuthenticationRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOutgoingServerAuthenticationRequired(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOutgoingServerAuthenticationRequired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOutgoingServerAuthenticationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOutgoingServerAuthenticationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOutgoingServerAuthenticationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOutgoingServerAuthenticationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWasOutgoingServerCertificateHashConfirmed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasOutgoingServerCertificateHashConfirmed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWasOutgoingServerCertificateHashConfirmed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_WasOutgoingServerCertificateHashConfirmed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutgoingServerCertificateHash(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OutgoingServerCertificateHash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutgoingServerCertificateHash(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OutgoingServerCertificateHash(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSyncScheduleManagedBySystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSyncScheduleManagedBySystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSyncScheduleManagedBySystem(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSyncScheduleManagedBySystem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.IDeviceAccountConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2b2e5a6-728d-4a4a-8945-2bf8580136de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IncomingServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_IncomingServerCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_OutgoingServerCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_OutgoingServerCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_OAuthRefreshToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OAuthRefreshToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsExternallyManaged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsExternallyManaged: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AccountIconId: *const fn(self: *anyopaque, _r: *DeviceAccountIconId) callconv(.winapi) HRESULT,
        put_AccountIconId: *const fn(self: *anyopaque, value: DeviceAccountIconId) callconv(.winapi) HRESULT,
        get_AuthenticationType: *const fn(self: *anyopaque, _r: *DeviceAccountAuthenticationType) callconv(.winapi) HRESULT,
        put_AuthenticationType: *const fn(self: *anyopaque, value: DeviceAccountAuthenticationType) callconv(.winapi) HRESULT,
        get_IsSsoAuthenticationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SsoAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SsoAccountId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AlwaysDownloadFullMessage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlwaysDownloadFullMessage: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DoesPolicyAllowMailSync: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SyncScheduleKind: *const fn(self: *anyopaque, _r: *DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        put_SyncScheduleKind: *const fn(self: *anyopaque, value: DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        get_MailAgeFilter: *const fn(self: *anyopaque, _r: *DeviceAccountMailAgeFilter) callconv(.winapi) HRESULT,
        put_MailAgeFilter: *const fn(self: *anyopaque, value: DeviceAccountMailAgeFilter) callconv(.winapi) HRESULT,
        get_IsClientAuthenticationCertificateRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsClientAuthenticationCertificateRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoSelectAuthenticationCertificate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoSelectAuthenticationCertificate: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AuthenticationCertificateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AuthenticationCertificateId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CardDavSyncScheduleKind: *const fn(self: *anyopaque, _r: *DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        put_CardDavSyncScheduleKind: *const fn(self: *anyopaque, value: DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        get_CalDavSyncScheduleKind: *const fn(self: *anyopaque, _r: *DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        put_CalDavSyncScheduleKind: *const fn(self: *anyopaque, value: DeviceAccountSyncScheduleKind) callconv(.winapi) HRESULT,
        get_CardDavServerUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_CardDavServerUrl: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_CardDavRequiresSsl: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CardDavRequiresSsl: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CalDavServerUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_CalDavServerUrl: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_CalDavRequiresSsl: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CalDavRequiresSsl: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_WasModifiedByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_WasModifiedByUser: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_WasIncomingServerCertificateHashConfirmed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_WasIncomingServerCertificateHashConfirmed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IncomingServerCertificateHash: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IncomingServerCertificateHash: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsOutgoingServerAuthenticationRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOutgoingServerAuthenticationRequired: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsOutgoingServerAuthenticationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOutgoingServerAuthenticationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_WasOutgoingServerCertificateHashConfirmed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_WasOutgoingServerCertificateHashConfirmed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OutgoingServerCertificateHash: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OutgoingServerCertificateHash: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsSyncScheduleManagedBySystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSyncScheduleManagedBySystem: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountSystemAccessManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AddAndShowDeviceAccountsAsync(self: *@This(), accounts: *IIterable(DeviceAccountConfiguration)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        var _r: *IAsyncOperation(IVectorView(HSTRING)) = undefined;
        const _c = self.vtable.AddAndShowDeviceAccountsAsync(@ptrCast(self), accounts, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.IUserDataAccountSystemAccessManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d6b11b9-cbe5-45f5-822b-c267b81dbdb6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAndShowDeviceAccountsAsync: *const fn(self: *anyopaque, accounts: *IIterable(DeviceAccountConfiguration), _r: **IAsyncOperation(IVectorView(HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const IUserDataAccountSystemAccessManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn SuppressLocalAccountWithAccountAsync(self: *@This(), userDataAccountId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SuppressLocalAccountWithAccountAsync(@ptrCast(self), userDataAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDeviceAccountAsync(self: *@This(), account: *DeviceAccountConfiguration) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CreateDeviceAccountAsync(@ptrCast(self), account, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteDeviceAccountAsync(self: *@This(), accountId: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteDeviceAccountAsync(@ptrCast(self), accountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceAccountConfigurationAsync(self: *@This(), accountId: HSTRING) core.HResult!*IAsyncOperation(DeviceAccountConfiguration) {
        var _r: *IAsyncOperation(DeviceAccountConfiguration) = undefined;
        const _c = self.vtable.GetDeviceAccountConfigurationAsync(@ptrCast(self), accountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.IUserDataAccountSystemAccessManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "943f854d-4b4e-439f-83d3-979b27c05ac7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SuppressLocalAccountWithAccountAsync: *const fn(self: *anyopaque, userDataAccountId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CreateDeviceAccountAsync: *const fn(self: *anyopaque, account: *DeviceAccountConfiguration, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        DeleteDeviceAccountAsync: *const fn(self: *anyopaque, accountId: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetDeviceAccountConfigurationAsync: *const fn(self: *anyopaque, accountId: HSTRING, _r: **IAsyncOperation(DeviceAccountConfiguration)) callconv(.winapi) HRESULT,
    };
};
pub const UserDataAccountSystemAccessManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AddAndShowDeviceAccountsAsync(accounts: *IIterable(DeviceAccountConfiguration)) core.HResult!*IAsyncOperation(IVectorView(HSTRING)) {
        const _f = @This().IUserDataAccountSystemAccessManagerStaticsCache.get();
        return try _f.AddAndShowDeviceAccountsAsync(accounts);
    }
    pub fn SuppressLocalAccountWithAccountAsync(userDataAccountId: HSTRING) core.HResult!*IAsyncAction {
        const _f = @This().IUserDataAccountSystemAccessManagerStatics2Cache.get();
        return try _f.SuppressLocalAccountWithAccountAsync(userDataAccountId);
    }
    pub fn CreateDeviceAccountAsync(account: *DeviceAccountConfiguration) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().IUserDataAccountSystemAccessManagerStatics2Cache.get();
        return try _f.CreateDeviceAccountAsync(account);
    }
    pub fn DeleteDeviceAccountAsync(accountId: HSTRING) core.HResult!*IAsyncAction {
        const _f = @This().IUserDataAccountSystemAccessManagerStatics2Cache.get();
        return try _f.DeleteDeviceAccountAsync(accountId);
    }
    pub fn GetDeviceAccountConfigurationAsync(accountId: HSTRING) core.HResult!*IAsyncOperation(DeviceAccountConfiguration) {
        const _f = @This().IUserDataAccountSystemAccessManagerStatics2Cache.get();
        return try _f.GetDeviceAccountConfigurationAsync(accountId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.UserDataAccounts.SystemAccess.UserDataAccountSystemAccessManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUserDataAccountSystemAccessManagerStaticsCache: FactoryCache(IUserDataAccountSystemAccessManagerStatics, RUNTIME_NAME) = .{};
    var _IUserDataAccountSystemAccessManagerStatics2Cache: FactoryCache(IUserDataAccountSystemAccessManagerStatics2, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const PasswordCredential = @import("../../Security/Credentials.zig").PasswordCredential;
const TrustLevel = @import("../../root.zig").TrustLevel;
const Uri = @import("../../Foundation.zig").Uri;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HSTRING = @import("../../root.zig").HSTRING;
