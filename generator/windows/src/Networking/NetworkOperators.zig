pub const INetworkOperatorNotificationEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getNotificationType(self: *@This()) core.HResult!NetworkOperatorEventMessageType {
        var _r: NetworkOperatorEventMessageType = undefined;
        const _c = self.vtable.get_NotificationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEncodingType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_EncodingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRuleId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RuleId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmsMessage(self: *@This()) core.HResult!*ISmsMessage {
        var _r: *ISmsMessage = undefined;
        const _c = self.vtable.get_SmsMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorNotificationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc68a9d1-82e1-4488-9f2c-1276c2468fac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NotificationType: *const fn(self: *anyopaque, _r: *NetworkOperatorEventMessageType) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EncodingType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RuleId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SmsMessage: *const fn(self: *anyopaque, _r: **ISmsMessage) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringEntitlementCheck = extern struct {
    vtable: *const VTable,
    pub fn AuthorizeTethering(self: *@This(), allow: bool, entitlementFailureReason: HSTRING) core.HResult!void {
        const _c = self.vtable.AuthorizeTethering(@ptrCast(self), allow, entitlementFailureReason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringEntitlementCheck";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0108916d-9e9a-4af6-8da3-60493b19c204";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AuthorizeTethering: *const fn(self: *anyopaque, allow: bool, entitlementFailureReason: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const NetworkOperatorNotificationEventDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNotificationType(self: *@This()) core.HResult!NetworkOperatorEventMessageType {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getNotificationType();
    }
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub fn getEncodingType(self: *@This()) core.HResult!u8 {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getEncodingType();
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getRuleId(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getRuleId();
    }
    pub fn getSmsMessage(self: *@This()) core.HResult!*ISmsMessage {
        const this: *INetworkOperatorNotificationEventDetails = @ptrCast(self);
        return try this.getSmsMessage();
    }
    pub fn AuthorizeTethering(self: *@This(), allow: bool, entitlementFailureReason: HSTRING) core.HResult!void {
        var this: ?*INetworkOperatorTetheringEntitlementCheck = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringEntitlementCheck.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AuthorizeTethering(allow, entitlementFailureReason);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorNotificationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorNotificationEventDetails.GUID;
    pub const IID: Guid = INetworkOperatorNotificationEventDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorNotificationEventDetails.SIGNATURE);
};
pub const DataClasses = enum(i32) {
    None = 0,
    Gprs = 1,
    Edge = 2,
    Umts = 4,
    Hsdpa = 8,
    Hsupa = 16,
    LteAdvanced = 32,
    NewRadioNonStandalone = 64,
    NewRadioStandalone = 128,
    Cdma1xRtt = 65536,
    Cdma1xEvdo = 131072,
    Cdma1xEvdoRevA = 262144,
    Cdma1xEvdv = 524288,
    Cdma3xRtt = 1048576,
    Cdma1xEvdoRevB = 2097152,
    CdmaUmb = 4194304,
    Custom = -2147483648,
};
pub const ESim = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAvailableMemoryInBytes(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IESim = @ptrCast(self);
        return try this.getAvailableMemoryInBytes();
    }
    pub fn getEid(self: *@This()) core.HResult!HSTRING {
        const this: *IESim = @ptrCast(self);
        return try this.getEid();
    }
    pub fn getFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IESim = @ptrCast(self);
        return try this.getFirmwareVersion();
    }
    pub fn getMobileBroadbandModemDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IESim = @ptrCast(self);
        return try this.getMobileBroadbandModemDeviceId();
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimPolicy {
        const this: *IESim = @ptrCast(self);
        return try this.getPolicy();
    }
    pub fn getState(self: *@This()) core.HResult!ESimState {
        const this: *IESim = @ptrCast(self);
        return try this.getState();
    }
    pub fn GetProfiles(self: *@This()) core.HResult!*IVectorView(ESimProfile) {
        const this: *IESim = @ptrCast(self);
        return try this.GetProfiles();
    }
    pub fn DeleteProfileAsync(self: *@This(), profileId: HSTRING) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESim = @ptrCast(self);
        return try this.DeleteProfileAsync(profileId);
    }
    pub fn DownloadProfileMetadataAsync(self: *@This(), activationCode: HSTRING) core.HResult!*IAsyncOperation(ESimDownloadProfileMetadataResult) {
        const this: *IESim = @ptrCast(self);
        return try this.DownloadProfileMetadataAsync(activationCode);
    }
    pub fn ResetAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESim = @ptrCast(self);
        return try this.ResetAsync();
    }
    pub fn addProfileChanged(self: *@This(), handler: *TypedEventHandler(ESim,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IESim = @ptrCast(self);
        return try this.addProfileChanged(handler);
    }
    pub fn removeProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESim = @ptrCast(self);
        return try this.removeProfileChanged(token);
    }
    pub fn Discover(self: *@This()) core.HResult!*ESimDiscoverResult {
        var this: ?*IESim2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IESim2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Discover();
    }
    pub fn DiscoverWithServerAddressAndMatchingId(self: *@This(), serverAddress: HSTRING, matchingId: HSTRING) core.HResult!*ESimDiscoverResult {
        var this: ?*IESim2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IESim2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DiscoverWithServerAddressAndMatchingId(serverAddress, matchingId);
    }
    pub fn DiscoverAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimDiscoverResult) {
        var this: ?*IESim2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IESim2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DiscoverAsync();
    }
    pub fn DiscoverAsyncWithServerAddressAndMatchingId(self: *@This(), serverAddress: HSTRING, matchingId: HSTRING) core.HResult!*IAsyncOperation(ESimDiscoverResult) {
        var this: ?*IESim2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IESim2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DiscoverAsyncWithServerAddressAndMatchingId(serverAddress, matchingId);
    }
    pub fn getSlotIndex(self: *@This()) core.HResult!*IReference(i32) {
        var this: ?*IESim3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IESim3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSlotIndex();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESim";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESim.GUID;
    pub const IID: Guid = IESim.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESim.SIGNATURE);
};
pub const ESimAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        const this: *IESimAddedEventArgs = @ptrCast(self);
        return try this.getESim();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimAddedEventArgs.GUID;
    pub const IID: Guid = IESimAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimAddedEventArgs.SIGNATURE);
};
pub const ESimAuthenticationPreference = enum(i32) {
    OnEntry = 0,
    OnAction = 1,
    Never = 2,
};
pub const ESimDiscoverEvent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMatchingId(self: *@This()) core.HResult!HSTRING {
        const this: *IESimDiscoverEvent = @ptrCast(self);
        return try this.getMatchingId();
    }
    pub fn getRspServerAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IESimDiscoverEvent = @ptrCast(self);
        return try this.getRspServerAddress();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimDiscoverEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimDiscoverEvent.GUID;
    pub const IID: Guid = IESimDiscoverEvent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimDiscoverEvent.SIGNATURE);
};
pub const ESimDiscoverResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEvents(self: *@This()) core.HResult!*IVectorView(ESimDiscoverEvent) {
        const this: *IESimDiscoverResult = @ptrCast(self);
        return try this.getEvents();
    }
    pub fn getKind(self: *@This()) core.HResult!ESimDiscoverResultKind {
        const this: *IESimDiscoverResult = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getProfileMetadata(self: *@This()) core.HResult!*ESimProfileMetadata {
        const this: *IESimDiscoverResult = @ptrCast(self);
        return try this.getProfileMetadata();
    }
    pub fn getResult(self: *@This()) core.HResult!*ESimOperationResult {
        const this: *IESimDiscoverResult = @ptrCast(self);
        return try this.getResult();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimDiscoverResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimDiscoverResult.GUID;
    pub const IID: Guid = IESimDiscoverResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimDiscoverResult.SIGNATURE);
};
pub const ESimDiscoverResultKind = enum(i32) {
    None = 0,
    Events = 1,
    ProfileMetadata = 2,
};
pub const ESimDownloadProfileMetadataResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResult(self: *@This()) core.HResult!*ESimOperationResult {
        const this: *IESimDownloadProfileMetadataResult = @ptrCast(self);
        return try this.getResult();
    }
    pub fn getProfileMetadata(self: *@This()) core.HResult!*ESimProfileMetadata {
        const this: *IESimDownloadProfileMetadataResult = @ptrCast(self);
        return try this.getProfileMetadata();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimDownloadProfileMetadataResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimDownloadProfileMetadataResult.GUID;
    pub const IID: Guid = IESimDownloadProfileMetadataResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimDownloadProfileMetadataResult.SIGNATURE);
};
pub const ESimManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getServiceInfo() core.HResult!*ESimServiceInfo {
        const _f = @This().IESimManagerStaticsCache.get();
        return try _f.getServiceInfo();
    }
    pub fn TryCreateESimWatcher() core.HResult!*ESimWatcher {
        const _f = @This().IESimManagerStaticsCache.get();
        return try _f.TryCreateESimWatcher();
    }
    pub fn addServiceInfoChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IESimManagerStaticsCache.get();
        return try _f.addServiceInfoChanged(handler);
    }
    pub fn removeServiceInfoChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IESimManagerStaticsCache.get();
        return try _f.removeServiceInfoChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IESimManagerStaticsCache: FactoryCache(IESimManagerStatics, RUNTIME_NAME) = .{};
};
pub const ESimOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ESimOperationStatus {
        const this: *IESimOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimOperationResult.GUID;
    pub const IID: Guid = IESimOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimOperationResult.SIGNATURE);
};
pub const ESimOperationStatus = enum(i32) {
    Success = 0,
    NotAuthorized = 1,
    NotFound = 2,
    PolicyViolation = 3,
    InsufficientSpaceOnCard = 4,
    ServerFailure = 5,
    ServerNotReachable = 6,
    TimeoutWaitingForUserConsent = 7,
    IncorrectConfirmationCode = 8,
    ConfirmationCodeMaxRetriesExceeded = 9,
    CardRemoved = 10,
    CardBusy = 11,
    Other = 12,
    CardGeneralFailure = 13,
    ConfirmationCodeMissing = 14,
    InvalidMatchingId = 15,
    NoEligibleProfileForThisDevice = 16,
    OperationAborted = 17,
    EidMismatch = 18,
    ProfileNotAvailableForNewBinding = 19,
    ProfileNotReleasedByOperator = 20,
    OperationProhibitedByProfileClass = 21,
    ProfileNotPresent = 22,
    NoCorrespondingRequest = 23,
    TimeoutWaitingForResponse = 24,
    IccidAlreadyExists = 25,
    ProfileProcessingError = 26,
    ServerNotTrusted = 27,
    ProfileDownloadMaxRetriesExceeded = 28,
};
pub const ESimPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShouldEnableManagingUi(self: *@This()) core.HResult!bool {
        const this: *IESimPolicy = @ptrCast(self);
        return try this.getShouldEnableManagingUi();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimPolicy.GUID;
    pub const IID: Guid = IESimPolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimPolicy.SIGNATURE);
};
pub const ESimProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClass(self: *@This()) core.HResult!ESimProfileClass {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getClass();
    }
    pub fn getNickname(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getNickname();
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimProfilePolicy {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getPolicy();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProviderIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getProviderIcon();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getProviderName();
    }
    pub fn getState(self: *@This()) core.HResult!ESimProfileState {
        const this: *IESimProfile = @ptrCast(self);
        return try this.getState();
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESimProfile = @ptrCast(self);
        return try this.DisableAsync();
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESimProfile = @ptrCast(self);
        return try this.EnableAsync();
    }
    pub fn SetNicknameAsync(self: *@This(), newNickname: HSTRING) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESimProfile = @ptrCast(self);
        return try this.SetNicknameAsync(newNickname);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimProfile.GUID;
    pub const IID: Guid = IESimProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimProfile.SIGNATURE);
};
pub const ESimProfileClass = enum(i32) {
    Operational = 0,
    Test = 1,
    Provisioning = 2,
};
pub const ESimProfileInstallProgress = extern struct {
    TotalSizeInBytes: i32,
    InstalledSizeInBytes: i32,
};
pub const ESimProfileMetadata = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsConfirmationCodeRequired(self: *@This()) core.HResult!bool {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getIsConfirmationCodeRequired();
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimProfilePolicy {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getPolicy();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getId();
    }
    pub fn getProviderIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getProviderIcon();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getProviderName();
    }
    pub fn getState(self: *@This()) core.HResult!ESimProfileMetadataState {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.getState();
    }
    pub fn DenyInstallAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.DenyInstallAsync();
    }
    pub fn ConfirmInstallAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.ConfirmInstallAsync();
    }
    pub fn ConfirmInstallAsyncWithConfirmationCode(self: *@This(), confirmationCode: HSTRING) core.HResult!*IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.ConfirmInstallAsyncWithConfirmationCode(confirmationCode);
    }
    pub fn PostponeInstallAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.PostponeInstallAsync();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(ESimProfileMetadata,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimProfileMetadata = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimProfileMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimProfileMetadata.GUID;
    pub const IID: Guid = IESimProfileMetadata.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimProfileMetadata.SIGNATURE);
};
pub const ESimProfileMetadataState = enum(i32) {
    Unknown = 0,
    WaitingForInstall = 1,
    Downloading = 2,
    Installing = 3,
    Expired = 4,
    RejectingDownload = 5,
    NoLongerAvailable = 6,
    DeniedByPolicy = 7,
};
pub const ESimProfilePolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanDelete(self: *@This()) core.HResult!bool {
        const this: *IESimProfilePolicy = @ptrCast(self);
        return try this.getCanDelete();
    }
    pub fn getCanDisable(self: *@This()) core.HResult!bool {
        const this: *IESimProfilePolicy = @ptrCast(self);
        return try this.getCanDisable();
    }
    pub fn getIsManagedByEnterprise(self: *@This()) core.HResult!bool {
        const this: *IESimProfilePolicy = @ptrCast(self);
        return try this.getIsManagedByEnterprise();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimProfilePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimProfilePolicy.GUID;
    pub const IID: Guid = IESimProfilePolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimProfilePolicy.SIGNATURE);
};
pub const ESimProfileState = enum(i32) {
    Unknown = 0,
    Disabled = 1,
    Enabled = 2,
    Deleted = 3,
};
pub const ESimRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        const this: *IESimRemovedEventArgs = @ptrCast(self);
        return try this.getESim();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimRemovedEventArgs.GUID;
    pub const IID: Guid = IESimRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimRemovedEventArgs.SIGNATURE);
};
pub const ESimServiceInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuthenticationPreference(self: *@This()) core.HResult!ESimAuthenticationPreference {
        const this: *IESimServiceInfo = @ptrCast(self);
        return try this.getAuthenticationPreference();
    }
    pub fn getIsESimUiEnabled(self: *@This()) core.HResult!bool {
        const this: *IESimServiceInfo = @ptrCast(self);
        return try this.getIsESimUiEnabled();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimServiceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimServiceInfo.GUID;
    pub const IID: Guid = IESimServiceInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimServiceInfo.SIGNATURE);
};
pub const ESimState = enum(i32) {
    Unknown = 0,
    Idle = 1,
    Removed = 2,
    Busy = 3,
};
pub const ESimUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        const this: *IESimUpdatedEventArgs = @ptrCast(self);
        return try this.getESim();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimUpdatedEventArgs.GUID;
    pub const IID: Guid = IESimUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimUpdatedEventArgs.SIGNATURE);
};
pub const ESimWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ESimWatcherStatus {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(ESimWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(ESimWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IESimWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ESimWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IESimWatcher.GUID;
    pub const IID: Guid = IESimWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IESimWatcher.SIGNATURE);
};
pub const ESimWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
};
pub const HotspotAuthenticationContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWirelessNetworkId(self: *@This()) core.HResult![*]u8 {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.getWirelessNetworkId();
    }
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.getNetworkAdapter();
    }
    pub fn getRedirectMessageUrl(self: *@This()) core.HResult!*Uri {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.getRedirectMessageUrl();
    }
    pub fn getRedirectMessageXml(self: *@This()) core.HResult!*XmlDocument {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.getRedirectMessageXml();
    }
    pub fn getAuthenticationUrl(self: *@This()) core.HResult!*Uri {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.getAuthenticationUrl();
    }
    pub fn IssueCredentials(self: *@This(), userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool) core.HResult!void {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.IssueCredentials(userName, password, extraParameters, markAsManualConnectOnFailure);
    }
    pub fn AbortAuthentication(self: *@This(), markAsManual: bool) core.HResult!void {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.AbortAuthentication(markAsManual);
    }
    pub fn SkipAuthentication(self: *@This()) core.HResult!void {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.SkipAuthentication();
    }
    pub fn TriggerAttentionRequired(self: *@This(), packageRelativeApplicationId: HSTRING, applicationParameters: HSTRING) core.HResult!void {
        const this: *IHotspotAuthenticationContext = @ptrCast(self);
        return try this.TriggerAttentionRequired(packageRelativeApplicationId, applicationParameters);
    }
    pub fn IssueCredentialsAsync(self: *@This(), userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool) core.HResult!*IAsyncOperation(HotspotCredentialsAuthenticationResult) {
        var this: ?*IHotspotAuthenticationContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHotspotAuthenticationContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IssueCredentialsAsync(userName, password, extraParameters, markAsManualConnectOnFailure);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryGetAuthenticationContext(evenToken: HSTRING, context: *HotspotAuthenticationContext) core.HResult!bool {
        const _f = @This().IHotspotAuthenticationContextStaticsCache.get();
        return try _f.TryGetAuthenticationContext(evenToken, context);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.HotspotAuthenticationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHotspotAuthenticationContext.GUID;
    pub const IID: Guid = IHotspotAuthenticationContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHotspotAuthenticationContext.SIGNATURE);
    var _IHotspotAuthenticationContextStaticsCache: FactoryCache(IHotspotAuthenticationContextStatics, RUNTIME_NAME) = .{};
};
pub const HotspotAuthenticationEventDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEventToken(self: *@This()) core.HResult!HSTRING {
        const this: *IHotspotAuthenticationEventDetails = @ptrCast(self);
        return try this.getEventToken();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.HotspotAuthenticationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHotspotAuthenticationEventDetails.GUID;
    pub const IID: Guid = IHotspotAuthenticationEventDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHotspotAuthenticationEventDetails.SIGNATURE);
};
pub const HotspotAuthenticationResponseCode = enum(i32) {
    NoError = 0,
    LoginSucceeded = 50,
    LoginFailed = 100,
    RadiusServerError = 102,
    NetworkAdministratorError = 105,
    LoginAborted = 151,
    AccessGatewayInternalError = 255,
};
pub const HotspotCredentialsAuthenticationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasNetworkErrorOccurred(self: *@This()) core.HResult!bool {
        const this: *IHotspotCredentialsAuthenticationResult = @ptrCast(self);
        return try this.getHasNetworkErrorOccurred();
    }
    pub fn getResponseCode(self: *@This()) core.HResult!HotspotAuthenticationResponseCode {
        const this: *IHotspotCredentialsAuthenticationResult = @ptrCast(self);
        return try this.getResponseCode();
    }
    pub fn getLogoffUrl(self: *@This()) core.HResult!*Uri {
        const this: *IHotspotCredentialsAuthenticationResult = @ptrCast(self);
        return try this.getLogoffUrl();
    }
    pub fn getAuthenticationReplyXml(self: *@This()) core.HResult!*XmlDocument {
        const this: *IHotspotCredentialsAuthenticationResult = @ptrCast(self);
        return try this.getAuthenticationReplyXml();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.HotspotCredentialsAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHotspotCredentialsAuthenticationResult.GUID;
    pub const IID: Guid = IHotspotCredentialsAuthenticationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHotspotCredentialsAuthenticationResult.SIGNATURE);
};
pub const IESim = extern struct {
    vtable: *const VTable,
    pub fn getAvailableMemoryInBytes(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_AvailableMemoryInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Eid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirmwareVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirmwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMobileBroadbandModemDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MobileBroadbandModemDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimPolicy {
        var _r: *ESimPolicy = undefined;
        const _c = self.vtable.get_Policy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!ESimState {
        var _r: ESimState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProfiles(self: *@This()) core.HResult!*IVectorView(ESimProfile) {
        var _r: *IVectorView(ESimProfile) = undefined;
        const _c = self.vtable.GetProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteProfileAsync(self: *@This(), profileId: HSTRING) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.DeleteProfileAsync(@ptrCast(self), profileId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadProfileMetadataAsync(self: *@This(), activationCode: HSTRING) core.HResult!*IAsyncOperation(ESimDownloadProfileMetadataResult) {
        var _r: *IAsyncOperation(ESimDownloadProfileMetadataResult) = undefined;
        const _c = self.vtable.DownloadProfileMetadataAsync(@ptrCast(self), activationCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.ResetAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addProfileChanged(self: *@This(), handler: *TypedEventHandler(ESim,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProfileChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProfileChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProfileChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESim";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f6e6e26-f123-437d-8ced-dc1d2bc0c3a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AvailableMemoryInBytes: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_Eid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirmwareVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MobileBroadbandModemDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Policy: *const fn(self: *anyopaque, _r: **ESimPolicy) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *ESimState) callconv(.winapi) HRESULT,
        GetProfiles: *const fn(self: *anyopaque, _r: **IVectorView(ESimProfile)) callconv(.winapi) HRESULT,
        DeleteProfileAsync: *const fn(self: *anyopaque, profileId: HSTRING, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        DownloadProfileMetadataAsync: *const fn(self: *anyopaque, activationCode: HSTRING, _r: **IAsyncOperation(ESimDownloadProfileMetadataResult)) callconv(.winapi) HRESULT,
        ResetAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        add_ProfileChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESim,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProfileChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IESim2 = extern struct {
    vtable: *const VTable,
    pub fn Discover(self: *@This()) core.HResult!*ESimDiscoverResult {
        var _r: *ESimDiscoverResult = undefined;
        const _c = self.vtable.Discover(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DiscoverWithServerAddressAndMatchingId(self: *@This(), serverAddress: HSTRING, matchingId: HSTRING) core.HResult!*ESimDiscoverResult {
        var _r: *ESimDiscoverResult = undefined;
        const _c = self.vtable.DiscoverWithServerAddressAndMatchingId(@ptrCast(self), serverAddress, matchingId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DiscoverAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimDiscoverResult) {
        var _r: *IAsyncOperation(ESimDiscoverResult) = undefined;
        const _c = self.vtable.DiscoverAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DiscoverAsyncWithServerAddressAndMatchingId(self: *@This(), serverAddress: HSTRING, matchingId: HSTRING) core.HResult!*IAsyncOperation(ESimDiscoverResult) {
        var _r: *IAsyncOperation(ESimDiscoverResult) = undefined;
        const _c = self.vtable.DiscoverAsyncWithServerAddressAndMatchingId(@ptrCast(self), serverAddress, matchingId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESim2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd4fd0a0-c68f-56eb-b99b-8f34b8100299";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Discover: *const fn(self: *anyopaque, _r: **ESimDiscoverResult) callconv(.winapi) HRESULT,
        DiscoverWithServerAddressAndMatchingId: *const fn(self: *anyopaque, serverAddress: HSTRING, matchingId: HSTRING, _r: **ESimDiscoverResult) callconv(.winapi) HRESULT,
        DiscoverAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimDiscoverResult)) callconv(.winapi) HRESULT,
        DiscoverAsyncWithServerAddressAndMatchingId: *const fn(self: *anyopaque, serverAddress: HSTRING, matchingId: HSTRING, _r: **IAsyncOperation(ESimDiscoverResult)) callconv(.winapi) HRESULT,
    };
};
pub const IESim3 = extern struct {
    vtable: *const VTable,
    pub fn getSlotIndex(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_SlotIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESim3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe1edf45-01b8-5d31-b8d3-d9cbebb2b831";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SlotIndex: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IESimAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        var _r: *ESim = undefined;
        const _c = self.vtable.get_ESim(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38bd0a58-4d5a-4d08-8da7-e73eff369ddd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ESim: *const fn(self: *anyopaque, _r: **ESim) callconv(.winapi) HRESULT,
    };
};
pub const IESimDiscoverEvent = extern struct {
    vtable: *const VTable,
    pub fn getMatchingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MatchingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRspServerAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RspServerAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimDiscoverEvent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e59ac3e3-39bc-5f6f-9321-0d4a182d261b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MatchingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RspServerAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IESimDiscoverResult = extern struct {
    vtable: *const VTable,
    pub fn getEvents(self: *@This()) core.HResult!*IVectorView(ESimDiscoverEvent) {
        var _r: *IVectorView(ESimDiscoverEvent) = undefined;
        const _c = self.vtable.get_Events(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!ESimDiscoverResultKind {
        var _r: ESimDiscoverResultKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfileMetadata(self: *@This()) core.HResult!*ESimProfileMetadata {
        var _r: *ESimProfileMetadata = undefined;
        const _c = self.vtable.get_ProfileMetadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!*ESimOperationResult {
        var _r: *ESimOperationResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimDiscoverResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56b4bb5e-ab2f-5ac6-b359-dd5a8e237926";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Events: *const fn(self: *anyopaque, _r: **IVectorView(ESimDiscoverEvent)) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *ESimDiscoverResultKind) callconv(.winapi) HRESULT,
        get_ProfileMetadata: *const fn(self: *anyopaque, _r: **ESimProfileMetadata) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **ESimOperationResult) callconv(.winapi) HRESULT,
    };
};
pub const IESimDownloadProfileMetadataResult = extern struct {
    vtable: *const VTable,
    pub fn getResult(self: *@This()) core.HResult!*ESimOperationResult {
        var _r: *ESimOperationResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProfileMetadata(self: *@This()) core.HResult!*ESimProfileMetadata {
        var _r: *ESimProfileMetadata = undefined;
        const _c = self.vtable.get_ProfileMetadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimDownloadProfileMetadataResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4234d9e-5ad6-426d-8d00-4434f449afec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **ESimOperationResult) callconv(.winapi) HRESULT,
        get_ProfileMetadata: *const fn(self: *anyopaque, _r: **ESimProfileMetadata) callconv(.winapi) HRESULT,
    };
};
pub const IESimManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getServiceInfo(self: *@This()) core.HResult!*ESimServiceInfo {
        var _r: *ESimServiceInfo = undefined;
        const _c = self.vtable.get_ServiceInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateESimWatcher(self: *@This()) core.HResult!*ESimWatcher {
        var _r: *ESimWatcher = undefined;
        const _c = self.vtable.TryCreateESimWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addServiceInfoChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ServiceInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeServiceInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ServiceInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bfa2c0c-df88-4631-bf04-c12e281b3962";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ServiceInfo: *const fn(self: *anyopaque, _r: **ESimServiceInfo) callconv(.winapi) HRESULT,
        TryCreateESimWatcher: *const fn(self: *anyopaque, _r: **ESimWatcher) callconv(.winapi) HRESULT,
        add_ServiceInfoChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ServiceInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IESimOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ESimOperationStatus {
        var _r: ESimOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a67b63b1-309b-4e77-9e7e-cd93f1ddc7b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ESimOperationStatus) callconv(.winapi) HRESULT,
    };
};
pub const IESimPolicy = extern struct {
    vtable: *const VTable,
    pub fn getShouldEnableManagingUi(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldEnableManagingUi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41e1b99d-cf7e-4315-882b-6f1e74b0d38f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldEnableManagingUi: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IESimProfile = extern struct {
    vtable: *const VTable,
    pub fn getClass(self: *@This()) core.HResult!ESimProfileClass {
        var _r: ESimProfileClass = undefined;
        const _c = self.vtable.get_Class(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNickname(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Nickname(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimProfilePolicy {
        var _r: *ESimProfilePolicy = undefined;
        const _c = self.vtable.get_Policy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_ProviderIcon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!ESimProfileState {
        var _r: ESimProfileState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNicknameAsync(self: *@This(), newNickname: HSTRING) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.SetNicknameAsync(@ptrCast(self), newNickname, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee1e7880-06a9-4027-b4f8-ddb23d7810e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Class: *const fn(self: *anyopaque, _r: *ESimProfileClass) callconv(.winapi) HRESULT,
        get_Nickname: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Policy: *const fn(self: *anyopaque, _r: **ESimProfilePolicy) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderIcon: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *ESimProfileState) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        SetNicknameAsync: *const fn(self: *anyopaque, newNickname: HSTRING, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IESimProfileMetadata = extern struct {
    vtable: *const VTable,
    pub fn getIsConfirmationCodeRequired(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConfirmationCodeRequired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolicy(self: *@This()) core.HResult!*ESimProfilePolicy {
        var _r: *ESimProfilePolicy = undefined;
        const _c = self.vtable.get_Policy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderIcon(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_ProviderIcon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!ESimProfileMetadataState {
        var _r: ESimProfileMetadataState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DenyInstallAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.DenyInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfirmInstallAsync(self: *@This()) core.HResult!*IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) {
        var _r: *IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) = undefined;
        const _c = self.vtable.ConfirmInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfirmInstallAsyncWithConfirmationCode(self: *@This(), confirmationCode: HSTRING) core.HResult!*IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) {
        var _r: *IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress) = undefined;
        const _c = self.vtable.ConfirmInstallAsyncWithConfirmationCode(@ptrCast(self), confirmationCode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PostponeInstallAsync(self: *@This()) core.HResult!*IAsyncOperation(ESimOperationResult) {
        var _r: *IAsyncOperation(ESimOperationResult) = undefined;
        const _c = self.vtable.PostponeInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(ESimProfileMetadata,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimProfileMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed25831f-90db-498d-a7b4-ebce807d3c23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsConfirmationCodeRequired: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Policy: *const fn(self: *anyopaque, _r: **ESimProfilePolicy) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderIcon: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *ESimProfileMetadataState) callconv(.winapi) HRESULT,
        DenyInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        ConfirmInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress)) callconv(.winapi) HRESULT,
        ConfirmInstallAsyncWithConfirmationCode: *const fn(self: *anyopaque, confirmationCode: HSTRING, _r: **IAsyncOperationWithProgress(ESimOperationResult,ESimProfileInstallProgress)) callconv(.winapi) HRESULT,
        PostponeInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ESimOperationResult)) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimProfileMetadata,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IESimProfilePolicy = extern struct {
    vtable: *const VTable,
    pub fn getCanDelete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDelete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDisable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDisable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsManagedByEnterprise(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsManagedByEnterprise(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimProfilePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6dd0f1d-9c5c-46c5-a289-a948999bf062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanDelete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanDisable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsManagedByEnterprise: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IESimRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        var _r: *ESim = undefined;
        const _c = self.vtable.get_ESim(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dec5277b-2fd9-4ed9-8376-d9b5e41278a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ESim: *const fn(self: *anyopaque, _r: **ESim) callconv(.winapi) HRESULT,
    };
};
pub const IESimServiceInfo = extern struct {
    vtable: *const VTable,
    pub fn getAuthenticationPreference(self: *@This()) core.HResult!ESimAuthenticationPreference {
        var _r: ESimAuthenticationPreference = undefined;
        const _c = self.vtable.get_AuthenticationPreference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsESimUiEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsESimUiEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimServiceInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f16aabcf-7f59-4a51-8494-bd89d5ff50ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AuthenticationPreference: *const fn(self: *anyopaque, _r: *ESimAuthenticationPreference) callconv(.winapi) HRESULT,
        get_IsESimUiEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IESimUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getESim(self: *@This()) core.HResult!*ESim {
        var _r: *ESim = undefined;
        const _c = self.vtable.get_ESim(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c125cec-508d-4b88-83cb-68bef8168d12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ESim: *const fn(self: *anyopaque, _r: **ESim) callconv(.winapi) HRESULT,
    };
};
pub const IESimWatcher = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ESimWatcherStatus {
        var _r: ESimWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(ESimWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(ESimWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(ESimWatcher,ESimUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IESimWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1f84ceb-a28d-4fbf-9771-6e31b81ccf22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ESimWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimWatcher,ESimAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimWatcher,ESimRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(ESimWatcher,ESimUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHotspotAuthenticationContext = extern struct {
    vtable: *const VTable,
    pub fn getWirelessNetworkId(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.get_WirelessNetworkId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        var _r: *NetworkAdapter = undefined;
        const _c = self.vtable.get_NetworkAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedirectMessageUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_RedirectMessageUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedirectMessageXml(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_RedirectMessageXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_AuthenticationUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IssueCredentials(self: *@This(), userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool) core.HResult!void {
        const _c = self.vtable.IssueCredentials(@ptrCast(self), userName, password, extraParameters, markAsManualConnectOnFailure);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AbortAuthentication(self: *@This(), markAsManual: bool) core.HResult!void {
        const _c = self.vtable.AbortAuthentication(@ptrCast(self), markAsManual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SkipAuthentication(self: *@This()) core.HResult!void {
        const _c = self.vtable.SkipAuthentication(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TriggerAttentionRequired(self: *@This(), packageRelativeApplicationId: HSTRING, applicationParameters: HSTRING) core.HResult!void {
        const _c = self.vtable.TriggerAttentionRequired(@ptrCast(self), packageRelativeApplicationId, applicationParameters);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IHotspotAuthenticationContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-1003-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WirelessNetworkId: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        get_NetworkAdapter: *const fn(self: *anyopaque, _r: **NetworkAdapter) callconv(.winapi) HRESULT,
        get_RedirectMessageUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_RedirectMessageXml: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
        get_AuthenticationUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        IssueCredentials: *const fn(self: *anyopaque, userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool) callconv(.winapi) HRESULT,
        AbortAuthentication: *const fn(self: *anyopaque, markAsManual: bool) callconv(.winapi) HRESULT,
        SkipAuthentication: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TriggerAttentionRequired: *const fn(self: *anyopaque, packageRelativeApplicationId: HSTRING, applicationParameters: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHotspotAuthenticationContext2 = extern struct {
    vtable: *const VTable,
    pub fn IssueCredentialsAsync(self: *@This(), userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool) core.HResult!*IAsyncOperation(HotspotCredentialsAuthenticationResult) {
        var _r: *IAsyncOperation(HotspotCredentialsAuthenticationResult) = undefined;
        const _c = self.vtable.IssueCredentialsAsync(@ptrCast(self), userName, password, extraParameters, markAsManualConnectOnFailure, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IHotspotAuthenticationContext2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-1004-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IssueCredentialsAsync: *const fn(self: *anyopaque, userName: HSTRING, password: HSTRING, extraParameters: HSTRING, markAsManualConnectOnFailure: bool, _r: **IAsyncOperation(HotspotCredentialsAuthenticationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IHotspotAuthenticationContextStatics = extern struct {
    vtable: *const VTable,
    pub fn TryGetAuthenticationContext(self: *@This(), evenToken: HSTRING, context: *HotspotAuthenticationContext) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetAuthenticationContext(@ptrCast(self), evenToken, context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IHotspotAuthenticationContextStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-1002-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetAuthenticationContext: *const fn(self: *anyopaque, evenToken: HSTRING, context: *HotspotAuthenticationContext, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHotspotAuthenticationEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getEventToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EventToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IHotspotAuthenticationEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-1001-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IHotspotCredentialsAuthenticationResult = extern struct {
    vtable: *const VTable,
    pub fn getHasNetworkErrorOccurred(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNetworkErrorOccurred(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseCode(self: *@This()) core.HResult!HotspotAuthenticationResponseCode {
        var _r: HotspotAuthenticationResponseCode = undefined;
        const _c = self.vtable.get_ResponseCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogoffUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LogoffUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationReplyXml(self: *@This()) core.HResult!*XmlDocument {
        var _r: *XmlDocument = undefined;
        const _c = self.vtable.get_AuthenticationReplyXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IHotspotCredentialsAuthenticationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e756c791-1005-4de5-83c7-de61d88831d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasNetworkErrorOccurred: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ResponseCode: *const fn(self: *anyopaque, _r: *HotspotAuthenticationResponseCode) callconv(.winapi) HRESULT,
        get_LogoffUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_AuthenticationReplyXml: *const fn(self: *anyopaque, _r: **XmlDocument) callconv(.winapi) HRESULT,
    };
};
pub const IKnownCSimFilePathsStatics = extern struct {
    vtable: *const VTable,
    pub fn getEFSpn(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFSpn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid1(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid2(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IKnownCSimFilePathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b458aeed-49f1-4c22-b073-96d511bf9c35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EFSpn: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid1: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid2: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IKnownRuimFilePathsStatics = extern struct {
    vtable: *const VTable,
    pub fn getEFSpn(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFSpn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid1(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid2(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IKnownRuimFilePathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3883c8b9-ff24-4571-a867-09f960426e14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EFSpn: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid1: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid2: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IKnownSimFilePathsStatics = extern struct {
    vtable: *const VTable,
    pub fn getEFOns(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFOns(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEFSpn(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFSpn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid1(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid2(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IKnownSimFilePathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80cd1a63-37a5-43d3-80a3-ccd23e8fecee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EFOns: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_EFSpn: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid1: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid2: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IKnownUSimFilePathsStatics = extern struct {
    vtable: *const VTable,
    pub fn getEFSpn(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFSpn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEFOpl(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFOpl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEFPnn(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_EFPnn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid1(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGid2(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Gid2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IKnownUSimFilePathsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c34e581-1f1b-43f4-9530-8b092d32d71f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EFSpn: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_EFOpl: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_EFPnn: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid1: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_Gid2: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccount = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_ServiceProviderGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        var _r: *MobileBroadbandNetwork = undefined;
        const _c = self.vtable.get_CurrentNetwork(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentDeviceInformation(self: *@This()) core.HResult!*MobileBroadbandDeviceInformation {
        var _r: *MobileBroadbandDeviceInformation = undefined;
        const _c = self.vtable.get_CurrentDeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36c24ccd-cee2-43e0-a603-ee86a36d6570";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceProviderGuid: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ServiceProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CurrentNetwork: *const fn(self: *anyopaque, _r: **MobileBroadbandNetwork) callconv(.winapi) HRESULT,
        get_CurrentDeviceInformation: *const fn(self: *anyopaque, _r: **MobileBroadbandDeviceInformation) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccount2 = extern struct {
    vtable: *const VTable,
    pub fn GetConnectionProfiles(self: *@This()) core.HResult!*IVectorView(ConnectionProfile) {
        var _r: *IVectorView(ConnectionProfile) = undefined;
        const _c = self.vtable.GetConnectionProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccount2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38f52f1c-1136-4257-959f-b658a352b6d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetConnectionProfiles: *const fn(self: *anyopaque, _r: **IVectorView(ConnectionProfile)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccount3 = extern struct {
    vtable: *const VTable,
    pub fn getAccountExperienceUrl(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_AccountExperienceUrl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccount3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "092a1e21-9379-4b9b-ad31-d5fee2f748c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccountExperienceUrl: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccountEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccountEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3853c880-77de-4c04-bead-a123b08c9f59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccountStatics = extern struct {
    vtable: *const VTable,
    pub fn getAvailableNetworkAccountIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_AvailableNetworkAccountIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNetworkAccountId(self: *@This(), networkAccountId: HSTRING) core.HResult!*MobileBroadbandAccount {
        var _r: *MobileBroadbandAccount = undefined;
        const _c = self.vtable.CreateFromNetworkAccountId(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccountStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa7f4d24-afc1-4fc8-ae9a-a9175310faad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AvailableNetworkAccountIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        CreateFromNetworkAccountId: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **MobileBroadbandAccount) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccountUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasDeviceInformationChanged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasDeviceInformationChanged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNetworkChanged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNetworkChanged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccountUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bc31d88-a6bd-49e1-80ab-6b91354a57d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasDeviceInformationChanged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNetworkChanged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAccountWatcher = extern struct {
    vtable: *const VTable,
    pub fn addAccountAdded(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountAdded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountAdded(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccountUpdated(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountUpdated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountUpdated(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccountRemoved(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountRemoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandAccountWatcherStatus {
        var _r: MobileBroadbandAccountWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAccountWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bf3335e-23b5-449f-928d-5e0d3e04471d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AccountAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountAdded: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccountUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountUpdated: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccountRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountRemoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MobileBroadbandAccountWatcherStatus) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAntennaSar = extern struct {
    vtable: *const VTable,
    pub fn getAntennaIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_AntennaIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSarBackoffIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SarBackoffIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAntennaSar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9af4b7e-cbf9-4109-90be-5c06bfd513b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AntennaIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SarBackoffIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandAntennaSarFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithIndex(self: *@This(), antennaIndex: i32, sarBackoffIndex: i32) core.HResult!*MobileBroadbandAntennaSar {
        var _r: *MobileBroadbandAntennaSar = undefined;
        const _c = self.vtable.CreateWithIndex(@ptrCast(self), antennaIndex, sarBackoffIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandAntennaSarFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a91e1716-c04d-4a21-8698-1459dc672c6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithIndex: *const fn(self: *anyopaque, antennaIndex: i32, sarBackoffIndex: i32, _r: **MobileBroadbandAntennaSar) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellCdma = extern struct {
    vtable: *const VTable,
    pub fn getBaseStationId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_BaseStationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseStationPNCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_BaseStationPNCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseStationLatitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_BaseStationLatitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseStationLongitude(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_BaseStationLongitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBaseStationLastBroadcastGpsTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_BaseStationLastBroadcastGpsTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_NetworkId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPilotSignalStrengthInDB(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PilotSignalStrengthInDB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_SystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellCdma";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0601b3b4-411a-4f2e-8287-76f5650c60cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseStationId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_BaseStationPNCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_BaseStationLatitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_BaseStationLongitude: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_BaseStationLastBroadcastGpsTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_NetworkId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_PilotSignalStrengthInDB: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_SystemId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellGsm = extern struct {
    vtable: *const VTable,
    pub fn getBaseStationId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_BaseStationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChannelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_LocationAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceivedSignalStrengthInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReceivedSignalStrengthInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TimingAdvanceInBitPeriods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellGsm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc917f06-7ee0-47b8-9e1f-c3b48df9df5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BaseStationId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_CellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ChannelNumber: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_LocationAreaCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReceivedSignalStrengthInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_TimingAdvanceInBitPeriods: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellLte = extern struct {
    vtable: *const VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChannelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PhysicalCellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceSignalReceivedPowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReferenceSignalReceivedPowerInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceSignalReceivedQualityInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReferenceSignalReceivedQualityInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TimingAdvanceInBitPeriods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackingAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TrackingAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellLte";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9197c87b-2b78-456d-8b53-aaa25d0af741";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ChannelNumber: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_PhysicalCellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReferenceSignalReceivedPowerInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_ReferenceSignalReceivedQualityInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_TimingAdvanceInBitPeriods: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_TrackingAreaCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellNR = extern struct {
    vtable: *const VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i64) {
        var _r: *IReference(i64) = undefined;
        const _c = self.vtable.get_CellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChannelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PhysicalCellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceSignalReceivedPowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReferenceSignalReceivedPowerInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferenceSignalReceivedQualityInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReferenceSignalReceivedQualityInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimingAdvanceInNanoseconds(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TimingAdvanceInNanoseconds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackingAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TrackingAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalToNoiseRatioInDB(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_SignalToNoiseRatioInDB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellNR";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a13f0deb-66fc-4b4b-83a9-a487a3a5a0a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CellId: *const fn(self: *anyopaque, _r: **IReference(i64)) callconv(.winapi) HRESULT,
        get_ChannelNumber: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_PhysicalCellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReferenceSignalReceivedPowerInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_ReferenceSignalReceivedQualityInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_TimingAdvanceInNanoseconds: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_TrackingAreaCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_SignalToNoiseRatioInDB: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellTdscdma = extern struct {
    vtable: *const VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellParameterId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CellParameterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChannelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_LocationAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPathLossInDB(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PathLossInDB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceivedSignalCodePowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReceivedSignalCodePowerInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_TimingAdvanceInBitPeriods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellTdscdma";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0eda1655-db0e-4182-8cda-cc419a7bde08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_CellParameterId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ChannelNumber: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_LocationAreaCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_PathLossInDB: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReceivedSignalCodePowerInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_TimingAdvanceInBitPeriods: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellUmts = extern struct {
    vtable: *const VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_CellId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_ChannelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_LocationAreaCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPathLossInDB(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PathLossInDB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrimaryScramblingCode(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PrimaryScramblingCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceivedSignalCodePowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_ReceivedSignalCodePowerInDBm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignalToNoiseRatioInDB(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_SignalToNoiseRatioInDB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellUmts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77b4b5ae-49c8-4f15-b285-4c26a7f67215";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CellId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ChannelNumber: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_LocationAreaCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_PathLossInDB: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_PrimaryScramblingCode: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ReceivedSignalCodePowerInDBm: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_SignalToNoiseRatioInDB: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellsInfo = extern struct {
    vtable: *const VTable,
    pub fn getNeighboringCellsCdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellCdma) {
        var _r: *IVectorView(MobileBroadbandCellCdma) = undefined;
        const _c = self.vtable.get_NeighboringCellsCdma(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighboringCellsGsm(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellGsm) {
        var _r: *IVectorView(MobileBroadbandCellGsm) = undefined;
        const _c = self.vtable.get_NeighboringCellsGsm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighboringCellsLte(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellLte) {
        var _r: *IVectorView(MobileBroadbandCellLte) = undefined;
        const _c = self.vtable.get_NeighboringCellsLte(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighboringCellsTdscdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellTdscdma) {
        var _r: *IVectorView(MobileBroadbandCellTdscdma) = undefined;
        const _c = self.vtable.get_NeighboringCellsTdscdma(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighboringCellsUmts(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellUmts) {
        var _r: *IVectorView(MobileBroadbandCellUmts) = undefined;
        const _c = self.vtable.get_NeighboringCellsUmts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsCdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellCdma) {
        var _r: *IVectorView(MobileBroadbandCellCdma) = undefined;
        const _c = self.vtable.get_ServingCellsCdma(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsGsm(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellGsm) {
        var _r: *IVectorView(MobileBroadbandCellGsm) = undefined;
        const _c = self.vtable.get_ServingCellsGsm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsLte(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellLte) {
        var _r: *IVectorView(MobileBroadbandCellLte) = undefined;
        const _c = self.vtable.get_ServingCellsLte(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsTdscdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellTdscdma) {
        var _r: *IVectorView(MobileBroadbandCellTdscdma) = undefined;
        const _c = self.vtable.get_ServingCellsTdscdma(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsUmts(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellUmts) {
        var _r: *IVectorView(MobileBroadbandCellUmts) = undefined;
        const _c = self.vtable.get_ServingCellsUmts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellsInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89a9562a-e472-4da5-929c-de61711dd261";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NeighboringCellsCdma: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellCdma)) callconv(.winapi) HRESULT,
        get_NeighboringCellsGsm: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellGsm)) callconv(.winapi) HRESULT,
        get_NeighboringCellsLte: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellLte)) callconv(.winapi) HRESULT,
        get_NeighboringCellsTdscdma: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellTdscdma)) callconv(.winapi) HRESULT,
        get_NeighboringCellsUmts: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellUmts)) callconv(.winapi) HRESULT,
        get_ServingCellsCdma: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellCdma)) callconv(.winapi) HRESULT,
        get_ServingCellsGsm: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellGsm)) callconv(.winapi) HRESULT,
        get_ServingCellsLte: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellLte)) callconv(.winapi) HRESULT,
        get_ServingCellsTdscdma: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellTdscdma)) callconv(.winapi) HRESULT,
        get_ServingCellsUmts: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellUmts)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCellsInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getNeighboringCellsNR(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellNR) {
        var _r: *IVectorView(MobileBroadbandCellNR) = undefined;
        const _c = self.vtable.get_NeighboringCellsNR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServingCellsNR(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellNR) {
        var _r: *IVectorView(MobileBroadbandCellNR) = undefined;
        const _c = self.vtable.get_ServingCellsNR(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCellsInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66205912-b89f-4e12-bbb6-d5cf09a820ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NeighboringCellsNR: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellNR)) callconv(.winapi) HRESULT,
        get_ServingCellsNR: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandCellNR)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandCurrentSlotIndexChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCurrentSlotIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentSlotIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandCurrentSlotIndexChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f718b184-c370-5fd4-a670-1846cb9bce47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentSlotIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceInformation = extern struct {
    vtable: *const VTable,
    pub fn getNetworkDeviceStatus(self: *@This()) core.HResult!NetworkDeviceStatus {
        var _r: NetworkDeviceStatus = undefined;
        const _c = self.vtable.get_NetworkDeviceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturer(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Manufacturer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Model(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirmwareInformation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirmwareInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        var _r: CellularClass = undefined;
        const _c = self.vtable.get_CellularClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataClasses(self: *@This()) core.HResult!DataClasses {
        var _r: DataClasses = undefined;
        const _c = self.vtable.get_DataClasses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomDataClass(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomDataClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMobileEquipmentId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MobileEquipmentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTelephoneNumbers(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_TelephoneNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubscriberId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SubscriberId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimIccId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceType(self: *@This()) core.HResult!MobileBroadbandDeviceType {
        var _r: MobileBroadbandDeviceType = undefined;
        const _c = self.vtable.get_DeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentRadioState(self: *@This()) core.HResult!MobileBroadbandRadioState {
        var _r: MobileBroadbandRadioState = undefined;
        const _c = self.vtable.get_CurrentRadioState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6d08168-e381-4c6e-9be8-fe156969a446";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkDeviceStatus: *const fn(self: *anyopaque, _r: *NetworkDeviceStatus) callconv(.winapi) HRESULT,
        get_Manufacturer: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Model: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirmwareInformation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CellularClass: *const fn(self: *anyopaque, _r: *CellularClass) callconv(.winapi) HRESULT,
        get_DataClasses: *const fn(self: *anyopaque, _r: *DataClasses) callconv(.winapi) HRESULT,
        get_CustomDataClass: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MobileEquipmentId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TelephoneNumbers: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_SubscriberId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SimIccId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceType: *const fn(self: *anyopaque, _r: *MobileBroadbandDeviceType) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CurrentRadioState: *const fn(self: *anyopaque, _r: *MobileBroadbandRadioState) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getPinManager(self: *@This()) core.HResult!*MobileBroadbandPinManager {
        var _r: *MobileBroadbandPinManager = undefined;
        const _c = self.vtable.get_PinManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevision(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Revision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SerialNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e467af1-f932-4737-a722-03ba72370cb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinManager: *const fn(self: *anyopaque, _r: **MobileBroadbandPinManager) callconv(.winapi) HRESULT,
        get_Revision: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SerialNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceInformation3 = extern struct {
    vtable: *const VTable,
    pub fn getSimSpn(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimSpn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimPnn(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimPnn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimGid1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimGid1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e08bb4bd-5d30-4b5a-92cc-d54df881d49e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimSpn: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SimPnn: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SimGid1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceInformation4 = extern struct {
    vtable: *const VTable,
    pub fn getSlotManager(self: *@This()) core.HResult!*MobileBroadbandSlotManager {
        var _r: *MobileBroadbandSlotManager = undefined;
        const _c = self.vtable.get_SlotManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceInformation4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "263f3152-7b9d-582c-b17c-f80a60b50031";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SlotManager: *const fn(self: *anyopaque, _r: **MobileBroadbandSlotManager) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceService = extern struct {
    vtable: *const VTable,
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DeviceServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCommands(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenDataSession(self: *@This()) core.HResult!*MobileBroadbandDeviceServiceDataSession {
        var _r: *MobileBroadbandDeviceServiceDataSession = undefined;
        const _c = self.vtable.OpenDataSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenCommandSession(self: *@This()) core.HResult!*MobileBroadbandDeviceServiceCommandSession {
        var _r: *MobileBroadbandDeviceServiceCommandSession = undefined;
        const _c = self.vtable.OpenCommandSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22be1a52-bd80-40ac-8e1f-2e07836a3dbd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_SupportedCommands: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        OpenDataSession: *const fn(self: *anyopaque, _r: **MobileBroadbandDeviceServiceDataSession) callconv(.winapi) HRESULT,
        OpenCommandSession: *const fn(self: *anyopaque, _r: **MobileBroadbandDeviceServiceCommandSession) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceCommandEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DeviceServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEventId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_EventId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ReceivedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28e4338f-cca4-5047-a20c-0a6d79acecba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_EventId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ReceivedData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceCommandResult = extern struct {
    vtable: *const VTable,
    pub fn getStatusCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_StatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResponseData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ResponseData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0f46abb-94d6-44b9-a538-f0810b645389";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StatusCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ResponseData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceCommandSession = extern struct {
    vtable: *const VTable,
    pub fn SendQueryCommandAsync(self: *@This(), commandId: u32, data: *IBuffer) core.HResult!*IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) {
        var _r: *IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) = undefined;
        const _c = self.vtable.SendQueryCommandAsync(@ptrCast(self), commandId, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendSetCommandAsync(self: *@This(), commandId: u32, data: *IBuffer) core.HResult!*IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) {
        var _r: *IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) = undefined;
        const _c = self.vtable.SendSetCommandAsync(@ptrCast(self), commandId, data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CloseSession(self: *@This()) core.HResult!void {
        const _c = self.vtable.CloseSession(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc098a45-913b-4914-b6c3-ae6304593e75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendQueryCommandAsync: *const fn(self: *anyopaque, commandId: u32, data: *IBuffer, _r: **IAsyncOperation(MobileBroadbandDeviceServiceCommandResult)) callconv(.winapi) HRESULT,
        SendSetCommandAsync: *const fn(self: *anyopaque, commandId: u32, data: *IBuffer, _r: **IAsyncOperation(MobileBroadbandDeviceServiceCommandResult)) callconv(.winapi) HRESULT,
        CloseSession: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceCommandSession2 = extern struct {
    vtable: *const VTable,
    pub fn addCommandReceived(self: *@This(), handler: *TypedEventHandler(MobileBroadbandDeviceServiceCommandSession,MobileBroadbandDeviceServiceCommandEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommandReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommandReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommandReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceCommandSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef004861-2546-5739-86e7-0fdc0e62411c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CommandReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandDeviceServiceCommandSession,MobileBroadbandDeviceServiceCommandEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommandReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ReceivedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6aa13de-1380-40e3-8618-73cbca48138c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReceivedData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceDataSession = extern struct {
    vtable: *const VTable,
    pub fn WriteDataAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.WriteDataAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CloseSession(self: *@This()) core.HResult!void {
        const _c = self.vtable.CloseSession(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDataReceived(self: *@This(), eventHandler: *TypedEventHandler(MobileBroadbandDeviceServiceDataSession,MobileBroadbandDeviceServiceDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataReceived(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataReceived(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceDataSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dad62333-8bcf-4289-8a37-045c2169486a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        WriteDataAsync: *const fn(self: *anyopaque, value: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CloseSession: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_DataReceived: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(MobileBroadbandDeviceServiceDataSession,MobileBroadbandDeviceServiceDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataReceived: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceInformation = extern struct {
    vtable: *const VTable,
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DeviceServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDataReadSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDataReadSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDataWriteSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDataWriteSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53d69b5b-c4ed-45f0-803a-d9417a6d9846";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IsDataReadSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDataWriteSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_DeviceServiceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ReceivedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a055b70-b9ae-4458-9241-a6a5fbf18a0c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceServiceId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ReceivedData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandDeviceServiceTriggerDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getEventId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_EventId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandDeviceServiceTriggerDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d83d5f16-336a-553f-94bb-0cd1a2ff0c81";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModem = extern struct {
    vtable: *const VTable,
    pub fn getCurrentAccount(self: *@This()) core.HResult!*MobileBroadbandAccount {
        var _r: *MobileBroadbandAccount = undefined;
        const _c = self.vtable.get_CurrentAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*MobileBroadbandDeviceInformation {
        var _r: *MobileBroadbandDeviceInformation = undefined;
        const _c = self.vtable.get_DeviceInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDeviceServiceCommandSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxDeviceServiceCommandSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxDeviceServiceDataSizeInBytes(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxDeviceServiceDataSizeInBytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceServices(self: *@This()) core.HResult!*IVectorView(MobileBroadbandDeviceServiceInformation) {
        var _r: *IVectorView(MobileBroadbandDeviceServiceInformation) = undefined;
        const _c = self.vtable.get_DeviceServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceService(self: *@This(), deviceServiceId: *Guid) core.HResult!*MobileBroadbandDeviceService {
        var _r: *MobileBroadbandDeviceService = undefined;
        const _c = self.vtable.GetDeviceService(@ptrCast(self), deviceServiceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsResetSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsResetSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResetAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentConfigurationAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandModemConfiguration) {
        var _r: *IAsyncOperation(MobileBroadbandModemConfiguration) = undefined;
        const _c = self.vtable.GetCurrentConfigurationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        var _r: *MobileBroadbandNetwork = undefined;
        const _c = self.vtable.get_CurrentNetwork(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0356912-e9f9-4f67-a03d-43189a316bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentAccount: *const fn(self: *anyopaque, _r: **MobileBroadbandAccount) callconv(.winapi) HRESULT,
        get_DeviceInformation: *const fn(self: *anyopaque, _r: **MobileBroadbandDeviceInformation) callconv(.winapi) HRESULT,
        get_MaxDeviceServiceCommandSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxDeviceServiceDataSizeInBytes: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DeviceServices: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandDeviceServiceInformation)) callconv(.winapi) HRESULT,
        GetDeviceService: *const fn(self: *anyopaque, deviceServiceId: *Guid, _r: **MobileBroadbandDeviceService) callconv(.winapi) HRESULT,
        get_IsResetSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ResetAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetCurrentConfigurationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MobileBroadbandModemConfiguration)) callconv(.winapi) HRESULT,
        get_CurrentNetwork: *const fn(self: *anyopaque, _r: **MobileBroadbandNetwork) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModem2 = extern struct {
    vtable: *const VTable,
    pub fn GetIsPassthroughEnabledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsPassthroughEnabledAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsPassthroughEnabledAsync(self: *@This(), value: bool) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        var _r: *IAsyncOperation(MobileBroadbandModemStatus) = undefined;
        const _c = self.vtable.SetIsPassthroughEnabledAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12862b28-b9eb-4ee2-bbe3-711f53eea373";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetIsPassthroughEnabledAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SetIsPassthroughEnabledAsync: *const fn(self: *anyopaque, value: bool, _r: **IAsyncOperation(MobileBroadbandModemStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModem3 = extern struct {
    vtable: *const VTable,
    pub fn TryGetPcoAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandPco) {
        var _r: *IAsyncOperation(MobileBroadbandPco) = undefined;
        const _c = self.vtable.TryGetPcoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInEmergencyCallMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInEmergencyCallMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsInEmergencyCallModeChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandModem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsInEmergencyCallModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsInEmergencyCallModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsInEmergencyCallModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModem3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9fec6ea-2f34-4582-9102-c314d2a87eec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetPcoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MobileBroadbandPco)) callconv(.winapi) HRESULT,
        get_IsInEmergencyCallMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_IsInEmergencyCallModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandModem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsInEmergencyCallModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModem4 = extern struct {
    vtable: *const VTable,
    pub fn SetIsPassthroughEnabledAsync(self: *@This(), value: bool, slotindex: i32) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        var _r: *IAsyncOperation(MobileBroadbandModemStatus) = undefined;
        const _c = self.vtable.SetIsPassthroughEnabledAsync(@ptrCast(self), value, slotindex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsPassthroughEnabledAsync(self: *@This(), slotindex: i32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsPassthroughEnabledAsync(@ptrCast(self), slotindex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsPassthroughEnabled(self: *@This(), value: bool, slotindex: i32) core.HResult!MobileBroadbandModemStatus {
        var _r: MobileBroadbandModemStatus = undefined;
        const _c = self.vtable.SetIsPassthroughEnabled(@ptrCast(self), value, slotindex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsPassthroughEnabled(self: *@This(), slotindex: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsPassthroughEnabled(@ptrCast(self), slotindex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModem4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a0398c2-91be-412b-b569-586e9f0030d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetIsPassthroughEnabledAsync: *const fn(self: *anyopaque, value: bool, slotindex: i32, _r: **IAsyncOperation(MobileBroadbandModemStatus)) callconv(.winapi) HRESULT,
        GetIsPassthroughEnabledAsync: *const fn(self: *anyopaque, slotindex: i32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SetIsPassthroughEnabled: *const fn(self: *anyopaque, value: bool, slotindex: i32, _r: *MobileBroadbandModemStatus) callconv(.winapi) HRESULT,
        GetIsPassthroughEnabled: *const fn(self: *anyopaque, slotindex: i32, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModemConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getUicc(self: *@This()) core.HResult!*MobileBroadbandUicc {
        var _r: *MobileBroadbandUicc = undefined;
        const _c = self.vtable.get_Uicc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHomeProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HomeProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHomeProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HomeProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fce035a3-d6cd-4320-b982-be9d3ec7890f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uicc: *const fn(self: *anyopaque, _r: **MobileBroadbandUicc) callconv(.winapi) HRESULT,
        get_HomeProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HomeProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModemConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getSarManager(self: *@This()) core.HResult!*MobileBroadbandSarManager {
        var _r: *MobileBroadbandSarManager = undefined;
        const _c = self.vtable.get_SarManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModemConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "320ff5c5-e460-42ae-aa51-69621e7a4477";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SarManager: *const fn(self: *anyopaque, _r: **MobileBroadbandSarManager) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModemIsolation = extern struct {
    vtable: *const VTable,
    pub fn AddAllowedHost(self: *@This(), host: *HostName) core.HResult!void {
        const _c = self.vtable.AddAllowedHost(@ptrCast(self), host);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddAllowedHostRange(self: *@This(), first: *HostName, last: *HostName) core.HResult!void {
        const _c = self.vtable.AddAllowedHostRange(@ptrCast(self), first, last);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ApplyConfigurationAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ApplyConfigurationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearConfigurationAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearConfigurationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModemIsolation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5618fec-e661-4330-9bb4-3480212ec354";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAllowedHost: *const fn(self: *anyopaque, host: *HostName) callconv(.winapi) HRESULT,
        AddAllowedHostRange: *const fn(self: *anyopaque, first: *HostName, last: *HostName) callconv(.winapi) HRESULT,
        ApplyConfigurationAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearConfigurationAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModemIsolationFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), modemDeviceId: HSTRING, ruleGroupId: HSTRING) core.HResult!*MobileBroadbandModemIsolation {
        var _r: *MobileBroadbandModemIsolation = undefined;
        const _c = self.vtable.Create(@ptrCast(self), modemDeviceId, ruleGroupId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModemIsolationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21d7ec58-c2b1-4c2f-a030-72820a24ecd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, modemDeviceId: HSTRING, ruleGroupId: HSTRING, _r: **MobileBroadbandModemIsolation) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandModemStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromId(self: *@This(), deviceId: HSTRING) core.HResult!*MobileBroadbandModem {
        var _r: *MobileBroadbandModem = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*MobileBroadbandModem {
        var _r: *MobileBroadbandModem = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandModemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f99ed637-d6f1-4a78-8cbc-6421a65063c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **MobileBroadbandModem) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **MobileBroadbandModem) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandNetwork = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        var _r: *NetworkAdapter = undefined;
        const _c = self.vtable.get_NetworkAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkRegistrationState(self: *@This()) core.HResult!NetworkRegistrationState {
        var _r: NetworkRegistrationState = undefined;
        const _c = self.vtable.get_NetworkRegistrationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegistrationNetworkError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_RegistrationNetworkError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPacketAttachNetworkError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PacketAttachNetworkError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActivationNetworkError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ActivationNetworkError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccessPointName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegisteredDataClass(self: *@This()) core.HResult!DataClasses {
        var _r: DataClasses = undefined;
        const _c = self.vtable.get_RegisteredDataClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegisteredProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RegisteredProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegisteredProviderName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RegisteredProviderName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowConnectionUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowConnectionUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb63928c-0309-4cb6-a8c1-6a5a3c8e1ff6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAdapter: *const fn(self: *anyopaque, _r: **NetworkAdapter) callconv(.winapi) HRESULT,
        get_NetworkRegistrationState: *const fn(self: *anyopaque, _r: *NetworkRegistrationState) callconv(.winapi) HRESULT,
        get_RegistrationNetworkError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PacketAttachNetworkError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ActivationNetworkError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AccessPointName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RegisteredDataClass: *const fn(self: *anyopaque, _r: *DataClasses) callconv(.winapi) HRESULT,
        get_RegisteredProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RegisteredProviderName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ShowConnectionUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandNetwork2 = extern struct {
    vtable: *const VTable,
    pub fn GetVoiceCallSupportAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetVoiceCallSupportAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegistrationUiccApps(self: *@This()) core.HResult!*IVectorView(MobileBroadbandUiccApp) {
        var _r: *IVectorView(MobileBroadbandUiccApp) = undefined;
        const _c = self.vtable.get_RegistrationUiccApps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandNetwork2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a55db22-62f7-4bdd-ba1d-477441960ba0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetVoiceCallSupportAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_RegistrationUiccApps: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandUiccApp)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandNetwork3 = extern struct {
    vtable: *const VTable,
    pub fn GetCellsInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandCellsInfo) {
        var _r: *IAsyncOperation(MobileBroadbandCellsInfo) = undefined;
        const _c = self.vtable.GetCellsInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandNetwork3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33670a8a-c7ef-444c-ab6c-df7ef7a390fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCellsInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MobileBroadbandCellsInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandNetworkRegistrationStateChange = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        var _r: *MobileBroadbandNetwork = undefined;
        const _c = self.vtable.get_Network(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "beaf94e1-960f-49b4-a08d-7d85e968c7ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Network: *const fn(self: *anyopaque, _r: **MobileBroadbandNetwork) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getNetworkRegistrationStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandNetworkRegistrationStateChange) {
        var _r: *IVectorView(MobileBroadbandNetworkRegistrationStateChange) = undefined;
        const _c = self.vtable.get_NetworkRegistrationStateChanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89135cff-28b8-46aa-b137-1c4b0f21edfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkRegistrationStateChanges: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandNetworkRegistrationStateChange)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPco = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComplete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPco";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4e4fcbe-e3a3-43c5-a87b-6c86d229d7fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_IsComplete: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPcoDataChangeTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getUpdatedData(self: *@This()) core.HResult!*MobileBroadbandPco {
        var _r: *MobileBroadbandPco = undefined;
        const _c = self.vtable.get_UpdatedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPcoDataChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "263f5114-64e0-4493-909b-2d14a01962b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UpdatedData: *const fn(self: *anyopaque, _r: **MobileBroadbandPco) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPin = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!MobileBroadbandPinType {
        var _r: MobileBroadbandPinType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLockState(self: *@This()) core.HResult!MobileBroadbandPinLockState {
        var _r: MobileBroadbandPinLockState = undefined;
        const _c = self.vtable.get_LockState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormat(self: *@This()) core.HResult!MobileBroadbandPinFormat {
        var _r: MobileBroadbandPinFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MinLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttemptsRemaining(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AttemptsRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        var _r: *IAsyncOperation(MobileBroadbandPinOperationResult) = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), currentPin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        var _r: *IAsyncOperation(MobileBroadbandPinOperationResult) = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), currentPin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnterAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        var _r: *IAsyncOperation(MobileBroadbandPinOperationResult) = undefined;
        const _c = self.vtable.EnterAsync(@ptrCast(self), currentPin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeAsync(self: *@This(), currentPin: HSTRING, newPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        var _r: *IAsyncOperation(MobileBroadbandPinOperationResult) = undefined;
        const _c = self.vtable.ChangeAsync(@ptrCast(self), currentPin, newPin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnblockAsync(self: *@This(), pinUnblockKey: HSTRING, newPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        var _r: *IAsyncOperation(MobileBroadbandPinOperationResult) = undefined;
        const _c = self.vtable.UnblockAsync(@ptrCast(self), pinUnblockKey, newPin, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e661d709-e779-45bf-8281-75323df9e321";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *MobileBroadbandPinType) callconv(.winapi) HRESULT,
        get_LockState: *const fn(self: *anyopaque, _r: *MobileBroadbandPinLockState) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *MobileBroadbandPinFormat) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MinLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AttemptsRemaining: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, currentPin: HSTRING, _r: **IAsyncOperation(MobileBroadbandPinOperationResult)) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, currentPin: HSTRING, _r: **IAsyncOperation(MobileBroadbandPinOperationResult)) callconv(.winapi) HRESULT,
        EnterAsync: *const fn(self: *anyopaque, currentPin: HSTRING, _r: **IAsyncOperation(MobileBroadbandPinOperationResult)) callconv(.winapi) HRESULT,
        ChangeAsync: *const fn(self: *anyopaque, currentPin: HSTRING, newPin: HSTRING, _r: **IAsyncOperation(MobileBroadbandPinOperationResult)) callconv(.winapi) HRESULT,
        UnblockAsync: *const fn(self: *anyopaque, pinUnblockKey: HSTRING, newPin: HSTRING, _r: **IAsyncOperation(MobileBroadbandPinOperationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPinLockStateChange = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPinType(self: *@This()) core.HResult!MobileBroadbandPinType {
        var _r: MobileBroadbandPinType = undefined;
        const _c = self.vtable.get_PinType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPinLockState(self: *@This()) core.HResult!MobileBroadbandPinLockState {
        var _r: MobileBroadbandPinLockState = undefined;
        const _c = self.vtable.get_PinLockState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be16673e-1f04-4f95-8b90-e7f559dde7e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PinType: *const fn(self: *anyopaque, _r: *MobileBroadbandPinType) callconv(.winapi) HRESULT,
        get_PinLockState: *const fn(self: *anyopaque, _r: *MobileBroadbandPinLockState) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPinLockStateChangeTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getPinLockStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandPinLockStateChange) {
        var _r: *IVectorView(MobileBroadbandPinLockStateChange) = undefined;
        const _c = self.vtable.get_PinLockStateChanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPinLockStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d338c091-3e91-4d38-9036-aee83a6e79ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PinLockStateChanges: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandPinLockStateChange)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPinManager = extern struct {
    vtable: *const VTable,
    pub fn getSupportedPins(self: *@This()) core.HResult!*IVectorView(MobileBroadbandPinType) {
        var _r: *IVectorView(MobileBroadbandPinType) = undefined;
        const _c = self.vtable.get_SupportedPins(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPin(self: *@This(), pinType: MobileBroadbandPinType) core.HResult!*MobileBroadbandPin {
        var _r: *MobileBroadbandPin = undefined;
        const _c = self.vtable.GetPin(@ptrCast(self), pinType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPinManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83567edd-6e1f-4b9b-a413-2b1f50cc36df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedPins: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandPinType)) callconv(.winapi) HRESULT,
        GetPin: *const fn(self: *anyopaque, pinType: MobileBroadbandPinType, _r: **MobileBroadbandPin) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandPinOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getIsSuccessful(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuccessful(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttemptsRemaining(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AttemptsRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandPinOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11dddc32-31e7-49f5-b663-123d3bef0362";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSuccessful: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AttemptsRemaining: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandRadioStateChange = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadioState(self: *@This()) core.HResult!MobileBroadbandRadioState {
        var _r: MobileBroadbandRadioState = undefined;
        const _c = self.vtable.get_RadioState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b054a561-9833-4aed-9717-4348b21a24b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RadioState: *const fn(self: *anyopaque, _r: *MobileBroadbandRadioState) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandRadioStateChangeTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getRadioStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandRadioStateChange) {
        var _r: *IVectorView(MobileBroadbandRadioStateChange) = undefined;
        const _c = self.vtable.get_RadioStateChanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandRadioStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71301ace-093c-42c6-b0db-ad1f75a65445";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RadioStateChanges: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandRadioStateChange)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandSarManager = extern struct {
    vtable: *const VTable,
    pub fn getIsBackoffEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBackoffEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWiFiHardwareIntegrated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWiFiHardwareIntegrated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSarControlledByHardware(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSarControlledByHardware(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAntennas(self: *@This()) core.HResult!*IVectorView(MobileBroadbandAntennaSar) {
        var _r: *IVectorView(MobileBroadbandAntennaSar) = undefined;
        const _c = self.vtable.get_Antennas(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHysteresisTimerPeriod(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_HysteresisTimerPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTransmissionStateChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSarManager,MobileBroadbandTransmissionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransmissionStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransmissionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransmissionStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableBackoffAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.EnableBackoffAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableBackoffAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DisableBackoffAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetConfigurationAsync(self: *@This(), antennas: *IIterable(MobileBroadbandAntennaSar)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetConfigurationAsync(@ptrCast(self), antennas, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RevertSarToHardwareControlAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RevertSarToHardwareControlAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTransmissionStateChangedHysteresisAsync(self: *@This(), timerPeriod: TimeSpan) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetTransmissionStateChangedHysteresisAsync(@ptrCast(self), timerPeriod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsTransmittingAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsTransmittingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartTransmissionStateMonitoring(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartTransmissionStateMonitoring(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopTransmissionStateMonitoring(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopTransmissionStateMonitoring(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandSarManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5b26833-967e-40c9-a485-19c0dd209e22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBackoffEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsWiFiHardwareIntegrated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSarControlledByHardware: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Antennas: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandAntennaSar)) callconv(.winapi) HRESULT,
        get_HysteresisTimerPeriod: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        add_TransmissionStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandSarManager,MobileBroadbandTransmissionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransmissionStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        EnableBackoffAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DisableBackoffAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetConfigurationAsync: *const fn(self: *anyopaque, antennas: *IIterable(MobileBroadbandAntennaSar), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RevertSarToHardwareControlAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetTransmissionStateChangedHysteresisAsync: *const fn(self: *anyopaque, timerPeriod: TimeSpan, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetIsTransmittingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        StartTransmissionStateMonitoring: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StopTransmissionStateMonitoring: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandSlotInfo = extern struct {
    vtable: *const VTable,
    pub fn getIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Index(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!MobileBroadbandSlotState {
        var _r: MobileBroadbandSlotState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandSlotInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd350b32-882e-542a-b17d-0bb1b49bae9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Index: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *MobileBroadbandSlotState) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandSlotInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getIccId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IccId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandSlotInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "393cb039-ca44-524c-822d-83a3620f0efc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IccId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandSlotInfoChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSlotInfo(self: *@This()) core.HResult!*MobileBroadbandSlotInfo {
        var _r: *MobileBroadbandSlotInfo = undefined;
        const _c = self.vtable.get_SlotInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandSlotInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3158839f-950c-54ce-a48d-ba4529b48f0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SlotInfo: *const fn(self: *anyopaque, _r: **MobileBroadbandSlotInfo) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandSlotManager = extern struct {
    vtable: *const VTable,
    pub fn getSlotInfos(self: *@This()) core.HResult!*IVectorView(MobileBroadbandSlotInfo) {
        var _r: *IVectorView(MobileBroadbandSlotInfo) = undefined;
        const _c = self.vtable.get_SlotInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentSlotIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CurrentSlotIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCurrentSlot(self: *@This(), slotIndex: i32) core.HResult!MobileBroadbandModemStatus {
        var _r: MobileBroadbandModemStatus = undefined;
        const _c = self.vtable.SetCurrentSlot(@ptrCast(self), slotIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCurrentSlotAsync(self: *@This(), slotIndex: i32) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        var _r: *IAsyncOperation(MobileBroadbandModemStatus) = undefined;
        const _c = self.vtable.SetCurrentSlotAsync(@ptrCast(self), slotIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSlotInfoChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandSlotInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SlotInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSlotInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SlotInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentSlotIndexChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandCurrentSlotIndexChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentSlotIndexChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentSlotIndexChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentSlotIndexChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandSlotManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eba07cd6-2019-5f81-a294-cc364a11d0b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SlotInfos: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandSlotInfo)) callconv(.winapi) HRESULT,
        get_CurrentSlotIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        SetCurrentSlot: *const fn(self: *anyopaque, slotIndex: i32, _r: *MobileBroadbandModemStatus) callconv(.winapi) HRESULT,
        SetCurrentSlotAsync: *const fn(self: *anyopaque, slotIndex: i32, _r: **IAsyncOperation(MobileBroadbandModemStatus)) callconv(.winapi) HRESULT,
        add_SlotInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandSlotInfoChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SlotInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentSlotIndexChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandCurrentSlotIndexChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentSlotIndexChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandTransmissionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsTransmitting(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransmitting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandTransmissionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "612e3875-040a-4f99-a4f9-61d7c32da129";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTransmitting: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandUicc = extern struct {
    vtable: *const VTable,
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SimIccId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUiccAppsAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppsResult) {
        var _r: *IAsyncOperation(MobileBroadbandUiccAppsResult) = undefined;
        const _c = self.vtable.GetUiccAppsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandUicc";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e634f691-525a-4ce2-8fce-aa4162579154";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimIccId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetUiccAppsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MobileBroadbandUiccAppsResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandUiccApp = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!UiccAppKind {
        var _r: UiccAppKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRecordDetailsAsync(self: *@This(), uiccFilePath: *IIterable(u32)) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppRecordDetailsResult) {
        var _r: *IAsyncOperation(MobileBroadbandUiccAppRecordDetailsResult) = undefined;
        const _c = self.vtable.GetRecordDetailsAsync(@ptrCast(self), uiccFilePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadRecordAsync(self: *@This(), uiccFilePath: *IIterable(u32), recordIndex: i32) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppReadRecordResult) {
        var _r: *IAsyncOperation(MobileBroadbandUiccAppReadRecordResult) = undefined;
        const _c = self.vtable.ReadRecordAsync(@ptrCast(self), uiccFilePath, recordIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandUiccApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d170556-98a1-43dd-b2ec-50c90cf248df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *UiccAppKind) callconv(.winapi) HRESULT,
        GetRecordDetailsAsync: *const fn(self: *anyopaque, uiccFilePath: *IIterable(u32), _r: **IAsyncOperation(MobileBroadbandUiccAppRecordDetailsResult)) callconv(.winapi) HRESULT,
        ReadRecordAsync: *const fn(self: *anyopaque, uiccFilePath: *IIterable(u32), recordIndex: i32, _r: **IAsyncOperation(MobileBroadbandUiccAppReadRecordResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandUiccAppReadRecordResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        var _r: MobileBroadbandUiccAppOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppReadRecordResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64c95285-358e-47c5-8249-695f383b2bdb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MobileBroadbandUiccAppOperationStatus) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandUiccAppRecordDetailsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        var _r: MobileBroadbandUiccAppOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!UiccAppRecordKind {
        var _r: UiccAppRecordKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RecordCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordSize(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RecordSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadAccessCondition(self: *@This()) core.HResult!UiccAccessCondition {
        var _r: UiccAccessCondition = undefined;
        const _c = self.vtable.get_ReadAccessCondition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWriteAccessCondition(self: *@This()) core.HResult!UiccAccessCondition {
        var _r: UiccAccessCondition = undefined;
        const _c = self.vtable.get_WriteAccessCondition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppRecordDetailsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d919682f-be14-4934-981d-2f57b9ed83e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MobileBroadbandUiccAppOperationStatus) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *UiccAppRecordKind) callconv(.winapi) HRESULT,
        get_RecordCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_RecordSize: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ReadAccessCondition: *const fn(self: *anyopaque, _r: *UiccAccessCondition) callconv(.winapi) HRESULT,
        get_WriteAccessCondition: *const fn(self: *anyopaque, _r: *UiccAccessCondition) callconv(.winapi) HRESULT,
    };
};
pub const IMobileBroadbandUiccAppsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        var _r: MobileBroadbandUiccAppOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUiccApps(self: *@This()) core.HResult!*IVectorView(MobileBroadbandUiccApp) {
        var _r: *IVectorView(MobileBroadbandUiccApp) = undefined;
        const _c = self.vtable.get_UiccApps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IMobileBroadbandUiccAppsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "744930eb-8157-4a41-8494-6bf54c9b1d2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MobileBroadbandUiccAppOperationStatus) callconv(.winapi) HRESULT,
        get_UiccApps: *const fn(self: *anyopaque, _r: **IVectorView(MobileBroadbandUiccApp)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorDataUsageTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getNotificationKind(self: *@This()) core.HResult!NetworkOperatorDataUsageNotificationKind {
        var _r: NetworkOperatorDataUsageNotificationKind = undefined;
        const _c = self.vtable.get_NotificationKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorDataUsageTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50e3126d-a465-4eeb-9317-28a167630cea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NotificationKind: *const fn(self: *anyopaque, _r: *NetworkOperatorDataUsageNotificationKind) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringAccessPointConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ssid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Ssid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPassphrase(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Passphrase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassphrase(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Passphrase(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bcc0284-412e-403d-acc6-b757e34774a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Ssid: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Passphrase: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Passphrase: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringAccessPointConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn IsBandSupported(self: *@This(), band: TetheringWiFiBand) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsBandSupported(@ptrCast(self), band, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsBandSupportedAsync(self: *@This(), band: TetheringWiFiBand) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsBandSupportedAsync(@ptrCast(self), band, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBand(self: *@This()) core.HResult!TetheringWiFiBand {
        var _r: TetheringWiFiBand = undefined;
        const _c = self.vtable.get_Band(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBand(self: *@This(), value: TetheringWiFiBand) core.HResult!void {
        const _c = self.vtable.put_Band(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1809142-7238-59a0-928b-74ab46fd64b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsBandSupported: *const fn(self: *anyopaque, band: TetheringWiFiBand, _r: *bool) callconv(.winapi) HRESULT,
        IsBandSupportedAsync: *const fn(self: *anyopaque, band: TetheringWiFiBand, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_Band: *const fn(self: *anyopaque, _r: *TetheringWiFiBand) callconv(.winapi) HRESULT,
        put_Band: *const fn(self: *anyopaque, value: TetheringWiFiBand) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringAccessPointConfiguration3 = extern struct {
    vtable: *const VTable,
    pub fn IsAuthenticationKindSupported(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAuthenticationKindSupported(@ptrCast(self), authenticationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAuthenticationKindSupportedAsync(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsAuthenticationKindSupportedAsync(@ptrCast(self), authenticationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationKind(self: *@This()) core.HResult!TetheringWiFiAuthenticationKind {
        var _r: TetheringWiFiAuthenticationKind = undefined;
        const _c = self.vtable.get_AuthenticationKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationKind(self: *@This(), value: TetheringWiFiAuthenticationKind) core.HResult!void {
        const _c = self.vtable.put_AuthenticationKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringAccessPointConfiguration3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9bb0081-9eed-5d18-b676-24b74a182b8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsAuthenticationKindSupported: *const fn(self: *anyopaque, authenticationKind: TetheringWiFiAuthenticationKind, _r: *bool) callconv(.winapi) HRESULT,
        IsAuthenticationKindSupportedAsync: *const fn(self: *anyopaque, authenticationKind: TetheringWiFiAuthenticationKind, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_AuthenticationKind: *const fn(self: *anyopaque, _r: *TetheringWiFiAuthenticationKind) callconv(.winapi) HRESULT,
        put_AuthenticationKind: *const fn(self: *anyopaque, value: TetheringWiFiAuthenticationKind) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringClient = extern struct {
    vtable: *const VTable,
    pub fn getMacAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MacAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostNames(self: *@This()) core.HResult!*IVectorView(HostName) {
        var _r: *IVectorView(HostName) = undefined;
        const _c = self.vtable.get_HostNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "709d254c-595f-4847-bb30-646935542918";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MacAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HostNames: *const fn(self: *anyopaque, _r: **IVectorView(HostName)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringClientManager = extern struct {
    vtable: *const VTable,
    pub fn GetTetheringClients(self: *@This()) core.HResult!*IVectorView(NetworkOperatorTetheringClient) {
        var _r: *IVectorView(NetworkOperatorTetheringClient) = undefined;
        const _c = self.vtable.GetTetheringClients(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringClientManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91b14016-8dca-4225-bbed-eef8b8d718d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTetheringClients: *const fn(self: *anyopaque, _r: **IVectorView(NetworkOperatorTetheringClient)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManager = extern struct {
    vtable: *const VTable,
    pub fn getMaxClientCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxClientCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClientCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ClientCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTetheringOperationalState(self: *@This()) core.HResult!TetheringOperationalState {
        var _r: TetheringOperationalState = undefined;
        const _c = self.vtable.get_TetheringOperationalState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentAccessPointConfiguration(self: *@This()) core.HResult!*NetworkOperatorTetheringAccessPointConfiguration {
        var _r: *NetworkOperatorTetheringAccessPointConfiguration = undefined;
        const _c = self.vtable.GetCurrentAccessPointConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConfigureAccessPointAsync(self: *@This(), configuration: *NetworkOperatorTetheringAccessPointConfiguration) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ConfigureAccessPointAsync(@ptrCast(self), configuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartTetheringAsync(self: *@This()) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        var _r: *IAsyncOperation(NetworkOperatorTetheringOperationResult) = undefined;
        const _c = self.vtable.StartTetheringAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopTetheringAsync(self: *@This()) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        var _r: *IAsyncOperation(NetworkOperatorTetheringOperationResult) = undefined;
        const _c = self.vtable.StopTetheringAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d45a8da0-0e86-4d98-8ba4-dd70d4b764d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxClientCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ClientCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TetheringOperationalState: *const fn(self: *anyopaque, _r: *TetheringOperationalState) callconv(.winapi) HRESULT,
        GetCurrentAccessPointConfiguration: *const fn(self: *anyopaque, _r: **NetworkOperatorTetheringAccessPointConfiguration) callconv(.winapi) HRESULT,
        ConfigureAccessPointAsync: *const fn(self: *anyopaque, configuration: *NetworkOperatorTetheringAccessPointConfiguration, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartTetheringAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(NetworkOperatorTetheringOperationResult)) callconv(.winapi) HRESULT,
        StopTetheringAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(NetworkOperatorTetheringOperationResult)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManager2 = extern struct {
    vtable: *const VTable,
    pub fn StartTetheringAsync(self: *@This(), configuration: *NetworkOperatorTetheringSessionAccessPointConfiguration) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        var _r: *IAsyncOperation(NetworkOperatorTetheringOperationResult) = undefined;
        const _c = self.vtable.StartTetheringAsync(@ptrCast(self), configuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c1a4df2-b789-4fea-bc4e-1f2b9e76c1f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartTetheringAsync: *const fn(self: *anyopaque, configuration: *NetworkOperatorTetheringSessionAccessPointConfiguration, _r: **IAsyncOperation(NetworkOperatorTetheringOperationResult)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetTetheringCapability(self: *@This(), networkAccountId: HSTRING) core.HResult!TetheringCapability {
        var _r: TetheringCapability = undefined;
        const _c = self.vtable.GetTetheringCapability(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNetworkAccountId(self: *@This(), networkAccountId: HSTRING) core.HResult!*NetworkOperatorTetheringManager {
        var _r: *NetworkOperatorTetheringManager = undefined;
        const _c = self.vtable.CreateFromNetworkAccountId(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ebcbacc-f8c3-405c-9964-70a1eeabe194";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTetheringCapability: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: *TetheringCapability) callconv(.winapi) HRESULT,
        CreateFromNetworkAccountId: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **NetworkOperatorTetheringManager) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetTetheringCapabilityFromConnectionProfile(self: *@This(), profile: *ConnectionProfile) core.HResult!TetheringCapability {
        var _r: TetheringCapability = undefined;
        const _c = self.vtable.GetTetheringCapabilityFromConnectionProfile(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromConnectionProfile(self: *@This(), profile: *ConnectionProfile) core.HResult!*NetworkOperatorTetheringManager {
        var _r: *NetworkOperatorTetheringManager = undefined;
        const _c = self.vtable.CreateFromConnectionProfile(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b235412-35f0-49e7-9b08-16d278fbaa42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetTetheringCapabilityFromConnectionProfile: *const fn(self: *anyopaque, profile: *ConnectionProfile, _r: *TetheringCapability) callconv(.winapi) HRESULT,
        CreateFromConnectionProfile: *const fn(self: *anyopaque, profile: *ConnectionProfile, _r: **NetworkOperatorTetheringManager) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromConnectionProfile(self: *@This(), profile: *ConnectionProfile, adapter: *NetworkAdapter) core.HResult!*NetworkOperatorTetheringManager {
        var _r: *NetworkOperatorTetheringManager = undefined;
        const _c = self.vtable.CreateFromConnectionProfile(@ptrCast(self), profile, adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8fdaadb6-4af9-4f21-9b58-d53e9f24231e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromConnectionProfile: *const fn(self: *anyopaque, profile: *ConnectionProfile, adapter: *NetworkAdapter, _r: **NetworkOperatorTetheringManager) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn IsNoConnectionsTimeoutEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsNoConnectionsTimeoutEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableNoConnectionsTimeout(self: *@This()) core.HResult!void {
        const _c = self.vtable.EnableNoConnectionsTimeout(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnableNoConnectionsTimeoutAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.EnableNoConnectionsTimeoutAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableNoConnectionsTimeout(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableNoConnectionsTimeout(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DisableNoConnectionsTimeoutAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DisableNoConnectionsTimeoutAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3b9f9d0-ebff-46a4-a847-d663d8b0977e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsNoConnectionsTimeoutEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        EnableNoConnectionsTimeout: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        EnableNoConnectionsTimeoutAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DisableNoConnectionsTimeout: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DisableNoConnectionsTimeoutAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!TetheringOperationStatus {
        var _r: TetheringOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdditionalErrorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdditionalErrorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ebd203a1-01ba-476d-b4b3-bf3d12c8f80c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *TetheringOperationStatus) callconv(.winapi) HRESULT,
        get_AdditionalErrorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const INetworkOperatorTetheringSessionAccessPointConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ssid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Ssid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPassphrase(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Passphrase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassphrase(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Passphrase(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsBandSupported(self: *@This(), band: TetheringWiFiBand) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsBandSupported(@ptrCast(self), band, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsBandSupportedAsync(self: *@This(), band: TetheringWiFiBand) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsBandSupportedAsync(@ptrCast(self), band, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBand(self: *@This()) core.HResult!TetheringWiFiBand {
        var _r: TetheringWiFiBand = undefined;
        const _c = self.vtable.get_Band(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBand(self: *@This(), value: TetheringWiFiBand) core.HResult!void {
        const _c = self.vtable.put_Band(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsAuthenticationKindSupported(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAuthenticationKindSupported(@ptrCast(self), authenticationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAuthenticationKindSupportedAsync(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsAuthenticationKindSupportedAsync(@ptrCast(self), authenticationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationKind(self: *@This()) core.HResult!TetheringWiFiAuthenticationKind {
        var _r: TetheringWiFiAuthenticationKind = undefined;
        const _c = self.vtable.get_AuthenticationKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationKind(self: *@This(), value: TetheringWiFiAuthenticationKind) core.HResult!void {
        const _c = self.vtable.put_AuthenticationKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPerformancePriority(self: *@This()) core.HResult!TetheringWiFiPerformancePriority {
        var _r: TetheringWiFiPerformancePriority = undefined;
        const _c = self.vtable.get_PerformancePriority(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPerformancePriority(self: *@This(), value: TetheringWiFiPerformancePriority) core.HResult!void {
        const _c = self.vtable.put_PerformancePriority(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.INetworkOperatorTetheringSessionAccessPointConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bcc1104-34b7-5212-858c-59d97404920a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ssid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Ssid: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Passphrase: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Passphrase: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        IsBandSupported: *const fn(self: *anyopaque, band: TetheringWiFiBand, _r: *bool) callconv(.winapi) HRESULT,
        IsBandSupportedAsync: *const fn(self: *anyopaque, band: TetheringWiFiBand, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_Band: *const fn(self: *anyopaque, _r: *TetheringWiFiBand) callconv(.winapi) HRESULT,
        put_Band: *const fn(self: *anyopaque, value: TetheringWiFiBand) callconv(.winapi) HRESULT,
        IsAuthenticationKindSupported: *const fn(self: *anyopaque, authenticationKind: TetheringWiFiAuthenticationKind, _r: *bool) callconv(.winapi) HRESULT,
        IsAuthenticationKindSupportedAsync: *const fn(self: *anyopaque, authenticationKind: TetheringWiFiAuthenticationKind, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        get_AuthenticationKind: *const fn(self: *anyopaque, _r: *TetheringWiFiAuthenticationKind) callconv(.winapi) HRESULT,
        put_AuthenticationKind: *const fn(self: *anyopaque, value: TetheringWiFiAuthenticationKind) callconv(.winapi) HRESULT,
        get_PerformancePriority: *const fn(self: *anyopaque, _r: *TetheringWiFiPerformancePriority) callconv(.winapi) HRESULT,
        put_PerformancePriority: *const fn(self: *anyopaque, value: TetheringWiFiPerformancePriority) callconv(.winapi) HRESULT,
    };
};
pub const IProvisionFromXmlDocumentResults = extern struct {
    vtable: *const VTable,
    pub fn getAllElementsProvisioned(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllElementsProvisioned(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProvisionResultsXml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProvisionResultsXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IProvisionFromXmlDocumentResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217700e0-8203-11df-adb9-f4ce462d9137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllElementsProvisioned: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ProvisionResultsXml: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProvisionedProfile = extern struct {
    vtable: *const VTable,
    pub fn UpdateCost(self: *@This(), value: NetworkCostType) core.HResult!void {
        const _c = self.vtable.UpdateCost(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateUsage(self: *@This(), value: ProfileUsage) core.HResult!void {
        const _c = self.vtable.UpdateUsage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IProvisionedProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217700e0-8202-11df-adb9-f4ce462d9137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UpdateCost: *const fn(self: *anyopaque, value: NetworkCostType) callconv(.winapi) HRESULT,
        UpdateUsage: *const fn(self: *anyopaque, value: ProfileUsage) callconv(.winapi) HRESULT,
    };
};
pub const IProvisioningAgent = extern struct {
    vtable: *const VTable,
    pub fn ProvisionFromXmlDocumentAsync(self: *@This(), provisioningXmlDocument: HSTRING) core.HResult!*IAsyncOperation(ProvisionFromXmlDocumentResults) {
        var _r: *IAsyncOperation(ProvisionFromXmlDocumentResults) = undefined;
        const _c = self.vtable.ProvisionFromXmlDocumentAsync(@ptrCast(self), provisioningXmlDocument, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProvisionedProfile(self: *@This(), mediaType: ProfileMediaType, profileName: HSTRING) core.HResult!*ProvisionedProfile {
        var _r: *ProvisionedProfile = undefined;
        const _c = self.vtable.GetProvisionedProfile(@ptrCast(self), mediaType, profileName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IProvisioningAgent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217700e0-8201-11df-adb9-f4ce462d9137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ProvisionFromXmlDocumentAsync: *const fn(self: *anyopaque, provisioningXmlDocument: HSTRING, _r: **IAsyncOperation(ProvisionFromXmlDocumentResults)) callconv(.winapi) HRESULT,
        GetProvisionedProfile: *const fn(self: *anyopaque, mediaType: ProfileMediaType, profileName: HSTRING, _r: **ProvisionedProfile) callconv(.winapi) HRESULT,
    };
};
pub const IProvisioningAgentStaticMethods = extern struct {
    vtable: *const VTable,
    pub fn CreateFromNetworkAccountId(self: *@This(), networkAccountId: HSTRING) core.HResult!*ProvisioningAgent {
        var _r: *ProvisioningAgent = undefined;
        const _c = self.vtable.CreateFromNetworkAccountId(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IProvisioningAgentStaticMethods";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217700e0-8101-11df-adb9-f4ce462d9137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromNetworkAccountId: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **ProvisioningAgent) callconv(.winapi) HRESULT,
    };
};
pub const ITetheringEntitlementCheckTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AllowTethering(self: *@This()) core.HResult!void {
        const _c = self.vtable.AllowTethering(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DenyTethering(self: *@This(), entitlementFailureReason: HSTRING) core.HResult!void {
        const _c = self.vtable.DenyTethering(@ptrCast(self), entitlementFailureReason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ITetheringEntitlementCheckTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03c65e9d-5926-41f3-a94e-b50926fc421b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        AllowTethering: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DenyTethering: *const fn(self: *anyopaque, entitlementFailureReason: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUssdMessage = extern struct {
    vtable: *const VTable,
    pub fn getDataCodingScheme(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_DataCodingScheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataCodingScheme(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.put_DataCodingScheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPayload(self: *@This()) core.HResult![*]u8 {
        var _r: [*]u8 = undefined;
        const _c = self.vtable.GetPayload(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPayload(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetPayload(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPayloadAsText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PayloadAsText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPayloadAsText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PayloadAsText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IUssdMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9acf82-2004-4d5d-bf81-2aba1b4be4a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataCodingScheme: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        put_DataCodingScheme: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        GetPayload: *const fn(self: *anyopaque, _r: *[*]u8) callconv(.winapi) HRESULT,
        SetPayload: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        get_PayloadAsText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PayloadAsText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUssdMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMessage(self: *@This(), messageText: HSTRING) core.HResult!*UssdMessage {
        var _r: *UssdMessage = undefined;
        const _c = self.vtable.CreateMessage(@ptrCast(self), messageText, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IUssdMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9acf82-1003-4d5d-bf81-2aba1b4be4a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMessage: *const fn(self: *anyopaque, messageText: HSTRING, _r: **UssdMessage) callconv(.winapi) HRESULT,
    };
};
pub const IUssdReply = extern struct {
    vtable: *const VTable,
    pub fn getResultCode(self: *@This()) core.HResult!UssdResultCode {
        var _r: UssdResultCode = undefined;
        const _c = self.vtable.get_ResultCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*UssdMessage {
        var _r: *UssdMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IUssdReply";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9acf82-2005-4d5d-bf81-2aba1b4be4a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResultCode: *const fn(self: *anyopaque, _r: *UssdResultCode) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **UssdMessage) callconv(.winapi) HRESULT,
    };
};
pub const IUssdSession = extern struct {
    vtable: *const VTable,
    pub fn SendMessageAndGetReplyAsync(self: *@This(), message: *UssdMessage) core.HResult!*IAsyncOperation(UssdReply) {
        var _r: *IAsyncOperation(UssdReply) = undefined;
        const _c = self.vtable.SendMessageAndGetReplyAsync(@ptrCast(self), message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const _c = self.vtable.Close(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IUssdSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9acf82-2002-4d5d-bf81-2aba1b4be4a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendMessageAndGetReplyAsync: *const fn(self: *anyopaque, message: *UssdMessage, _r: **IAsyncOperation(UssdReply)) callconv(.winapi) HRESULT,
        Close: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUssdSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromNetworkAccountId(self: *@This(), networkAccountId: HSTRING) core.HResult!*UssdSession {
        var _r: *UssdSession = undefined;
        const _c = self.vtable.CreateFromNetworkAccountId(@ptrCast(self), networkAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromNetworkInterfaceId(self: *@This(), networkInterfaceId: HSTRING) core.HResult!*UssdSession {
        var _r: *UssdSession = undefined;
        const _c = self.vtable.CreateFromNetworkInterfaceId(@ptrCast(self), networkInterfaceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.IUssdSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f9acf82-1001-4d5d-bf81-2aba1b4be4a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromNetworkAccountId: *const fn(self: *anyopaque, networkAccountId: HSTRING, _r: **UssdSession) callconv(.winapi) HRESULT,
        CreateFromNetworkInterfaceId: *const fn(self: *anyopaque, networkInterfaceId: HSTRING, _r: **UssdSession) callconv(.winapi) HRESULT,
    };
};
pub const KnownCSimFilePaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEFSpn() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownCSimFilePathsStaticsCache.get();
        return try _f.getEFSpn();
    }
    pub fn getGid1() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownCSimFilePathsStaticsCache.get();
        return try _f.getGid1();
    }
    pub fn getGid2() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownCSimFilePathsStaticsCache.get();
        return try _f.getGid2();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.KnownCSimFilePaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownCSimFilePathsStaticsCache: FactoryCache(IKnownCSimFilePathsStatics, RUNTIME_NAME) = .{};
};
pub const KnownRuimFilePaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEFSpn() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownRuimFilePathsStaticsCache.get();
        return try _f.getEFSpn();
    }
    pub fn getGid1() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownRuimFilePathsStaticsCache.get();
        return try _f.getGid1();
    }
    pub fn getGid2() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownRuimFilePathsStaticsCache.get();
        return try _f.getGid2();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.KnownRuimFilePaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownRuimFilePathsStaticsCache: FactoryCache(IKnownRuimFilePathsStatics, RUNTIME_NAME) = .{};
};
pub const KnownSimFilePaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEFOns() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownSimFilePathsStaticsCache.get();
        return try _f.getEFOns();
    }
    pub fn getEFSpn() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownSimFilePathsStaticsCache.get();
        return try _f.getEFSpn();
    }
    pub fn getGid1() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownSimFilePathsStaticsCache.get();
        return try _f.getGid1();
    }
    pub fn getGid2() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownSimFilePathsStaticsCache.get();
        return try _f.getGid2();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.KnownSimFilePaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownSimFilePathsStaticsCache: FactoryCache(IKnownSimFilePathsStatics, RUNTIME_NAME) = .{};
};
pub const KnownUSimFilePaths = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEFSpn() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownUSimFilePathsStaticsCache.get();
        return try _f.getEFSpn();
    }
    pub fn getEFOpl() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownUSimFilePathsStaticsCache.get();
        return try _f.getEFOpl();
    }
    pub fn getEFPnn() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownUSimFilePathsStaticsCache.get();
        return try _f.getEFPnn();
    }
    pub fn getGid1() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownUSimFilePathsStaticsCache.get();
        return try _f.getGid1();
    }
    pub fn getGid2() core.HResult!*IVectorView(u32) {
        const _f = @This().IKnownUSimFilePathsStaticsCache.get();
        return try _f.getGid2();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.KnownUSimFilePaths";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownUSimFilePathsStaticsCache: FactoryCache(IKnownUSimFilePathsStatics, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandAccount = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandAccount = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*Guid {
        const this: *IMobileBroadbandAccount = @ptrCast(self);
        return try this.getServiceProviderGuid();
    }
    pub fn getServiceProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandAccount = @ptrCast(self);
        return try this.getServiceProviderName();
    }
    pub fn getCurrentNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        const this: *IMobileBroadbandAccount = @ptrCast(self);
        return try this.getCurrentNetwork();
    }
    pub fn getCurrentDeviceInformation(self: *@This()) core.HResult!*MobileBroadbandDeviceInformation {
        const this: *IMobileBroadbandAccount = @ptrCast(self);
        return try this.getCurrentDeviceInformation();
    }
    pub fn GetConnectionProfiles(self: *@This()) core.HResult!*IVectorView(ConnectionProfile) {
        var this: ?*IMobileBroadbandAccount2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandAccount2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConnectionProfiles();
    }
    pub fn getAccountExperienceUrl(self: *@This()) core.HResult!*Uri {
        var this: ?*IMobileBroadbandAccount3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandAccount3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccountExperienceUrl();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAvailableNetworkAccountIds() core.HResult!*IVectorView(HSTRING) {
        const _f = @This().IMobileBroadbandAccountStaticsCache.get();
        return try _f.getAvailableNetworkAccountIds();
    }
    pub fn CreateFromNetworkAccountId(networkAccountId: HSTRING) core.HResult!*MobileBroadbandAccount {
        const _f = @This().IMobileBroadbandAccountStaticsCache.get();
        return try _f.CreateFromNetworkAccountId(networkAccountId);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandAccount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandAccount.GUID;
    pub const IID: Guid = IMobileBroadbandAccount.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandAccount.SIGNATURE);
    var _IMobileBroadbandAccountStaticsCache: FactoryCache(IMobileBroadbandAccountStatics, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandAccountEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandAccountEventArgs = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandAccountEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandAccountEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandAccountEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandAccountEventArgs.SIGNATURE);
};
pub const MobileBroadbandAccountUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandAccountUpdatedEventArgs = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub fn getHasDeviceInformationChanged(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandAccountUpdatedEventArgs = @ptrCast(self);
        return try this.getHasDeviceInformationChanged();
    }
    pub fn getHasNetworkChanged(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandAccountUpdatedEventArgs = @ptrCast(self);
        return try this.getHasNetworkChanged();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandAccountUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandAccountUpdatedEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandAccountUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandAccountUpdatedEventArgs.SIGNATURE);
};
pub const MobileBroadbandAccountWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAccountAdded(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.addAccountAdded(handler);
    }
    pub fn removeAccountAdded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.removeAccountAdded(cookie);
    }
    pub fn addAccountUpdated(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.addAccountUpdated(handler);
    }
    pub fn removeAccountUpdated(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.removeAccountUpdated(cookie);
    }
    pub fn addAccountRemoved(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,MobileBroadbandAccountEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.addAccountRemoved(handler);
    }
    pub fn removeAccountRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.removeAccountRemoved(cookie);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(cookie);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(MobileBroadbandAccountWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.removeStopped(cookie);
    }
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandAccountWatcherStatus {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandAccountWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMobileBroadbandAccountWatcher.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandAccountWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandAccountWatcher.GUID;
    pub const IID: Guid = IMobileBroadbandAccountWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandAccountWatcher.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandAccountWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopped = 3,
    Aborted = 4,
};
pub const MobileBroadbandAntennaSar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAntennaIndex(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandAntennaSar = @ptrCast(self);
        return try this.getAntennaIndex();
    }
    pub fn getSarBackoffIndex(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandAntennaSar = @ptrCast(self);
        return try this.getSarBackoffIndex();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWithIndex(antennaIndex: i32, sarBackoffIndex: i32) core.HResult!*MobileBroadbandAntennaSar {
        const _f = @This().IMobileBroadbandAntennaSarFactoryCache.get();
        return try _f.CreateWithIndex(antennaIndex, sarBackoffIndex);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandAntennaSar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandAntennaSar.GUID;
    pub const IID: Guid = IMobileBroadbandAntennaSar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandAntennaSar.SIGNATURE);
    var _IMobileBroadbandAntennaSarFactoryCache: FactoryCache(IMobileBroadbandAntennaSarFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandCellCdma = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBaseStationId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getBaseStationId();
    }
    pub fn getBaseStationPNCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getBaseStationPNCode();
    }
    pub fn getBaseStationLatitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getBaseStationLatitude();
    }
    pub fn getBaseStationLongitude(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getBaseStationLongitude();
    }
    pub fn getBaseStationLastBroadcastGpsTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getBaseStationLastBroadcastGpsTime();
    }
    pub fn getNetworkId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getNetworkId();
    }
    pub fn getPilotSignalStrengthInDB(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getPilotSignalStrengthInDB();
    }
    pub fn getSystemId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellCdma = @ptrCast(self);
        return try this.getSystemId();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellCdma";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellCdma.GUID;
    pub const IID: Guid = IMobileBroadbandCellCdma.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellCdma.SIGNATURE);
};
pub const MobileBroadbandCellGsm = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBaseStationId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getBaseStationId();
    }
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getCellId();
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getChannelNumber();
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getLocationAreaCode();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getReceivedSignalStrengthInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getReceivedSignalStrengthInDBm();
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellGsm = @ptrCast(self);
        return try this.getTimingAdvanceInBitPeriods();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellGsm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellGsm.GUID;
    pub const IID: Guid = IMobileBroadbandCellGsm.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellGsm.SIGNATURE);
};
pub const MobileBroadbandCellLte = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getCellId();
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getChannelNumber();
    }
    pub fn getPhysicalCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getPhysicalCellId();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getReferenceSignalReceivedPowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getReferenceSignalReceivedPowerInDBm();
    }
    pub fn getReferenceSignalReceivedQualityInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getReferenceSignalReceivedQualityInDBm();
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getTimingAdvanceInBitPeriods();
    }
    pub fn getTrackingAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellLte = @ptrCast(self);
        return try this.getTrackingAreaCode();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellLte";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellLte.GUID;
    pub const IID: Guid = IMobileBroadbandCellLte.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellLte.SIGNATURE);
};
pub const MobileBroadbandCellNR = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i64) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getCellId();
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getChannelNumber();
    }
    pub fn getPhysicalCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getPhysicalCellId();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getReferenceSignalReceivedPowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getReferenceSignalReceivedPowerInDBm();
    }
    pub fn getReferenceSignalReceivedQualityInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getReferenceSignalReceivedQualityInDBm();
    }
    pub fn getTimingAdvanceInNanoseconds(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getTimingAdvanceInNanoseconds();
    }
    pub fn getTrackingAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getTrackingAreaCode();
    }
    pub fn getSignalToNoiseRatioInDB(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellNR = @ptrCast(self);
        return try this.getSignalToNoiseRatioInDB();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellNR";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellNR.GUID;
    pub const IID: Guid = IMobileBroadbandCellNR.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellNR.SIGNATURE);
};
pub const MobileBroadbandCellTdscdma = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getCellId();
    }
    pub fn getCellParameterId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getCellParameterId();
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getChannelNumber();
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getLocationAreaCode();
    }
    pub fn getPathLossInDB(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getPathLossInDB();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getReceivedSignalCodePowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getReceivedSignalCodePowerInDBm();
    }
    pub fn getTimingAdvanceInBitPeriods(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellTdscdma = @ptrCast(self);
        return try this.getTimingAdvanceInBitPeriods();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellTdscdma";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellTdscdma.GUID;
    pub const IID: Guid = IMobileBroadbandCellTdscdma.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellTdscdma.SIGNATURE);
};
pub const MobileBroadbandCellUmts = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCellId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getCellId();
    }
    pub fn getChannelNumber(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getChannelNumber();
    }
    pub fn getLocationAreaCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getLocationAreaCode();
    }
    pub fn getPathLossInDB(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getPathLossInDB();
    }
    pub fn getPrimaryScramblingCode(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getPrimaryScramblingCode();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn getReceivedSignalCodePowerInDBm(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getReceivedSignalCodePowerInDBm();
    }
    pub fn getSignalToNoiseRatioInDB(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IMobileBroadbandCellUmts = @ptrCast(self);
        return try this.getSignalToNoiseRatioInDB();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellUmts";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellUmts.GUID;
    pub const IID: Guid = IMobileBroadbandCellUmts.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellUmts.SIGNATURE);
};
pub const MobileBroadbandCellsInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNeighboringCellsCdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellCdma) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getNeighboringCellsCdma();
    }
    pub fn getNeighboringCellsGsm(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellGsm) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getNeighboringCellsGsm();
    }
    pub fn getNeighboringCellsLte(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellLte) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getNeighboringCellsLte();
    }
    pub fn getNeighboringCellsTdscdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellTdscdma) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getNeighboringCellsTdscdma();
    }
    pub fn getNeighboringCellsUmts(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellUmts) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getNeighboringCellsUmts();
    }
    pub fn getServingCellsCdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellCdma) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getServingCellsCdma();
    }
    pub fn getServingCellsGsm(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellGsm) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getServingCellsGsm();
    }
    pub fn getServingCellsLte(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellLte) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getServingCellsLte();
    }
    pub fn getServingCellsTdscdma(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellTdscdma) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getServingCellsTdscdma();
    }
    pub fn getServingCellsUmts(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellUmts) {
        const this: *IMobileBroadbandCellsInfo = @ptrCast(self);
        return try this.getServingCellsUmts();
    }
    pub fn getNeighboringCellsNR(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellNR) {
        var this: ?*IMobileBroadbandCellsInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandCellsInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNeighboringCellsNR();
    }
    pub fn getServingCellsNR(self: *@This()) core.HResult!*IVectorView(MobileBroadbandCellNR) {
        var this: ?*IMobileBroadbandCellsInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandCellsInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServingCellsNR();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCellsInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCellsInfo.GUID;
    pub const IID: Guid = IMobileBroadbandCellsInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCellsInfo.SIGNATURE);
};
pub const MobileBroadbandCurrentSlotIndexChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentSlotIndex(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandCurrentSlotIndexChangedEventArgs = @ptrCast(self);
        return try this.getCurrentSlotIndex();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandCurrentSlotIndexChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandCurrentSlotIndexChangedEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandCurrentSlotIndexChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandCurrentSlotIndexChangedEventArgs.SIGNATURE);
};
pub const MobileBroadbandDeviceInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkDeviceStatus(self: *@This()) core.HResult!NetworkDeviceStatus {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getNetworkDeviceStatus();
    }
    pub fn getManufacturer(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getManufacturer();
    }
    pub fn getModel(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getModel();
    }
    pub fn getFirmwareInformation(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getFirmwareInformation();
    }
    pub fn getCellularClass(self: *@This()) core.HResult!CellularClass {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getCellularClass();
    }
    pub fn getDataClasses(self: *@This()) core.HResult!DataClasses {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getDataClasses();
    }
    pub fn getCustomDataClass(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getCustomDataClass();
    }
    pub fn getMobileEquipmentId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getMobileEquipmentId();
    }
    pub fn getTelephoneNumbers(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getTelephoneNumbers();
    }
    pub fn getSubscriberId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getSubscriberId();
    }
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getSimIccId();
    }
    pub fn getDeviceType(self: *@This()) core.HResult!MobileBroadbandDeviceType {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getDeviceType();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCurrentRadioState(self: *@This()) core.HResult!MobileBroadbandRadioState {
        const this: *IMobileBroadbandDeviceInformation = @ptrCast(self);
        return try this.getCurrentRadioState();
    }
    pub fn getPinManager(self: *@This()) core.HResult!*MobileBroadbandPinManager {
        var this: ?*IMobileBroadbandDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPinManager();
    }
    pub fn getRevision(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRevision();
    }
    pub fn getSerialNumber(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandDeviceInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSerialNumber();
    }
    pub fn getSimSpn(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandDeviceInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimSpn();
    }
    pub fn getSimPnn(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandDeviceInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimPnn();
    }
    pub fn getSimGid1(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandDeviceInformation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimGid1();
    }
    pub fn getSlotManager(self: *@This()) core.HResult!*MobileBroadbandSlotManager {
        var this: ?*IMobileBroadbandDeviceInformation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceInformation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSlotManager();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceInformation.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceInformation.SIGNATURE);
};
pub const MobileBroadbandDeviceService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IMobileBroadbandDeviceService = @ptrCast(self);
        return try this.getDeviceServiceId();
    }
    pub fn getSupportedCommands(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IMobileBroadbandDeviceService = @ptrCast(self);
        return try this.getSupportedCommands();
    }
    pub fn OpenDataSession(self: *@This()) core.HResult!*MobileBroadbandDeviceServiceDataSession {
        const this: *IMobileBroadbandDeviceService = @ptrCast(self);
        return try this.OpenDataSession();
    }
    pub fn OpenCommandSession(self: *@This()) core.HResult!*MobileBroadbandDeviceServiceCommandSession {
        const this: *IMobileBroadbandDeviceService = @ptrCast(self);
        return try this.OpenCommandSession();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceService.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceService.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceCommandEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceServiceCommandEventArgs = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IMobileBroadbandDeviceServiceCommandEventArgs = @ptrCast(self);
        return try this.getDeviceServiceId();
    }
    pub fn getEventId(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandDeviceServiceCommandEventArgs = @ptrCast(self);
        return try this.getEventId();
    }
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandDeviceServiceCommandEventArgs = @ptrCast(self);
        return try this.getReceivedData();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceCommandEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceCommandEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceCommandEventArgs.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceCommandResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatusCode(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandDeviceServiceCommandResult = @ptrCast(self);
        return try this.getStatusCode();
    }
    pub fn getResponseData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandDeviceServiceCommandResult = @ptrCast(self);
        return try this.getResponseData();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceCommandResult.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceCommandResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceCommandResult.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceCommandSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendQueryCommandAsync(self: *@This(), commandId: u32, data: *IBuffer) core.HResult!*IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) {
        const this: *IMobileBroadbandDeviceServiceCommandSession = @ptrCast(self);
        return try this.SendQueryCommandAsync(commandId, data);
    }
    pub fn SendSetCommandAsync(self: *@This(), commandId: u32, data: *IBuffer) core.HResult!*IAsyncOperation(MobileBroadbandDeviceServiceCommandResult) {
        const this: *IMobileBroadbandDeviceServiceCommandSession = @ptrCast(self);
        return try this.SendSetCommandAsync(commandId, data);
    }
    pub fn CloseSession(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandDeviceServiceCommandSession = @ptrCast(self);
        return try this.CloseSession();
    }
    pub fn addCommandReceived(self: *@This(), handler: *TypedEventHandler(MobileBroadbandDeviceServiceCommandSession,MobileBroadbandDeviceServiceCommandEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMobileBroadbandDeviceServiceCommandSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceServiceCommandSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCommandReceived(handler);
    }
    pub fn removeCommandReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMobileBroadbandDeviceServiceCommandSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceServiceCommandSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCommandReceived(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceCommandSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceCommandSession.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceCommandSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceCommandSession.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandDeviceServiceDataReceivedEventArgs = @ptrCast(self);
        return try this.getReceivedData();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceDataReceivedEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceDataReceivedEventArgs.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceDataSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn WriteDataAsync(self: *@This(), value: *IBuffer) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandDeviceServiceDataSession = @ptrCast(self);
        return try this.WriteDataAsync(value);
    }
    pub fn CloseSession(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandDeviceServiceDataSession = @ptrCast(self);
        return try this.CloseSession();
    }
    pub fn addDataReceived(self: *@This(), eventHandler: *TypedEventHandler(MobileBroadbandDeviceServiceDataSession,MobileBroadbandDeviceServiceDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandDeviceServiceDataSession = @ptrCast(self);
        return try this.addDataReceived(eventHandler);
    }
    pub fn removeDataReceived(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandDeviceServiceDataSession = @ptrCast(self);
        return try this.removeDataReceived(eventCookie);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceDataSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceDataSession.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceDataSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceDataSession.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IMobileBroadbandDeviceServiceInformation = @ptrCast(self);
        return try this.getDeviceServiceId();
    }
    pub fn getIsDataReadSupported(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandDeviceServiceInformation = @ptrCast(self);
        return try this.getIsDataReadSupported();
    }
    pub fn getIsDataWriteSupported(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandDeviceServiceInformation = @ptrCast(self);
        return try this.getIsDataWriteSupported();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceInformation.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceInformation.SIGNATURE);
};
pub const MobileBroadbandDeviceServiceTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandDeviceServiceTriggerDetails = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getDeviceServiceId(self: *@This()) core.HResult!*Guid {
        const this: *IMobileBroadbandDeviceServiceTriggerDetails = @ptrCast(self);
        return try this.getDeviceServiceId();
    }
    pub fn getReceivedData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandDeviceServiceTriggerDetails = @ptrCast(self);
        return try this.getReceivedData();
    }
    pub fn getEventId(self: *@This()) core.HResult!u32 {
        var this: ?*IMobileBroadbandDeviceServiceTriggerDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandDeviceServiceTriggerDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEventId();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandDeviceServiceTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandDeviceServiceTriggerDetails.GUID;
    pub const IID: Guid = IMobileBroadbandDeviceServiceTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandDeviceServiceTriggerDetails.SIGNATURE);
};
pub const MobileBroadbandDeviceType = enum(i32) {
    Unknown = 0,
    Embedded = 1,
    Removable = 2,
    Remote = 3,
};
pub const MobileBroadbandModem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentAccount(self: *@This()) core.HResult!*MobileBroadbandAccount {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getCurrentAccount();
    }
    pub fn getDeviceInformation(self: *@This()) core.HResult!*MobileBroadbandDeviceInformation {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getDeviceInformation();
    }
    pub fn getMaxDeviceServiceCommandSizeInBytes(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getMaxDeviceServiceCommandSizeInBytes();
    }
    pub fn getMaxDeviceServiceDataSizeInBytes(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getMaxDeviceServiceDataSizeInBytes();
    }
    pub fn getDeviceServices(self: *@This()) core.HResult!*IVectorView(MobileBroadbandDeviceServiceInformation) {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getDeviceServices();
    }
    pub fn GetDeviceService(self: *@This(), deviceServiceId: *Guid) core.HResult!*MobileBroadbandDeviceService {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.GetDeviceService(deviceServiceId);
    }
    pub fn getIsResetSupported(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getIsResetSupported();
    }
    pub fn ResetAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.ResetAsync();
    }
    pub fn GetCurrentConfigurationAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandModemConfiguration) {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.GetCurrentConfigurationAsync();
    }
    pub fn getCurrentNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        const this: *IMobileBroadbandModem = @ptrCast(self);
        return try this.getCurrentNetwork();
    }
    pub fn GetIsPassthroughEnabledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMobileBroadbandModem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsPassthroughEnabledAsync();
    }
    pub fn SetIsPassthroughEnabledAsync(self: *@This(), value: bool) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        var this: ?*IMobileBroadbandModem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetIsPassthroughEnabledAsync(value);
    }
    pub fn TryGetPcoAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandPco) {
        var this: ?*IMobileBroadbandModem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetPcoAsync();
    }
    pub fn getIsInEmergencyCallMode(self: *@This()) core.HResult!bool {
        var this: ?*IMobileBroadbandModem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsInEmergencyCallMode();
    }
    pub fn addIsInEmergencyCallModeChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandModem,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMobileBroadbandModem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addIsInEmergencyCallModeChanged(handler);
    }
    pub fn removeIsInEmergencyCallModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMobileBroadbandModem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeIsInEmergencyCallModeChanged(token);
    }
    pub fn SetIsPassthroughEnabledAsyncWithSlotindex(self: *@This(), value: bool, slotindex: i32) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        var this: ?*IMobileBroadbandModem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetIsPassthroughEnabledAsyncWithSlotindex(value, slotindex);
    }
    pub fn GetIsPassthroughEnabledAsyncWithSlotindex(self: *@This(), slotindex: i32) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMobileBroadbandModem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsPassthroughEnabledAsyncWithSlotindex(slotindex);
    }
    pub fn SetIsPassthroughEnabled(self: *@This(), value: bool, slotindex: i32) core.HResult!MobileBroadbandModemStatus {
        var this: ?*IMobileBroadbandModem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetIsPassthroughEnabled(value, slotindex);
    }
    pub fn GetIsPassthroughEnabled(self: *@This(), slotindex: i32) core.HResult!bool {
        var this: ?*IMobileBroadbandModem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIsPassthroughEnabled(slotindex);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IMobileBroadbandModemStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn FromId(deviceId: HSTRING) core.HResult!*MobileBroadbandModem {
        const _f = @This().IMobileBroadbandModemStaticsCache.get();
        return try _f.FromId(deviceId);
    }
    pub fn GetDefault() core.HResult!*MobileBroadbandModem {
        const _f = @This().IMobileBroadbandModemStaticsCache.get();
        return try _f.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandModem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandModem.GUID;
    pub const IID: Guid = IMobileBroadbandModem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandModem.SIGNATURE);
    var _IMobileBroadbandModemStaticsCache: FactoryCache(IMobileBroadbandModemStatics, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandModemConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUicc(self: *@This()) core.HResult!*MobileBroadbandUicc {
        const this: *IMobileBroadbandModemConfiguration = @ptrCast(self);
        return try this.getUicc();
    }
    pub fn getHomeProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandModemConfiguration = @ptrCast(self);
        return try this.getHomeProviderId();
    }
    pub fn getHomeProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandModemConfiguration = @ptrCast(self);
        return try this.getHomeProviderName();
    }
    pub fn getSarManager(self: *@This()) core.HResult!*MobileBroadbandSarManager {
        var this: ?*IMobileBroadbandModemConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandModemConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSarManager();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandModemConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandModemConfiguration.GUID;
    pub const IID: Guid = IMobileBroadbandModemConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandModemConfiguration.SIGNATURE);
};
pub const MobileBroadbandModemIsolation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddAllowedHost(self: *@This(), host: *HostName) core.HResult!void {
        const this: *IMobileBroadbandModemIsolation = @ptrCast(self);
        return try this.AddAllowedHost(host);
    }
    pub fn AddAllowedHostRange(self: *@This(), first: *HostName, last: *HostName) core.HResult!void {
        const this: *IMobileBroadbandModemIsolation = @ptrCast(self);
        return try this.AddAllowedHostRange(first, last);
    }
    pub fn ApplyConfigurationAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandModemIsolation = @ptrCast(self);
        return try this.ApplyConfigurationAsync();
    }
    pub fn ClearConfigurationAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandModemIsolation = @ptrCast(self);
        return try this.ClearConfigurationAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(modemDeviceId: HSTRING, ruleGroupId: HSTRING) core.HResult!*MobileBroadbandModemIsolation {
        const _f = @This().IMobileBroadbandModemIsolationFactoryCache.get();
        return try _f.Create(modemDeviceId, ruleGroupId);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandModemIsolation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandModemIsolation.GUID;
    pub const IID: Guid = IMobileBroadbandModemIsolation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandModemIsolation.SIGNATURE);
    var _IMobileBroadbandModemIsolationFactoryCache: FactoryCache(IMobileBroadbandModemIsolationFactory, RUNTIME_NAME) = .{};
};
pub const MobileBroadbandModemStatus = enum(i32) {
    Success = 0,
    OtherFailure = 1,
    Busy = 2,
    NoDeviceSupport = 3,
};
pub const MobileBroadbandNetwork = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getNetworkAdapter();
    }
    pub fn getNetworkRegistrationState(self: *@This()) core.HResult!NetworkRegistrationState {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getNetworkRegistrationState();
    }
    pub fn getRegistrationNetworkError(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getRegistrationNetworkError();
    }
    pub fn getPacketAttachNetworkError(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getPacketAttachNetworkError();
    }
    pub fn getActivationNetworkError(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getActivationNetworkError();
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getAccessPointName();
    }
    pub fn getRegisteredDataClass(self: *@This()) core.HResult!DataClasses {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getRegisteredDataClass();
    }
    pub fn getRegisteredProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getRegisteredProviderId();
    }
    pub fn getRegisteredProviderName(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.getRegisteredProviderName();
    }
    pub fn ShowConnectionUI(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandNetwork = @ptrCast(self);
        return try this.ShowConnectionUI();
    }
    pub fn GetVoiceCallSupportAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMobileBroadbandNetwork2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandNetwork2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetVoiceCallSupportAsync();
    }
    pub fn getRegistrationUiccApps(self: *@This()) core.HResult!*IVectorView(MobileBroadbandUiccApp) {
        var this: ?*IMobileBroadbandNetwork2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandNetwork2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRegistrationUiccApps();
    }
    pub fn GetCellsInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandCellsInfo) {
        var this: ?*IMobileBroadbandNetwork3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandNetwork3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCellsInfoAsync();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandNetwork";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandNetwork.GUID;
    pub const IID: Guid = IMobileBroadbandNetwork.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandNetwork.SIGNATURE);
};
pub const MobileBroadbandNetworkRegistrationStateChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandNetworkRegistrationStateChange = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getNetwork(self: *@This()) core.HResult!*MobileBroadbandNetwork {
        const this: *IMobileBroadbandNetworkRegistrationStateChange = @ptrCast(self);
        return try this.getNetwork();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandNetworkRegistrationStateChange.GUID;
    pub const IID: Guid = IMobileBroadbandNetworkRegistrationStateChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandNetworkRegistrationStateChange.SIGNATURE);
};
pub const MobileBroadbandNetworkRegistrationStateChangeTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkRegistrationStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandNetworkRegistrationStateChange) {
        const this: *IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails = @ptrCast(self);
        return try this.getNetworkRegistrationStateChanges();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandNetworkRegistrationStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails.GUID;
    pub const IID: Guid = IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandNetworkRegistrationStateChangeTriggerDetails.SIGNATURE);
};
pub const MobileBroadbandPco = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandPco = @ptrCast(self);
        return try this.getData();
    }
    pub fn getIsComplete(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandPco = @ptrCast(self);
        return try this.getIsComplete();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandPco = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPco";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPco.GUID;
    pub const IID: Guid = IMobileBroadbandPco.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPco.SIGNATURE);
};
pub const MobileBroadbandPcoDataChangeTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUpdatedData(self: *@This()) core.HResult!*MobileBroadbandPco {
        const this: *IMobileBroadbandPcoDataChangeTriggerDetails = @ptrCast(self);
        return try this.getUpdatedData();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPcoDataChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPcoDataChangeTriggerDetails.GUID;
    pub const IID: Guid = IMobileBroadbandPcoDataChangeTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPcoDataChangeTriggerDetails.SIGNATURE);
};
pub const MobileBroadbandPin = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!MobileBroadbandPinType {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getType();
    }
    pub fn getLockState(self: *@This()) core.HResult!MobileBroadbandPinLockState {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getLockState();
    }
    pub fn getFormat(self: *@This()) core.HResult!MobileBroadbandPinFormat {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn getMaxLength(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getMaxLength();
    }
    pub fn getMinLength(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getMinLength();
    }
    pub fn getAttemptsRemaining(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.getAttemptsRemaining();
    }
    pub fn EnableAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.EnableAsync(currentPin);
    }
    pub fn DisableAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.DisableAsync(currentPin);
    }
    pub fn EnterAsync(self: *@This(), currentPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.EnterAsync(currentPin);
    }
    pub fn ChangeAsync(self: *@This(), currentPin: HSTRING, newPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.ChangeAsync(currentPin, newPin);
    }
    pub fn UnblockAsync(self: *@This(), pinUnblockKey: HSTRING, newPin: HSTRING) core.HResult!*IAsyncOperation(MobileBroadbandPinOperationResult) {
        const this: *IMobileBroadbandPin = @ptrCast(self);
        return try this.UnblockAsync(pinUnblockKey, newPin);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPin";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPin.GUID;
    pub const IID: Guid = IMobileBroadbandPin.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPin.SIGNATURE);
};
pub const MobileBroadbandPinFormat = enum(i32) {
    Unknown = 0,
    Numeric = 1,
    Alphanumeric = 2,
};
pub const MobileBroadbandPinLockState = enum(i32) {
    Unknown = 0,
    Unlocked = 1,
    PinRequired = 2,
    PinUnblockKeyRequired = 3,
};
pub const MobileBroadbandPinLockStateChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandPinLockStateChange = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getPinType(self: *@This()) core.HResult!MobileBroadbandPinType {
        const this: *IMobileBroadbandPinLockStateChange = @ptrCast(self);
        return try this.getPinType();
    }
    pub fn getPinLockState(self: *@This()) core.HResult!MobileBroadbandPinLockState {
        const this: *IMobileBroadbandPinLockStateChange = @ptrCast(self);
        return try this.getPinLockState();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPinLockStateChange.GUID;
    pub const IID: Guid = IMobileBroadbandPinLockStateChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPinLockStateChange.SIGNATURE);
};
pub const MobileBroadbandPinLockStateChangeTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPinLockStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandPinLockStateChange) {
        const this: *IMobileBroadbandPinLockStateChangeTriggerDetails = @ptrCast(self);
        return try this.getPinLockStateChanges();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPinLockStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPinLockStateChangeTriggerDetails.GUID;
    pub const IID: Guid = IMobileBroadbandPinLockStateChangeTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPinLockStateChangeTriggerDetails.SIGNATURE);
};
pub const MobileBroadbandPinManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupportedPins(self: *@This()) core.HResult!*IVectorView(MobileBroadbandPinType) {
        const this: *IMobileBroadbandPinManager = @ptrCast(self);
        return try this.getSupportedPins();
    }
    pub fn GetPin(self: *@This(), pinType: MobileBroadbandPinType) core.HResult!*MobileBroadbandPin {
        const this: *IMobileBroadbandPinManager = @ptrCast(self);
        return try this.GetPin(pinType);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPinManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPinManager.GUID;
    pub const IID: Guid = IMobileBroadbandPinManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPinManager.SIGNATURE);
};
pub const MobileBroadbandPinOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSuccessful(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandPinOperationResult = @ptrCast(self);
        return try this.getIsSuccessful();
    }
    pub fn getAttemptsRemaining(self: *@This()) core.HResult!u32 {
        const this: *IMobileBroadbandPinOperationResult = @ptrCast(self);
        return try this.getAttemptsRemaining();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandPinOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandPinOperationResult.GUID;
    pub const IID: Guid = IMobileBroadbandPinOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandPinOperationResult.SIGNATURE);
};
pub const MobileBroadbandPinType = enum(i32) {
    None = 0,
    Custom = 1,
    Pin1 = 2,
    Pin2 = 3,
    SimPin = 4,
    FirstSimPin = 5,
    NetworkPin = 6,
    NetworkSubsetPin = 7,
    ServiceProviderPin = 8,
    CorporatePin = 9,
    SubsidyLock = 10,
};
pub const MobileBroadbandRadioState = enum(i32) {
    Off = 0,
    On = 1,
};
pub const MobileBroadbandRadioStateChange = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandRadioStateChange = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getRadioState(self: *@This()) core.HResult!MobileBroadbandRadioState {
        const this: *IMobileBroadbandRadioStateChange = @ptrCast(self);
        return try this.getRadioState();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChange";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandRadioStateChange.GUID;
    pub const IID: Guid = IMobileBroadbandRadioStateChange.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandRadioStateChange.SIGNATURE);
};
pub const MobileBroadbandRadioStateChangeTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRadioStateChanges(self: *@This()) core.HResult!*IVectorView(MobileBroadbandRadioStateChange) {
        const this: *IMobileBroadbandRadioStateChangeTriggerDetails = @ptrCast(self);
        return try this.getRadioStateChanges();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandRadioStateChangeTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandRadioStateChangeTriggerDetails.GUID;
    pub const IID: Guid = IMobileBroadbandRadioStateChangeTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandRadioStateChangeTriggerDetails.SIGNATURE);
};
pub const MobileBroadbandSarManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsBackoffEnabled(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.getIsBackoffEnabled();
    }
    pub fn getIsWiFiHardwareIntegrated(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.getIsWiFiHardwareIntegrated();
    }
    pub fn getIsSarControlledByHardware(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.getIsSarControlledByHardware();
    }
    pub fn getAntennas(self: *@This()) core.HResult!*IVectorView(MobileBroadbandAntennaSar) {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.getAntennas();
    }
    pub fn getHysteresisTimerPeriod(self: *@This()) core.HResult!TimeSpan {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.getHysteresisTimerPeriod();
    }
    pub fn addTransmissionStateChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSarManager,MobileBroadbandTransmissionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.addTransmissionStateChanged(handler);
    }
    pub fn removeTransmissionStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.removeTransmissionStateChanged(token);
    }
    pub fn EnableBackoffAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.EnableBackoffAsync();
    }
    pub fn DisableBackoffAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.DisableBackoffAsync();
    }
    pub fn SetConfigurationAsync(self: *@This(), antennas: *IIterable(MobileBroadbandAntennaSar)) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.SetConfigurationAsync(antennas);
    }
    pub fn RevertSarToHardwareControlAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.RevertSarToHardwareControlAsync();
    }
    pub fn SetTransmissionStateChangedHysteresisAsync(self: *@This(), timerPeriod: TimeSpan) core.HResult!*IAsyncAction {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.SetTransmissionStateChangedHysteresisAsync(timerPeriod);
    }
    pub fn GetIsTransmittingAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.GetIsTransmittingAsync();
    }
    pub fn StartTransmissionStateMonitoring(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.StartTransmissionStateMonitoring();
    }
    pub fn StopTransmissionStateMonitoring(self: *@This()) core.HResult!void {
        const this: *IMobileBroadbandSarManager = @ptrCast(self);
        return try this.StopTransmissionStateMonitoring();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandSarManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandSarManager.GUID;
    pub const IID: Guid = IMobileBroadbandSarManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandSarManager.SIGNATURE);
};
pub const MobileBroadbandSlotInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIndex(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandSlotInfo = @ptrCast(self);
        return try this.getIndex();
    }
    pub fn getState(self: *@This()) core.HResult!MobileBroadbandSlotState {
        const this: *IMobileBroadbandSlotInfo = @ptrCast(self);
        return try this.getState();
    }
    pub fn getIccId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMobileBroadbandSlotInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMobileBroadbandSlotInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIccId();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandSlotInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandSlotInfo.GUID;
    pub const IID: Guid = IMobileBroadbandSlotInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandSlotInfo.SIGNATURE);
};
pub const MobileBroadbandSlotInfoChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSlotInfo(self: *@This()) core.HResult!*MobileBroadbandSlotInfo {
        const this: *IMobileBroadbandSlotInfoChangedEventArgs = @ptrCast(self);
        return try this.getSlotInfo();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandSlotInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandSlotInfoChangedEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandSlotInfoChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandSlotInfoChangedEventArgs.SIGNATURE);
};
pub const MobileBroadbandSlotManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSlotInfos(self: *@This()) core.HResult!*IVectorView(MobileBroadbandSlotInfo) {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.getSlotInfos();
    }
    pub fn getCurrentSlotIndex(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.getCurrentSlotIndex();
    }
    pub fn SetCurrentSlot(self: *@This(), slotIndex: i32) core.HResult!MobileBroadbandModemStatus {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.SetCurrentSlot(slotIndex);
    }
    pub fn SetCurrentSlotAsync(self: *@This(), slotIndex: i32) core.HResult!*IAsyncOperation(MobileBroadbandModemStatus) {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.SetCurrentSlotAsync(slotIndex);
    }
    pub fn addSlotInfoChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandSlotInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.addSlotInfoChanged(handler);
    }
    pub fn removeSlotInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.removeSlotInfoChanged(token);
    }
    pub fn addCurrentSlotIndexChanged(self: *@This(), handler: *TypedEventHandler(MobileBroadbandSlotManager,MobileBroadbandCurrentSlotIndexChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.addCurrentSlotIndexChanged(handler);
    }
    pub fn removeCurrentSlotIndexChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMobileBroadbandSlotManager = @ptrCast(self);
        return try this.removeCurrentSlotIndexChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandSlotManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandSlotManager.GUID;
    pub const IID: Guid = IMobileBroadbandSlotManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandSlotManager.SIGNATURE);
};
pub const MobileBroadbandSlotState = enum(i32) {
    Unmanaged = 0,
    Unknown = 1,
    OffEmpty = 2,
    Off = 3,
    Empty = 4,
    NotReady = 5,
    Active = 6,
    Error = 7,
    ActiveEsim = 8,
    ActiveEsimNoProfile = 9,
};
pub const MobileBroadbandTransmissionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTransmitting(self: *@This()) core.HResult!bool {
        const this: *IMobileBroadbandTransmissionStateChangedEventArgs = @ptrCast(self);
        return try this.getIsTransmitting();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandTransmissionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandTransmissionStateChangedEventArgs.GUID;
    pub const IID: Guid = IMobileBroadbandTransmissionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandTransmissionStateChangedEventArgs.SIGNATURE);
};
pub const MobileBroadbandUicc = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSimIccId(self: *@This()) core.HResult!HSTRING {
        const this: *IMobileBroadbandUicc = @ptrCast(self);
        return try this.getSimIccId();
    }
    pub fn GetUiccAppsAsync(self: *@This()) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppsResult) {
        const this: *IMobileBroadbandUicc = @ptrCast(self);
        return try this.GetUiccAppsAsync();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandUicc";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandUicc.GUID;
    pub const IID: Guid = IMobileBroadbandUicc.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandUicc.SIGNATURE);
};
pub const MobileBroadbandUiccApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandUiccApp = @ptrCast(self);
        return try this.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!UiccAppKind {
        const this: *IMobileBroadbandUiccApp = @ptrCast(self);
        return try this.getKind();
    }
    pub fn GetRecordDetailsAsync(self: *@This(), uiccFilePath: *IIterable(u32)) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppRecordDetailsResult) {
        const this: *IMobileBroadbandUiccApp = @ptrCast(self);
        return try this.GetRecordDetailsAsync(uiccFilePath);
    }
    pub fn ReadRecordAsync(self: *@This(), uiccFilePath: *IIterable(u32), recordIndex: i32) core.HResult!*IAsyncOperation(MobileBroadbandUiccAppReadRecordResult) {
        const this: *IMobileBroadbandUiccApp = @ptrCast(self);
        return try this.ReadRecordAsync(uiccFilePath, recordIndex);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandUiccApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandUiccApp.GUID;
    pub const IID: Guid = IMobileBroadbandUiccApp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandUiccApp.SIGNATURE);
};
pub const MobileBroadbandUiccAppOperationStatus = enum(i32) {
    Success = 0,
    InvalidUiccFilePath = 1,
    AccessConditionNotHeld = 2,
    UiccBusy = 3,
};
pub const MobileBroadbandUiccAppReadRecordResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        const this: *IMobileBroadbandUiccAppReadRecordResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMobileBroadbandUiccAppReadRecordResult = @ptrCast(self);
        return try this.getData();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandUiccAppReadRecordResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandUiccAppReadRecordResult.GUID;
    pub const IID: Guid = IMobileBroadbandUiccAppReadRecordResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandUiccAppReadRecordResult.SIGNATURE);
};
pub const MobileBroadbandUiccAppRecordDetailsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getKind(self: *@This()) core.HResult!UiccAppRecordKind {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getRecordCount(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getRecordCount();
    }
    pub fn getRecordSize(self: *@This()) core.HResult!i32 {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getRecordSize();
    }
    pub fn getReadAccessCondition(self: *@This()) core.HResult!UiccAccessCondition {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getReadAccessCondition();
    }
    pub fn getWriteAccessCondition(self: *@This()) core.HResult!UiccAccessCondition {
        const this: *IMobileBroadbandUiccAppRecordDetailsResult = @ptrCast(self);
        return try this.getWriteAccessCondition();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandUiccAppRecordDetailsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandUiccAppRecordDetailsResult.GUID;
    pub const IID: Guid = IMobileBroadbandUiccAppRecordDetailsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandUiccAppRecordDetailsResult.SIGNATURE);
};
pub const MobileBroadbandUiccAppsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MobileBroadbandUiccAppOperationStatus {
        const this: *IMobileBroadbandUiccAppsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getUiccApps(self: *@This()) core.HResult!*IVectorView(MobileBroadbandUiccApp) {
        const this: *IMobileBroadbandUiccAppsResult = @ptrCast(self);
        return try this.getUiccApps();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.MobileBroadbandUiccAppsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMobileBroadbandUiccAppsResult.GUID;
    pub const IID: Guid = IMobileBroadbandUiccAppsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMobileBroadbandUiccAppsResult.SIGNATURE);
};
pub const NetworkDeviceStatus = enum(i32) {
    DeviceNotReady = 0,
    DeviceReady = 1,
    SimNotInserted = 2,
    BadSim = 3,
    DeviceHardwareFailure = 4,
    AccountNotActivated = 5,
    DeviceLocked = 6,
    DeviceBlocked = 7,
};
pub const NetworkOperatorDataUsageNotificationKind = enum(i32) {
    DataUsageProgress = 0,
};
pub const NetworkOperatorDataUsageTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNotificationKind(self: *@This()) core.HResult!NetworkOperatorDataUsageNotificationKind {
        const this: *INetworkOperatorDataUsageTriggerDetails = @ptrCast(self);
        return try this.getNotificationKind();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorDataUsageTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorDataUsageTriggerDetails.GUID;
    pub const IID: Guid = INetworkOperatorDataUsageTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorDataUsageTriggerDetails.SIGNATURE);
};
pub const NetworkOperatorEventMessageType = enum(i32) {
    Gsm = 0,
    Cdma = 1,
    Ussd = 2,
    DataPlanThresholdReached = 3,
    DataPlanReset = 4,
    DataPlanDeleted = 5,
    ProfileConnected = 6,
    ProfileDisconnected = 7,
    RegisteredRoaming = 8,
    RegisteredHome = 9,
    TetheringEntitlementCheck = 10,
    TetheringOperationalStateChanged = 11,
    TetheringNumberOfClientsChanged = 12,
};
pub const NetworkOperatorTetheringAccessPointConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringAccessPointConfiguration = @ptrCast(self);
        return try this.getSsid();
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INetworkOperatorTetheringAccessPointConfiguration = @ptrCast(self);
        return try this.putSsid(value);
    }
    pub fn getPassphrase(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringAccessPointConfiguration = @ptrCast(self);
        return try this.getPassphrase();
    }
    pub fn putPassphrase(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INetworkOperatorTetheringAccessPointConfiguration = @ptrCast(self);
        return try this.putPassphrase(value);
    }
    pub fn IsBandSupported(self: *@This(), band: TetheringWiFiBand) core.HResult!bool {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsBandSupported(band);
    }
    pub fn IsBandSupportedAsync(self: *@This(), band: TetheringWiFiBand) core.HResult!*IAsyncOperation(bool) {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsBandSupportedAsync(band);
    }
    pub fn getBand(self: *@This()) core.HResult!TetheringWiFiBand {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBand();
    }
    pub fn putBand(self: *@This(), value: TetheringWiFiBand) core.HResult!void {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBand(value);
    }
    pub fn IsAuthenticationKindSupported(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!bool {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsAuthenticationKindSupported(authenticationKind);
    }
    pub fn IsAuthenticationKindSupportedAsync(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!*IAsyncOperation(bool) {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsAuthenticationKindSupportedAsync(authenticationKind);
    }
    pub fn getAuthenticationKind(self: *@This()) core.HResult!TetheringWiFiAuthenticationKind {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAuthenticationKind();
    }
    pub fn putAuthenticationKind(self: *@This(), value: TetheringWiFiAuthenticationKind) core.HResult!void {
        var this: ?*INetworkOperatorTetheringAccessPointConfiguration3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringAccessPointConfiguration3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAuthenticationKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INetworkOperatorTetheringAccessPointConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorTetheringAccessPointConfiguration.GUID;
    pub const IID: Guid = INetworkOperatorTetheringAccessPointConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorTetheringAccessPointConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NetworkOperatorTetheringClient = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMacAddress(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringClient = @ptrCast(self);
        return try this.getMacAddress();
    }
    pub fn getHostNames(self: *@This()) core.HResult!*IVectorView(HostName) {
        const this: *INetworkOperatorTetheringClient = @ptrCast(self);
        return try this.getHostNames();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorTetheringClient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorTetheringClient.GUID;
    pub const IID: Guid = INetworkOperatorTetheringClient.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorTetheringClient.SIGNATURE);
};
pub const NetworkOperatorTetheringManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMaxClientCount(self: *@This()) core.HResult!u32 {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.getMaxClientCount();
    }
    pub fn getClientCount(self: *@This()) core.HResult!u32 {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.getClientCount();
    }
    pub fn getTetheringOperationalState(self: *@This()) core.HResult!TetheringOperationalState {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.getTetheringOperationalState();
    }
    pub fn GetCurrentAccessPointConfiguration(self: *@This()) core.HResult!*NetworkOperatorTetheringAccessPointConfiguration {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.GetCurrentAccessPointConfiguration();
    }
    pub fn ConfigureAccessPointAsync(self: *@This(), configuration: *NetworkOperatorTetheringAccessPointConfiguration) core.HResult!*IAsyncAction {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.ConfigureAccessPointAsync(configuration);
    }
    pub fn StartTetheringAsync(self: *@This()) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.StartTetheringAsync();
    }
    pub fn StopTetheringAsync(self: *@This()) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        const this: *INetworkOperatorTetheringManager = @ptrCast(self);
        return try this.StopTetheringAsync();
    }
    pub fn GetTetheringClients(self: *@This()) core.HResult!*IVectorView(NetworkOperatorTetheringClient) {
        var this: ?*INetworkOperatorTetheringClientManager = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringClientManager.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetTetheringClients();
    }
    pub fn StartTetheringAsyncWithConfiguration(self: *@This(), configuration: *NetworkOperatorTetheringSessionAccessPointConfiguration) core.HResult!*IAsyncOperation(NetworkOperatorTetheringOperationResult) {
        var this: ?*INetworkOperatorTetheringManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkOperatorTetheringManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartTetheringAsyncWithConfiguration(configuration);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetTetheringCapabilityFromConnectionProfile(profile: *ConnectionProfile) core.HResult!TetheringCapability {
        const _f = @This().INetworkOperatorTetheringManagerStatics2Cache.get();
        return try _f.GetTetheringCapabilityFromConnectionProfile(profile);
    }
    pub fn CreateFromConnectionProfile(profile: *ConnectionProfile) core.HResult!*NetworkOperatorTetheringManager {
        const _f = @This().INetworkOperatorTetheringManagerStatics2Cache.get();
        return try _f.CreateFromConnectionProfile(profile);
    }
    pub fn CreateFromConnectionProfileWithAdapter(profile: *ConnectionProfile, adapter: *NetworkAdapter) core.HResult!*NetworkOperatorTetheringManager {
        const _f = @This().INetworkOperatorTetheringManagerStatics3Cache.get();
        return try _f.CreateFromConnectionProfile(profile, adapter);
    }
    pub fn GetTetheringCapability(networkAccountId: HSTRING) core.HResult!TetheringCapability {
        const _f = @This().INetworkOperatorTetheringManagerStaticsCache.get();
        return try _f.GetTetheringCapability(networkAccountId);
    }
    pub fn CreateFromNetworkAccountId(networkAccountId: HSTRING) core.HResult!*NetworkOperatorTetheringManager {
        const _f = @This().INetworkOperatorTetheringManagerStaticsCache.get();
        return try _f.CreateFromNetworkAccountId(networkAccountId);
    }
    pub fn IsNoConnectionsTimeoutEnabled() core.HResult!bool {
        const _f = @This().INetworkOperatorTetheringManagerStatics4Cache.get();
        return try _f.IsNoConnectionsTimeoutEnabled();
    }
    pub fn EnableNoConnectionsTimeout() core.HResult!void {
        const _f = @This().INetworkOperatorTetheringManagerStatics4Cache.get();
        return try _f.EnableNoConnectionsTimeout();
    }
    pub fn EnableNoConnectionsTimeoutAsync() core.HResult!*IAsyncAction {
        const _f = @This().INetworkOperatorTetheringManagerStatics4Cache.get();
        return try _f.EnableNoConnectionsTimeoutAsync();
    }
    pub fn DisableNoConnectionsTimeout() core.HResult!void {
        const _f = @This().INetworkOperatorTetheringManagerStatics4Cache.get();
        return try _f.DisableNoConnectionsTimeout();
    }
    pub fn DisableNoConnectionsTimeoutAsync() core.HResult!*IAsyncAction {
        const _f = @This().INetworkOperatorTetheringManagerStatics4Cache.get();
        return try _f.DisableNoConnectionsTimeoutAsync();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorTetheringManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorTetheringManager.GUID;
    pub const IID: Guid = INetworkOperatorTetheringManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorTetheringManager.SIGNATURE);
    var _INetworkOperatorTetheringManagerStatics2Cache: FactoryCache(INetworkOperatorTetheringManagerStatics2, RUNTIME_NAME) = .{};
    var _INetworkOperatorTetheringManagerStatics3Cache: FactoryCache(INetworkOperatorTetheringManagerStatics3, RUNTIME_NAME) = .{};
    var _INetworkOperatorTetheringManagerStaticsCache: FactoryCache(INetworkOperatorTetheringManagerStatics, RUNTIME_NAME) = .{};
    var _INetworkOperatorTetheringManagerStatics4Cache: FactoryCache(INetworkOperatorTetheringManagerStatics4, RUNTIME_NAME) = .{};
};
pub const NetworkOperatorTetheringOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!TetheringOperationStatus {
        const this: *INetworkOperatorTetheringOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getAdditionalErrorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringOperationResult = @ptrCast(self);
        return try this.getAdditionalErrorMessage();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorTetheringOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorTetheringOperationResult.GUID;
    pub const IID: Guid = INetworkOperatorTetheringOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorTetheringOperationResult.SIGNATURE);
};
pub const NetworkOperatorTetheringSessionAccessPointConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSsid(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.getSsid();
    }
    pub fn putSsid(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.putSsid(value);
    }
    pub fn getPassphrase(self: *@This()) core.HResult!HSTRING {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.getPassphrase();
    }
    pub fn putPassphrase(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.putPassphrase(value);
    }
    pub fn IsBandSupported(self: *@This(), band: TetheringWiFiBand) core.HResult!bool {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.IsBandSupported(band);
    }
    pub fn IsBandSupportedAsync(self: *@This(), band: TetheringWiFiBand) core.HResult!*IAsyncOperation(bool) {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.IsBandSupportedAsync(band);
    }
    pub fn getBand(self: *@This()) core.HResult!TetheringWiFiBand {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.getBand();
    }
    pub fn putBand(self: *@This(), value: TetheringWiFiBand) core.HResult!void {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.putBand(value);
    }
    pub fn IsAuthenticationKindSupported(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!bool {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.IsAuthenticationKindSupported(authenticationKind);
    }
    pub fn IsAuthenticationKindSupportedAsync(self: *@This(), authenticationKind: TetheringWiFiAuthenticationKind) core.HResult!*IAsyncOperation(bool) {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.IsAuthenticationKindSupportedAsync(authenticationKind);
    }
    pub fn getAuthenticationKind(self: *@This()) core.HResult!TetheringWiFiAuthenticationKind {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.getAuthenticationKind();
    }
    pub fn putAuthenticationKind(self: *@This(), value: TetheringWiFiAuthenticationKind) core.HResult!void {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.putAuthenticationKind(value);
    }
    pub fn getPerformancePriority(self: *@This()) core.HResult!TetheringWiFiPerformancePriority {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.getPerformancePriority();
    }
    pub fn putPerformancePriority(self: *@This(), value: TetheringWiFiPerformancePriority) core.HResult!void {
        const this: *INetworkOperatorTetheringSessionAccessPointConfiguration = @ptrCast(self);
        return try this.putPerformancePriority(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INetworkOperatorTetheringSessionAccessPointConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.NetworkOperatorTetheringSessionAccessPointConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkOperatorTetheringSessionAccessPointConfiguration.GUID;
    pub const IID: Guid = INetworkOperatorTetheringSessionAccessPointConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkOperatorTetheringSessionAccessPointConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NetworkRegistrationState = enum(i32) {
    None = 0,
    Deregistered = 1,
    Searching = 2,
    Home = 3,
    Roaming = 4,
    Partner = 5,
    Denied = 6,
};
pub const ProfileMediaType = enum(i32) {
    Wlan = 0,
    Wwan = 1,
};
pub const ProfileUsage = extern struct {
    UsageInMegabytes: u32,
    LastSyncTime: DateTime,
};
pub const ProvisionFromXmlDocumentResults = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllElementsProvisioned(self: *@This()) core.HResult!bool {
        const this: *IProvisionFromXmlDocumentResults = @ptrCast(self);
        return try this.getAllElementsProvisioned();
    }
    pub fn getProvisionResultsXml(self: *@This()) core.HResult!HSTRING {
        const this: *IProvisionFromXmlDocumentResults = @ptrCast(self);
        return try this.getProvisionResultsXml();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ProvisionFromXmlDocumentResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProvisionFromXmlDocumentResults.GUID;
    pub const IID: Guid = IProvisionFromXmlDocumentResults.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProvisionFromXmlDocumentResults.SIGNATURE);
};
pub const ProvisionedProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn UpdateCost(self: *@This(), value: NetworkCostType) core.HResult!void {
        const this: *IProvisionedProfile = @ptrCast(self);
        return try this.UpdateCost(value);
    }
    pub fn UpdateUsage(self: *@This(), value: ProfileUsage) core.HResult!void {
        const this: *IProvisionedProfile = @ptrCast(self);
        return try this.UpdateUsage(value);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ProvisionedProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProvisionedProfile.GUID;
    pub const IID: Guid = IProvisionedProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProvisionedProfile.SIGNATURE);
};
pub const ProvisioningAgent = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ProvisionFromXmlDocumentAsync(self: *@This(), provisioningXmlDocument: HSTRING) core.HResult!*IAsyncOperation(ProvisionFromXmlDocumentResults) {
        const this: *IProvisioningAgent = @ptrCast(self);
        return try this.ProvisionFromXmlDocumentAsync(provisioningXmlDocument);
    }
    pub fn GetProvisionedProfile(self: *@This(), mediaType: ProfileMediaType, profileName: HSTRING) core.HResult!*ProvisionedProfile {
        const this: *IProvisioningAgent = @ptrCast(self);
        return try this.GetProvisionedProfile(mediaType, profileName);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IProvisioningAgent.IID)));
    }
    pub fn CreateFromNetworkAccountId(networkAccountId: HSTRING) core.HResult!*ProvisioningAgent {
        const _f = @This().IProvisioningAgentStaticMethodsCache.get();
        return try _f.CreateFromNetworkAccountId(networkAccountId);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.ProvisioningAgent";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProvisioningAgent.GUID;
    pub const IID: Guid = IProvisioningAgent.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProvisioningAgent.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IProvisioningAgentStaticMethodsCache: FactoryCache(IProvisioningAgentStaticMethods, RUNTIME_NAME) = .{};
};
pub const TetheringCapability = enum(i32) {
    Enabled = 0,
    DisabledByGroupPolicy = 1,
    DisabledByHardwareLimitation = 2,
    DisabledByOperator = 3,
    DisabledBySku = 4,
    DisabledByRequiredAppNotInstalled = 5,
    DisabledDueToUnknownCause = 6,
    DisabledBySystemCapability = 7,
};
pub const TetheringEntitlementCheckTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAccountId(self: *@This()) core.HResult!HSTRING {
        const this: *ITetheringEntitlementCheckTriggerDetails = @ptrCast(self);
        return try this.getNetworkAccountId();
    }
    pub fn AllowTethering(self: *@This()) core.HResult!void {
        const this: *ITetheringEntitlementCheckTriggerDetails = @ptrCast(self);
        return try this.AllowTethering();
    }
    pub fn DenyTethering(self: *@This(), entitlementFailureReason: HSTRING) core.HResult!void {
        const this: *ITetheringEntitlementCheckTriggerDetails = @ptrCast(self);
        return try this.DenyTethering(entitlementFailureReason);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.TetheringEntitlementCheckTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITetheringEntitlementCheckTriggerDetails.GUID;
    pub const IID: Guid = ITetheringEntitlementCheckTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITetheringEntitlementCheckTriggerDetails.SIGNATURE);
};
pub const TetheringOperationStatus = enum(i32) {
    Success = 0,
    Unknown = 1,
    MobileBroadbandDeviceOff = 2,
    WiFiDeviceOff = 3,
    EntitlementCheckTimeout = 4,
    EntitlementCheckFailure = 5,
    OperationInProgress = 6,
    BluetoothDeviceOff = 7,
    NetworkLimitedConnectivity = 8,
    AlreadyOn = 9,
    RadioRestriction = 10,
    BandInterference = 11,
};
pub const TetheringOperationalState = enum(i32) {
    Unknown = 0,
    On = 1,
    Off = 2,
    InTransition = 3,
};
pub const TetheringWiFiAuthenticationKind = enum(i32) {
    Wpa2 = 0,
    Wpa3TransitionMode = 1,
    Wpa3 = 2,
};
pub const TetheringWiFiBand = enum(i32) {
    Auto = 0,
    TwoPointFourGigahertz = 1,
    FiveGigahertz = 2,
    SixGigahertz = 3,
};
pub const TetheringWiFiPerformancePriority = enum(i32) {
    Default = 0,
    TetheringOverStation = 1,
};
pub const UiccAccessCondition = enum(i32) {
    AlwaysAllowed = 0,
    Pin1 = 1,
    Pin2 = 2,
    Pin3 = 3,
    Pin4 = 4,
    Administrative5 = 5,
    Administrative6 = 6,
    NeverAllowed = 7,
};
pub const UiccAppKind = enum(i32) {
    Unknown = 0,
    MF = 1,
    MFSim = 2,
    MFRuim = 3,
    USim = 4,
    CSim = 5,
    ISim = 6,
};
pub const UiccAppRecordKind = enum(i32) {
    Unknown = 0,
    Transparent = 1,
    RecordOriented = 2,
};
pub const UssdMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataCodingScheme(self: *@This()) core.HResult!u8 {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.getDataCodingScheme();
    }
    pub fn putDataCodingScheme(self: *@This(), value: u8) core.HResult!void {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.putDataCodingScheme(value);
    }
    pub fn GetPayload(self: *@This()) core.HResult![*]u8 {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.GetPayload();
    }
    pub fn SetPayload(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.SetPayload(value);
    }
    pub fn getPayloadAsText(self: *@This()) core.HResult!HSTRING {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.getPayloadAsText();
    }
    pub fn putPayloadAsText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IUssdMessage = @ptrCast(self);
        return try this.putPayloadAsText(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMessage(messageText: HSTRING) core.HResult!*UssdMessage {
        const _f = @This().IUssdMessageFactoryCache.get();
        return try _f.CreateMessage(messageText);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.UssdMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUssdMessage.GUID;
    pub const IID: Guid = IUssdMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUssdMessage.SIGNATURE);
    var _IUssdMessageFactoryCache: FactoryCache(IUssdMessageFactory, RUNTIME_NAME) = .{};
};
pub const UssdReply = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResultCode(self: *@This()) core.HResult!UssdResultCode {
        const this: *IUssdReply = @ptrCast(self);
        return try this.getResultCode();
    }
    pub fn getMessage(self: *@This()) core.HResult!*UssdMessage {
        const this: *IUssdReply = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.UssdReply";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUssdReply.GUID;
    pub const IID: Guid = IUssdReply.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUssdReply.SIGNATURE);
};
pub const UssdResultCode = enum(i32) {
    NoActionRequired = 0,
    ActionRequired = 1,
    Terminated = 2,
    OtherLocalClient = 3,
    OperationNotSupported = 4,
    NetworkTimeout = 5,
};
pub const UssdSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendMessageAndGetReplyAsync(self: *@This(), message: *UssdMessage) core.HResult!*IAsyncOperation(UssdReply) {
        const this: *IUssdSession = @ptrCast(self);
        return try this.SendMessageAndGetReplyAsync(message);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        const this: *IUssdSession = @ptrCast(self);
        return try this.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromNetworkAccountId(networkAccountId: HSTRING) core.HResult!*UssdSession {
        const _f = @This().IUssdSessionStaticsCache.get();
        return try _f.CreateFromNetworkAccountId(networkAccountId);
    }
    pub fn CreateFromNetworkInterfaceId(networkInterfaceId: HSTRING) core.HResult!*UssdSession {
        const _f = @This().IUssdSessionStaticsCache.get();
        return try _f.CreateFromNetworkInterfaceId(networkInterfaceId);
    }
    pub const NAME: []const u8 = "Windows.Networking.NetworkOperators.UssdSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUssdSession.GUID;
    pub const IID: Guid = IUssdSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUssdSession.SIGNATURE);
    var _IUssdSessionStaticsCache: FactoryCache(IUssdSessionStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const ConnectionProfile = @import("./Connectivity.zig").ConnectionProfile;
const NetworkAdapter = @import("./Connectivity.zig").NetworkAdapter;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const XmlDocument = @import("../Data/Xml/Dom.zig").XmlDocument;
const ISmsMessage = @import("../Devices/Sms.zig").ISmsMessage;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const Uri = @import("../Foundation.zig").Uri;
const HostName = @import("../Networking.zig").HostName;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const CellularClass = @import("../Devices/Sms.zig").CellularClass;
const NetworkCostType = @import("./Connectivity.zig").NetworkCostType;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const DateTime = @import("../Foundation.zig").DateTime;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
