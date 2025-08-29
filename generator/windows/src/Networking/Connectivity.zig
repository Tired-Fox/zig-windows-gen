pub const IWwanConnectionProfileDetails = extern struct {
    vtable: *const VTable,
    pub fn getHomeProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HomeProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccessPointName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkRegistrationState(self: *@This()) core.HResult!WwanNetworkRegistrationState {
        var _r: WwanNetworkRegistrationState = undefined;
        const _c = self.vtable.GetNetworkRegistrationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentDataClass(self: *@This()) core.HResult!WwanDataClass {
        var _r: WwanDataClass = undefined;
        const _c = self.vtable.GetCurrentDataClass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IWwanConnectionProfileDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e4da8fe-835f-4df3-82fd-df556ebc09ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HomeProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AccessPointName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNetworkRegistrationState: *const fn(self: *anyopaque, _r: *WwanNetworkRegistrationState) callconv(.winapi) HRESULT,
        GetCurrentDataClass: *const fn(self: *anyopaque, _r: *WwanDataClass) callconv(.winapi) HRESULT,
    };
};
pub const IWwanConnectionProfileDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getIPKind(self: *@This()) core.HResult!WwanNetworkIPKind {
        var _r: WwanNetworkIPKind = undefined;
        const _c = self.vtable.get_IPKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPurposeGuids(self: *@This()) core.HResult!*IVectorView(Guid) {
        var _r: *IVectorView(Guid) = undefined;
        const _c = self.vtable.get_PurposeGuids(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IWwanConnectionProfileDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a754ede-a1ed-48b2-8e92-b460033d52e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IPKind: *const fn(self: *anyopaque, _r: *WwanNetworkIPKind) callconv(.winapi) HRESULT,
        get_PurposeGuids: *const fn(self: *anyopaque, _r: **IVectorView(Guid)) callconv(.winapi) HRESULT,
    };
};
pub const WwanConnectionProfileDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHomeProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IWwanConnectionProfileDetails = @ptrCast(self);
        return try this.getHomeProviderId();
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        const this: *IWwanConnectionProfileDetails = @ptrCast(self);
        return try this.getAccessPointName();
    }
    pub fn GetNetworkRegistrationState(self: *@This()) core.HResult!WwanNetworkRegistrationState {
        const this: *IWwanConnectionProfileDetails = @ptrCast(self);
        return try this.GetNetworkRegistrationState();
    }
    pub fn GetCurrentDataClass(self: *@This()) core.HResult!WwanDataClass {
        const this: *IWwanConnectionProfileDetails = @ptrCast(self);
        return try this.GetCurrentDataClass();
    }
    pub fn getIPKind(self: *@This()) core.HResult!WwanNetworkIPKind {
        var this: ?*IWwanConnectionProfileDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWwanConnectionProfileDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIPKind();
    }
    pub fn getPurposeGuids(self: *@This()) core.HResult!*IVectorView(Guid) {
        var this: ?*IWwanConnectionProfileDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWwanConnectionProfileDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPurposeGuids();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.WwanConnectionProfileDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWwanConnectionProfileDetails.GUID;
    pub const IID: Guid = IWwanConnectionProfileDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWwanConnectionProfileDetails.SIGNATURE);
};
pub const WwanDataClass = enum(i32) {
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
pub const WwanNetworkIPKind = enum(i32) {
    None = 0,
    Ipv4 = 1,
    Ipv6 = 2,
    Ipv4v6 = 3,
    Ipv4v6v4Xlat = 4,
};
pub const WwanNetworkRegistrationState = enum(i32) {
    None = 0,
    Deregistered = 1,
    Searching = 2,
    Home = 3,
    Roaming = 4,
    Partner = 5,
    Denied = 6,
};
pub const AttributedNetworkUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        const this: *IAttributedNetworkUsage = @ptrCast(self);
        return try this.getBytesSent();
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        const this: *IAttributedNetworkUsage = @ptrCast(self);
        return try this.getBytesReceived();
    }
    pub fn getAttributionId(self: *@This()) core.HResult!HSTRING {
        const this: *IAttributedNetworkUsage = @ptrCast(self);
        return try this.getAttributionId();
    }
    pub fn getAttributionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAttributedNetworkUsage = @ptrCast(self);
        return try this.getAttributionName();
    }
    pub fn getAttributionThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IAttributedNetworkUsage = @ptrCast(self);
        return try this.getAttributionThumbnail();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.AttributedNetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAttributedNetworkUsage.GUID;
    pub const IID: Guid = IAttributedNetworkUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAttributedNetworkUsage.SIGNATURE);
};
pub const CellularApnAuthenticationType = enum(i32) {
    None = 0,
    Pap = 1,
    Chap = 2,
    Mschapv2 = 3,
};
pub const CellularApnContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getProviderId();
    }
    pub fn putProviderId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putProviderId(value);
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getAccessPointName();
    }
    pub fn putAccessPointName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putAccessPointName(value);
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putUserName(value);
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getPassword();
    }
    pub fn putPassword(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putPassword(value);
    }
    pub fn getIsCompressionEnabled(self: *@This()) core.HResult!bool {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getIsCompressionEnabled();
    }
    pub fn putIsCompressionEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putIsCompressionEnabled(value);
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!CellularApnAuthenticationType {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.getAuthenticationType();
    }
    pub fn putAuthenticationType(self: *@This(), value: CellularApnAuthenticationType) core.HResult!void {
        const this: *ICellularApnContext = @ptrCast(self);
        return try this.putAuthenticationType(value);
    }
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICellularApnContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICellularApnContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProfileName();
    }
    pub fn putProfileName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICellularApnContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICellularApnContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProfileName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICellularApnContext.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.CellularApnContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICellularApnContext.GUID;
    pub const IID: Guid = ICellularApnContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICellularApnContext.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ConnectionCost = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkCostType(self: *@This()) core.HResult!NetworkCostType {
        const this: *IConnectionCost = @ptrCast(self);
        return try this.getNetworkCostType();
    }
    pub fn getRoaming(self: *@This()) core.HResult!bool {
        const this: *IConnectionCost = @ptrCast(self);
        return try this.getRoaming();
    }
    pub fn getOverDataLimit(self: *@This()) core.HResult!bool {
        const this: *IConnectionCost = @ptrCast(self);
        return try this.getOverDataLimit();
    }
    pub fn getApproachingDataLimit(self: *@This()) core.HResult!bool {
        const this: *IConnectionCost = @ptrCast(self);
        return try this.getApproachingDataLimit();
    }
    pub fn getBackgroundDataUsageRestricted(self: *@This()) core.HResult!bool {
        var this: ?*IConnectionCost2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionCost2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBackgroundDataUsageRestricted();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectionCost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectionCost.GUID;
    pub const IID: Guid = IConnectionCost.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectionCost.SIGNATURE);
};
pub const ConnectionProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.getProfileName();
    }
    pub fn GetNetworkConnectivityLevel(self: *@This()) core.HResult!NetworkConnectivityLevel {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetNetworkConnectivityLevel();
    }
    pub fn GetNetworkNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetNetworkNames();
    }
    pub fn GetConnectionCost(self: *@This()) core.HResult!*ConnectionCost {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetConnectionCost();
    }
    pub fn GetDataPlanStatus(self: *@This()) core.HResult!*DataPlanStatus {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetDataPlanStatus();
    }
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.getNetworkAdapter();
    }
    pub fn GetLocalUsage(self: *@This(), StartTime: DateTime, EndTime: DateTime) core.HResult!*DataUsage {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetLocalUsage(StartTime, EndTime);
    }
    pub fn GetLocalUsage(self: *@This(), StartTime: DateTime, EndTime: DateTime, States: RoamingStates) core.HResult!*DataUsage {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.GetLocalUsage(StartTime, EndTime, States);
    }
    pub fn getNetworkSecuritySettings(self: *@This()) core.HResult!*NetworkSecuritySettings {
        const this: *IConnectionProfile = @ptrCast(self);
        return try this.getNetworkSecuritySettings();
    }
    pub fn getIsWwanConnectionProfile(self: *@This()) core.HResult!bool {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWwanConnectionProfile();
    }
    pub fn getIsWlanConnectionProfile(self: *@This()) core.HResult!bool {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsWlanConnectionProfile();
    }
    pub fn getWwanConnectionProfileDetails(self: *@This()) core.HResult!*WwanConnectionProfileDetails {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWwanConnectionProfileDetails();
    }
    pub fn getWlanConnectionProfileDetails(self: *@This()) core.HResult!*WlanConnectionProfileDetails {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWlanConnectionProfileDetails();
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*IReference(Guid) {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getServiceProviderGuid();
    }
    pub fn GetSignalBars(self: *@This()) core.HResult!*IReference(u8) {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSignalBars();
    }
    pub fn GetDomainConnectivityLevel(self: *@This()) core.HResult!DomainConnectivityLevel {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDomainConnectivityLevel();
    }
    pub fn GetNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, granularity: DataUsageGranularity, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(NetworkUsage)) {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNetworkUsageAsync(startTime, endTime, granularity, states);
    }
    pub fn GetConnectivityIntervalsAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(ConnectivityInterval)) {
        var this: ?*IConnectionProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetConnectivityIntervalsAsync(startTime, endTime, states);
    }
    pub fn GetAttributedNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(AttributedNetworkUsage)) {
        var this: ?*IConnectionProfile3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAttributedNetworkUsageAsync(startTime, endTime, states);
    }
    pub fn GetProviderNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(ProviderNetworkUsage)) {
        var this: ?*IConnectionProfile4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetProviderNetworkUsageAsync(startTime, endTime, states);
    }
    pub fn getCanDelete(self: *@This()) core.HResult!bool {
        var this: ?*IConnectionProfile5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanDelete();
    }
    pub fn TryDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(ConnectionProfileDeleteStatus) {
        var this: ?*IConnectionProfile5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDeleteAsync();
    }
    pub fn IsDomainAuthenticatedBy(self: *@This(), kind: DomainAuthenticationKind) core.HResult!bool {
        var this: ?*IConnectionProfile6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfile6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsDomainAuthenticatedBy(kind);
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectionProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectionProfile.GUID;
    pub const IID: Guid = IConnectionProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectionProfile.SIGNATURE);
};
pub const ConnectionProfileDeleteStatus = enum(i32) {
    Success = 0,
    DeniedByUser = 1,
    DeniedBySystem = 2,
    UnknownError = 3,
};
pub const ConnectionProfileFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIsConnected(self: *@This(), value: bool) core.HResult!void {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.putIsConnected(value);
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.getIsConnected();
    }
    pub fn putIsWwanConnectionProfile(self: *@This(), value: bool) core.HResult!void {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.putIsWwanConnectionProfile(value);
    }
    pub fn getIsWwanConnectionProfile(self: *@This()) core.HResult!bool {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.getIsWwanConnectionProfile();
    }
    pub fn putIsWlanConnectionProfile(self: *@This(), value: bool) core.HResult!void {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.putIsWlanConnectionProfile(value);
    }
    pub fn getIsWlanConnectionProfile(self: *@This()) core.HResult!bool {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.getIsWlanConnectionProfile();
    }
    pub fn putNetworkCostType(self: *@This(), value: NetworkCostType) core.HResult!void {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.putNetworkCostType(value);
    }
    pub fn getNetworkCostType(self: *@This()) core.HResult!NetworkCostType {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.getNetworkCostType();
    }
    pub fn putServiceProviderGuid(self: *@This(), value: *IReference(Guid)) core.HResult!void {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.putServiceProviderGuid(value);
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*IReference(Guid) {
        const this: *IConnectionProfileFilter = @ptrCast(self);
        return try this.getServiceProviderGuid();
    }
    pub fn putIsRoaming(self: *@This(), value: *IReference(bool)) core.HResult!void {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsRoaming(value);
    }
    pub fn getIsRoaming(self: *@This()) core.HResult!*IReference(bool) {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRoaming();
    }
    pub fn putIsOverDataLimit(self: *@This(), value: *IReference(bool)) core.HResult!void {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOverDataLimit(value);
    }
    pub fn getIsOverDataLimit(self: *@This()) core.HResult!*IReference(bool) {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOverDataLimit();
    }
    pub fn putIsBackgroundDataUsageRestricted(self: *@This(), value: *IReference(bool)) core.HResult!void {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsBackgroundDataUsageRestricted(value);
    }
    pub fn getIsBackgroundDataUsageRestricted(self: *@This()) core.HResult!*IReference(bool) {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBackgroundDataUsageRestricted();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IConnectionProfileFilter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn putPurposeGuid(self: *@This(), value: *IReference(Guid)) core.HResult!void {
        var this: ?*IConnectionProfileFilter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPurposeGuid(value);
    }
    pub fn getPurposeGuid(self: *@This()) core.HResult!*IReference(Guid) {
        var this: ?*IConnectionProfileFilter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectionProfileFilter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPurposeGuid();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IConnectionProfileFilter.IID)));
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectionProfileFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectionProfileFilter.GUID;
    pub const IID: Guid = IConnectionProfileFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectionProfileFilter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ConnectionSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionProfile(self: *@This()) core.HResult!*ConnectionProfile {
        const this: *IConnectionSession = @ptrCast(self);
        return try this.getConnectionProfile();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectionSession.GUID;
    pub const IID: Guid = IConnectionSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectionSession.SIGNATURE);
};
pub const ConnectivityInterval = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IConnectivityInterval = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getConnectionDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IConnectivityInterval = @ptrCast(self);
        return try this.getConnectionDuration();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectivityInterval";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectivityInterval.GUID;
    pub const IID: Guid = IConnectivityInterval.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectivityInterval.SIGNATURE);
};
pub const ConnectivityManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AcquireConnectionAsync(cellularApnContext: *CellularApnContext) core.HResult!*IAsyncOperation(ConnectionSession) {
        const factory = @This().IConnectivityManagerStaticsCache.get();
        return try factory.AcquireConnectionAsync(cellularApnContext);
    }
    pub fn AddHttpRoutePolicy(routePolicy: *RoutePolicy) core.HResult!void {
        const factory = @This().IConnectivityManagerStaticsCache.get();
        return try factory.AddHttpRoutePolicy(routePolicy);
    }
    pub fn RemoveHttpRoutePolicy(routePolicy: *RoutePolicy) core.HResult!void {
        const factory = @This().IConnectivityManagerStaticsCache.get();
        return try factory.RemoveHttpRoutePolicy(routePolicy);
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ConnectivityManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IConnectivityManagerStaticsCache: FactoryCache(IConnectivityManagerStatics, RUNTIME_NAME) = .{};
};
pub const DataPlanStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataPlanUsage(self: *@This()) core.HResult!*DataPlanUsage {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getDataPlanUsage();
    }
    pub fn getDataLimitInMegabytes(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getDataLimitInMegabytes();
    }
    pub fn getInboundBitsPerSecond(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getInboundBitsPerSecond();
    }
    pub fn getOutboundBitsPerSecond(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getOutboundBitsPerSecond();
    }
    pub fn getNextBillingCycle(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getNextBillingCycle();
    }
    pub fn getMaxTransferSizeInMegabytes(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IDataPlanStatus = @ptrCast(self);
        return try this.getMaxTransferSizeInMegabytes();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.DataPlanStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPlanStatus.GUID;
    pub const IID: Guid = IDataPlanStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPlanStatus.SIGNATURE);
};
pub const DataPlanUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMegabytesUsed(self: *@This()) core.HResult!u32 {
        const this: *IDataPlanUsage = @ptrCast(self);
        return try this.getMegabytesUsed();
    }
    pub fn getLastSyncTime(self: *@This()) core.HResult!DateTime {
        const this: *IDataPlanUsage = @ptrCast(self);
        return try this.getLastSyncTime();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.DataPlanUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataPlanUsage.GUID;
    pub const IID: Guid = IDataPlanUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataPlanUsage.SIGNATURE);
};
pub const DataUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        const this: *IDataUsage = @ptrCast(self);
        return try this.getBytesSent();
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        const this: *IDataUsage = @ptrCast(self);
        return try this.getBytesReceived();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.DataUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataUsage.GUID;
    pub const IID: Guid = IDataUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataUsage.SIGNATURE);
};
pub const DataUsageGranularity = enum(i32) {
    PerMinute = 0,
    PerHour = 1,
    PerDay = 2,
    Total = 3,
};
pub const DomainAuthenticationKind = enum(i32) {
    None = 0,
    Ldap = 1,
    Tls = 2,
};
pub const DomainConnectivityLevel = enum(i32) {
    None = 0,
    Unauthenticated = 1,
    Authenticated = 2,
};
pub const IAttributedNetworkUsage = extern struct {
    vtable: *const VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesSent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AttributionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AttributionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributionThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_AttributionThumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IAttributedNetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f769b039-eca2-45eb-ade1-b0368b756c49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BytesSent: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_BytesReceived: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_AttributionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AttributionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AttributionThumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const ICellularApnContext = extern struct {
    vtable: *const VTable,
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProviderId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ProviderId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessPointName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccessPointName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessPointName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AccessPointName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPassword(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Password(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPassword(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Password(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCompressionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCompressionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCompressionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCompressionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthenticationType(self: *@This()) core.HResult!CellularApnAuthenticationType {
        var _r: CellularApnAuthenticationType = undefined;
        const _c = self.vtable.get_AuthenticationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationType(self: *@This(), value: CellularApnAuthenticationType) core.HResult!void {
        const _c = self.vtable.put_AuthenticationType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ICellularApnContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fa529f4-effd-4542-9ab2-705bbf94943a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ProviderId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AccessPointName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AccessPointName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UserName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Password: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Password: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsCompressionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCompressionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AuthenticationType: *const fn(self: *anyopaque, _r: *CellularApnAuthenticationType) callconv(.winapi) HRESULT,
        put_AuthenticationType: *const fn(self: *anyopaque, value: CellularApnAuthenticationType) callconv(.winapi) HRESULT,
    };
};
pub const ICellularApnContext2 = extern struct {
    vtable: *const VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProfileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProfileName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ProfileName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ICellularApnContext2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76b0eb1a-ac49-4350-b1e5-dc4763bc69c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProfileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ProfileName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionCost = extern struct {
    vtable: *const VTable,
    pub fn getNetworkCostType(self: *@This()) core.HResult!NetworkCostType {
        var _r: NetworkCostType = undefined;
        const _c = self.vtable.get_NetworkCostType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoaming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Roaming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverDataLimit(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OverDataLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getApproachingDataLimit(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ApproachingDataLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionCost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bad7d829-3416-4b10-a202-bac0b075bdae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkCostType: *const fn(self: *anyopaque, _r: *NetworkCostType) callconv(.winapi) HRESULT,
        get_Roaming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_OverDataLimit: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ApproachingDataLimit: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionCost2 = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundDataUsageRestricted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BackgroundDataUsageRestricted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionCost2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e113a05-e209-4549-bb25-5e0db691cb05";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundDataUsageRestricted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile = extern struct {
    vtable: *const VTable,
    pub fn getProfileName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProfileName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkConnectivityLevel(self: *@This()) core.HResult!NetworkConnectivityLevel {
        var _r: NetworkConnectivityLevel = undefined;
        const _c = self.vtable.GetNetworkConnectivityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkNames(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetNetworkNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConnectionCost(self: *@This()) core.HResult!*ConnectionCost {
        var _r: *ConnectionCost = undefined;
        const _c = self.vtable.GetConnectionCost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDataPlanStatus(self: *@This()) core.HResult!*DataPlanStatus {
        var _r: *DataPlanStatus = undefined;
        const _c = self.vtable.GetDataPlanStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        var _r: *NetworkAdapter = undefined;
        const _c = self.vtable.get_NetworkAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalUsage(self: *@This(), StartTime: DateTime, EndTime: DateTime) core.HResult!*DataUsage {
        var _r: *DataUsage = undefined;
        const _c = self.vtable.GetLocalUsage(@ptrCast(self), StartTime, EndTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalUsage(self: *@This(), StartTime: DateTime, EndTime: DateTime, States: RoamingStates) core.HResult!*DataUsage {
        var _r: *DataUsage = undefined;
        const _c = self.vtable.GetLocalUsage(@ptrCast(self), StartTime, EndTime, States, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkSecuritySettings(self: *@This()) core.HResult!*NetworkSecuritySettings {
        var _r: *NetworkSecuritySettings = undefined;
        const _c = self.vtable.get_NetworkSecuritySettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71ba143c-598e-49d0-84eb-8febaedcc195";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProfileName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNetworkConnectivityLevel: *const fn(self: *anyopaque, _r: *NetworkConnectivityLevel) callconv(.winapi) HRESULT,
        GetNetworkNames: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        GetConnectionCost: *const fn(self: *anyopaque, _r: **ConnectionCost) callconv(.winapi) HRESULT,
        GetDataPlanStatus: *const fn(self: *anyopaque, _r: **DataPlanStatus) callconv(.winapi) HRESULT,
        get_NetworkAdapter: *const fn(self: *anyopaque, _r: **NetworkAdapter) callconv(.winapi) HRESULT,
        GetLocalUsage: *const fn(self: *anyopaque, StartTime: DateTime, EndTime: DateTime, _r: **DataUsage) callconv(.winapi) HRESULT,
        GetLocalUsage: *const fn(self: *anyopaque, StartTime: DateTime, EndTime: DateTime, States: RoamingStates, _r: **DataUsage) callconv(.winapi) HRESULT,
        get_NetworkSecuritySettings: *const fn(self: *anyopaque, _r: **NetworkSecuritySettings) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile2 = extern struct {
    vtable: *const VTable,
    pub fn getIsWwanConnectionProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWwanConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsWlanConnectionProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWlanConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWwanConnectionProfileDetails(self: *@This()) core.HResult!*WwanConnectionProfileDetails {
        var _r: *WwanConnectionProfileDetails = undefined;
        const _c = self.vtable.get_WwanConnectionProfileDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWlanConnectionProfileDetails(self: *@This()) core.HResult!*WlanConnectionProfileDetails {
        var _r: *WlanConnectionProfileDetails = undefined;
        const _c = self.vtable.get_WlanConnectionProfileDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*IReference(Guid) {
        var _r: *IReference(Guid) = undefined;
        const _c = self.vtable.get_ServiceProviderGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSignalBars(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.GetSignalBars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDomainConnectivityLevel(self: *@This()) core.HResult!DomainConnectivityLevel {
        var _r: DomainConnectivityLevel = undefined;
        const _c = self.vtable.GetDomainConnectivityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, granularity: DataUsageGranularity, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(NetworkUsage)) {
        var _r: *IAsyncOperation(IVectorView(NetworkUsage)) = undefined;
        const _c = self.vtable.GetNetworkUsageAsync(@ptrCast(self), startTime, endTime, granularity, states, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConnectivityIntervalsAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(ConnectivityInterval)) {
        var _r: *IAsyncOperation(IVectorView(ConnectivityInterval)) = undefined;
        const _c = self.vtable.GetConnectivityIntervalsAsync(@ptrCast(self), startTime, endTime, states, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2045145-4c9f-400c-9150-7ec7d6e2888a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsWwanConnectionProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsWlanConnectionProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_WwanConnectionProfileDetails: *const fn(self: *anyopaque, _r: **WwanConnectionProfileDetails) callconv(.winapi) HRESULT,
        get_WlanConnectionProfileDetails: *const fn(self: *anyopaque, _r: **WlanConnectionProfileDetails) callconv(.winapi) HRESULT,
        get_ServiceProviderGuid: *const fn(self: *anyopaque, _r: **IReference(Guid)) callconv(.winapi) HRESULT,
        GetSignalBars: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
        GetDomainConnectivityLevel: *const fn(self: *anyopaque, _r: *DomainConnectivityLevel) callconv(.winapi) HRESULT,
        GetNetworkUsageAsync: *const fn(self: *anyopaque, startTime: DateTime, endTime: DateTime, granularity: DataUsageGranularity, states: NetworkUsageStates, _r: **IAsyncOperation(IVectorView(NetworkUsage))) callconv(.winapi) HRESULT,
        GetConnectivityIntervalsAsync: *const fn(self: *anyopaque, startTime: DateTime, endTime: DateTime, states: NetworkUsageStates, _r: **IAsyncOperation(IVectorView(ConnectivityInterval))) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile3 = extern struct {
    vtable: *const VTable,
    pub fn GetAttributedNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(AttributedNetworkUsage)) {
        var _r: *IAsyncOperation(IVectorView(AttributedNetworkUsage)) = undefined;
        const _c = self.vtable.GetAttributedNetworkUsageAsync(@ptrCast(self), startTime, endTime, states, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "578c2528-4cd9-4161-8045-201cfd5b115c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAttributedNetworkUsageAsync: *const fn(self: *anyopaque, startTime: DateTime, endTime: DateTime, states: NetworkUsageStates, _r: **IAsyncOperation(IVectorView(AttributedNetworkUsage))) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile4 = extern struct {
    vtable: *const VTable,
    pub fn GetProviderNetworkUsageAsync(self: *@This(), startTime: DateTime, endTime: DateTime, states: NetworkUsageStates) core.HResult!*IAsyncOperation(IVectorView(ProviderNetworkUsage)) {
        var _r: *IAsyncOperation(IVectorView(ProviderNetworkUsage)) = undefined;
        const _c = self.vtable.GetProviderNetworkUsageAsync(@ptrCast(self), startTime, endTime, states, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a2d42cd-81e0-4ae6-abed-ab9ca13eb714";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetProviderNetworkUsageAsync: *const fn(self: *anyopaque, startTime: DateTime, endTime: DateTime, states: NetworkUsageStates, _r: **IAsyncOperation(IVectorView(ProviderNetworkUsage))) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile5 = extern struct {
    vtable: *const VTable,
    pub fn getCanDelete(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDelete(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(ConnectionProfileDeleteStatus) {
        var _r: *IAsyncOperation(ConnectionProfileDeleteStatus) = undefined;
        const _c = self.vtable.TryDeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85361ec7-9c73-4be0-8f14-578eec71ee0e";
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
        TryDeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ConnectionProfileDeleteStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfile6 = extern struct {
    vtable: *const VTable,
    pub fn IsDomainAuthenticatedBy(self: *@This(), kind: DomainAuthenticationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDomainAuthenticatedBy(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfile6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc27dfe2-7a6f-5d0e-9589-2fe2e5b6f9aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsDomainAuthenticatedBy: *const fn(self: *anyopaque, kind: DomainAuthenticationKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfileFilter = extern struct {
    vtable: *const VTable,
    pub fn putIsConnected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsConnected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsWwanConnectionProfile(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsWwanConnectionProfile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsWwanConnectionProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWwanConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsWlanConnectionProfile(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsWlanConnectionProfile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsWlanConnectionProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsWlanConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNetworkCostType(self: *@This(), value: NetworkCostType) core.HResult!void {
        const _c = self.vtable.put_NetworkCostType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNetworkCostType(self: *@This()) core.HResult!NetworkCostType {
        var _r: NetworkCostType = undefined;
        const _c = self.vtable.get_NetworkCostType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceProviderGuid(self: *@This(), value: *IReference(Guid)) core.HResult!void {
        const _c = self.vtable.put_ServiceProviderGuid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceProviderGuid(self: *@This()) core.HResult!*IReference(Guid) {
        var _r: *IReference(Guid) = undefined;
        const _c = self.vtable.get_ServiceProviderGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfileFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "204c7cc8-bd2d-4e8d-a4b3-455ec337388a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsConnected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsWwanConnectionProfile: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsWwanConnectionProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsWlanConnectionProfile: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsWlanConnectionProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_NetworkCostType: *const fn(self: *anyopaque, value: NetworkCostType) callconv(.winapi) HRESULT,
        get_NetworkCostType: *const fn(self: *anyopaque, _r: *NetworkCostType) callconv(.winapi) HRESULT,
        put_ServiceProviderGuid: *const fn(self: *anyopaque, value: *IReference(Guid)) callconv(.winapi) HRESULT,
        get_ServiceProviderGuid: *const fn(self: *anyopaque, _r: **IReference(Guid)) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfileFilter2 = extern struct {
    vtable: *const VTable,
    pub fn putIsRoaming(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsRoaming(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRoaming(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsRoaming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOverDataLimit(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsOverDataLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOverDataLimit(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsOverDataLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBackgroundDataUsageRestricted(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsBackgroundDataUsageRestricted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsBackgroundDataUsageRestricted(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsBackgroundDataUsageRestricted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_RawData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfileFilter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd068ee1-c3fc-4fad-9ddc-593faa4b7885";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsRoaming: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_IsRoaming: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_IsOverDataLimit: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_IsOverDataLimit: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_IsBackgroundDataUsageRestricted: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_IsBackgroundDataUsageRestricted: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        get_RawData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionProfileFilter3 = extern struct {
    vtable: *const VTable,
    pub fn putPurposeGuid(self: *@This(), value: *IReference(Guid)) core.HResult!void {
        const _c = self.vtable.put_PurposeGuid(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPurposeGuid(self: *@This()) core.HResult!*IReference(Guid) {
        var _r: *IReference(Guid) = undefined;
        const _c = self.vtable.get_PurposeGuid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionProfileFilter3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0aaa09c0-5014-447c-8809-aee4cb0af94a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PurposeGuid: *const fn(self: *anyopaque, value: *IReference(Guid)) callconv(.winapi) HRESULT,
        get_PurposeGuid: *const fn(self: *anyopaque, _r: **IReference(Guid)) callconv(.winapi) HRESULT,
    };
};
pub const IConnectionSession = extern struct {
    vtable: *const VTable,
    pub fn getConnectionProfile(self: *@This()) core.HResult!*ConnectionProfile {
        var _r: *ConnectionProfile = undefined;
        const _c = self.vtable.get_ConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectionSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff905d4c-f83b-41b0-8a0c-1462d9c56b73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionProfile: *const fn(self: *anyopaque, _r: **ConnectionProfile) callconv(.winapi) HRESULT,
    };
};
pub const IConnectivityInterval = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ConnectionDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectivityInterval";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4faa3fff-6746-4824-a964-eed8e87f8709";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ConnectionDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IConnectivityManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AcquireConnectionAsync(self: *@This(), cellularApnContext: *CellularApnContext) core.HResult!*IAsyncOperation(ConnectionSession) {
        var _r: *IAsyncOperation(ConnectionSession) = undefined;
        const _c = self.vtable.AcquireConnectionAsync(@ptrCast(self), cellularApnContext, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddHttpRoutePolicy(self: *@This(), routePolicy: *RoutePolicy) core.HResult!void {
        const _c = self.vtable.AddHttpRoutePolicy(@ptrCast(self), routePolicy);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveHttpRoutePolicy(self: *@This(), routePolicy: *RoutePolicy) core.HResult!void {
        const _c = self.vtable.RemoveHttpRoutePolicy(@ptrCast(self), routePolicy);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IConnectivityManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5120d4b1-4fb1-48b0-afc9-42e0092a8164";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AcquireConnectionAsync: *const fn(self: *anyopaque, cellularApnContext: *CellularApnContext, _r: **IAsyncOperation(ConnectionSession)) callconv(.winapi) HRESULT,
        AddHttpRoutePolicy: *const fn(self: *anyopaque, routePolicy: *RoutePolicy) callconv(.winapi) HRESULT,
        RemoveHttpRoutePolicy: *const fn(self: *anyopaque, routePolicy: *RoutePolicy) callconv(.winapi) HRESULT,
    };
};
pub const IDataPlanStatus = extern struct {
    vtable: *const VTable,
    pub fn getDataPlanUsage(self: *@This()) core.HResult!*DataPlanUsage {
        var _r: *DataPlanUsage = undefined;
        const _c = self.vtable.get_DataPlanUsage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataLimitInMegabytes(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DataLimitInMegabytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInboundBitsPerSecond(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_InboundBitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutboundBitsPerSecond(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_OutboundBitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextBillingCycle(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_NextBillingCycle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxTransferSizeInMegabytes(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxTransferSizeInMegabytes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IDataPlanStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "977a8b8c-3885-40f3-8851-42cd2bd568bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataPlanUsage: *const fn(self: *anyopaque, _r: **DataPlanUsage) callconv(.winapi) HRESULT,
        get_DataLimitInMegabytes: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_InboundBitsPerSecond: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_OutboundBitsPerSecond: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_NextBillingCycle: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_MaxTransferSizeInMegabytes: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IDataPlanUsage = extern struct {
    vtable: *const VTable,
    pub fn getMegabytesUsed(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MegabytesUsed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastSyncTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastSyncTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IDataPlanUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b921492d-3b44-47ff-b361-be59e69ed1b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MegabytesUsed: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_LastSyncTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IDataUsage = extern struct {
    vtable: *const VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesSent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IDataUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1431dd3-b146-4d39-b959-0c69b096c512";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BytesSent: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_BytesReceived: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IIPInformation = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        var _r: *NetworkAdapter = undefined;
        const _c = self.vtable.get_NetworkAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrefixLength(self: *@This()) core.HResult!*IReference(u8) {
        var _r: *IReference(u8) = undefined;
        const _c = self.vtable.get_PrefixLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IIPInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d85145e0-138f-47d7-9b3a-36bb488cef33";
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
        get_PrefixLength: *const fn(self: *anyopaque, _r: **IReference(u8)) callconv(.winapi) HRESULT,
    };
};
pub const ILanIdentifier = extern struct {
    vtable: *const VTable,
    pub fn getInfrastructureId(self: *@This()) core.HResult!*LanIdentifierData {
        var _r: *LanIdentifierData = undefined;
        const _c = self.vtable.get_InfrastructureId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPortId(self: *@This()) core.HResult!*LanIdentifierData {
        var _r: *LanIdentifierData = undefined;
        const _c = self.vtable.get_PortId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAdapterId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NetworkAdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ILanIdentifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48aa53aa-1108-4546-a6cb-9a74da4b7ba0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InfrastructureId: *const fn(self: *anyopaque, _r: **LanIdentifierData) callconv(.winapi) HRESULT,
        get_PortId: *const fn(self: *anyopaque, _r: **LanIdentifierData) callconv(.winapi) HRESULT,
        get_NetworkAdapterId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const ILanIdentifierData = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(u8) {
        var _r: *IVectorView(u8) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ILanIdentifierData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a74e83c3-d639-45be-a36a-c4e4aeaf6d9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IVectorView(u8)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkAdapter = extern struct {
    vtable: *const VTable,
    pub fn getOutboundMaxBitsPerSecond(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_OutboundMaxBitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInboundMaxBitsPerSecond(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_InboundMaxBitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIanaInterfaceType(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IanaInterfaceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkItem(self: *@This()) core.HResult!*NetworkItem {
        var _r: *NetworkItem = undefined;
        const _c = self.vtable.get_NetworkItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkAdapterId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NetworkAdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConnectedProfileAsync(self: *@This()) core.HResult!*IAsyncOperation(ConnectionProfile) {
        var _r: *IAsyncOperation(ConnectionProfile) = undefined;
        const _c = self.vtable.GetConnectedProfileAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b542e03-5388-496c-a8a3-affd39aec2e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OutboundMaxBitsPerSecond: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_InboundMaxBitsPerSecond: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_IanaInterfaceType: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NetworkItem: *const fn(self: *anyopaque, _r: **NetworkItem) callconv(.winapi) HRESULT,
        get_NetworkAdapterId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        GetConnectedProfileAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ConnectionProfile)) callconv(.winapi) HRESULT,
    };
};
pub const INetworkInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetConnectionProfiles(self: *@This()) core.HResult!*IVectorView(ConnectionProfile) {
        var _r: *IVectorView(ConnectionProfile) = undefined;
        const _c = self.vtable.GetConnectionProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetInternetConnectionProfile(self: *@This()) core.HResult!*ConnectionProfile {
        var _r: *ConnectionProfile = undefined;
        const _c = self.vtable.GetInternetConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLanIdentifiers(self: *@This()) core.HResult!*IVectorView(LanIdentifier) {
        var _r: *IVectorView(LanIdentifier) = undefined;
        const _c = self.vtable.GetLanIdentifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHostNames(self: *@This()) core.HResult!*IVectorView(HostName) {
        var _r: *IVectorView(HostName) = undefined;
        const _c = self.vtable.GetHostNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProxyConfigurationAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(ProxyConfiguration) {
        var _r: *IAsyncOperation(ProxyConfiguration) = undefined;
        const _c = self.vtable.GetProxyConfigurationAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSortedEndpointPairs(self: *@This(), destinationList: *IIterable(EndpointPair), sortOptions: HostNameSortOptions) core.HResult!*IVectorView(EndpointPair) {
        var _r: *IVectorView(EndpointPair) = undefined;
        const _c = self.vtable.GetSortedEndpointPairs(@ptrCast(self), destinationList, sortOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addNetworkStatusChanged(self: *@This(), networkStatusHandler: *NetworkStatusChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NetworkStatusChanged(@ptrCast(self), networkStatusHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNetworkStatusChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NetworkStatusChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5074f851-950d-4165-9c15-365619481eea";
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
        GetInternetConnectionProfile: *const fn(self: *anyopaque, _r: **ConnectionProfile) callconv(.winapi) HRESULT,
        GetLanIdentifiers: *const fn(self: *anyopaque, _r: **IVectorView(LanIdentifier)) callconv(.winapi) HRESULT,
        GetHostNames: *const fn(self: *anyopaque, _r: **IVectorView(HostName)) callconv(.winapi) HRESULT,
        GetProxyConfigurationAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(ProxyConfiguration)) callconv(.winapi) HRESULT,
        GetSortedEndpointPairs: *const fn(self: *anyopaque, destinationList: *IIterable(EndpointPair), sortOptions: HostNameSortOptions, _r: **IVectorView(EndpointPair)) callconv(.winapi) HRESULT,
        add_NetworkStatusChanged: *const fn(self: *anyopaque, networkStatusHandler: *NetworkStatusChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NetworkStatusChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const INetworkInformationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn FindConnectionProfilesAsync(self: *@This(), pProfileFilter: *ConnectionProfileFilter) core.HResult!*IAsyncOperation(IVectorView(ConnectionProfile)) {
        var _r: *IAsyncOperation(IVectorView(ConnectionProfile)) = undefined;
        const _c = self.vtable.FindConnectionProfilesAsync(@ptrCast(self), pProfileFilter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkInformationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "459ced14-2832-49b6-ba6e-e265f04786a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindConnectionProfilesAsync: *const fn(self: *anyopaque, pProfileFilter: *ConnectionProfileFilter, _r: **IAsyncOperation(IVectorView(ConnectionProfile))) callconv(.winapi) HRESULT,
    };
};
pub const INetworkItem = extern struct {
    vtable: *const VTable,
    pub fn getNetworkId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_NetworkId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkTypes(self: *@This()) core.HResult!NetworkTypes {
        var _r: NetworkTypes = undefined;
        const _c = self.vtable.GetNetworkTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01bc4d39-f5e0-4567-a28c-42080c831b2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        GetNetworkTypes: *const fn(self: *anyopaque, _r: *NetworkTypes) callconv(.winapi) HRESULT,
    };
};
pub const INetworkSecuritySettings = extern struct {
    vtable: *const VTable,
    pub fn getNetworkAuthenticationType(self: *@This()) core.HResult!NetworkAuthenticationType {
        var _r: NetworkAuthenticationType = undefined;
        const _c = self.vtable.get_NetworkAuthenticationType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkEncryptionType(self: *@This()) core.HResult!NetworkEncryptionType {
        var _r: NetworkEncryptionType = undefined;
        const _c = self.vtable.get_NetworkEncryptionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkSecuritySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ca07e8d-917b-4b5f-b84d-28f7a5ac5402";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NetworkAuthenticationType: *const fn(self: *anyopaque, _r: *NetworkAuthenticationType) callconv(.winapi) HRESULT,
        get_NetworkEncryptionType: *const fn(self: *anyopaque, _r: *NetworkEncryptionType) callconv(.winapi) HRESULT,
    };
};
pub const INetworkStateChangeEventDetails = extern struct {
    vtable: *const VTable,
    pub fn getHasNewInternetConnectionProfile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewInternetConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewConnectionCost(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewConnectionCost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewNetworkConnectivityLevel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewNetworkConnectivityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewDomainConnectivityLevel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewDomainConnectivityLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewHostNameList(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewHostNameList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewWwanRegistrationState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewWwanRegistrationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkStateChangeEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f0cf333-d7a6-44dd-a4e9-687c476b903d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasNewInternetConnectionProfile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewConnectionCost: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewNetworkConnectivityLevel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewDomainConnectivityLevel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewHostNameList: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewWwanRegistrationState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const INetworkStateChangeEventDetails2 = extern struct {
    vtable: *const VTable,
    pub fn getHasNewTetheringOperationalState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewTetheringOperationalState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNewTetheringClientCount(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasNewTetheringClientCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkStateChangeEventDetails2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d643c0e8-30d3-4f6a-ad47-6a1873ceb3c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasNewTetheringOperationalState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasNewTetheringClientCount: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const INetworkUsage = extern struct {
    vtable: *const VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesSent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ConnectionDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.INetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49da8fce-9985-4927-bf5b-072b5c65f8d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BytesSent: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_BytesReceived: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_ConnectionDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAdapter(self: *@This()) core.HResult!*NetworkAdapter {
        const this: *IIPInformation = @ptrCast(self);
        return try this.getNetworkAdapter();
    }
    pub fn getPrefixLength(self: *@This()) core.HResult!*IReference(u8) {
        const this: *IIPInformation = @ptrCast(self);
        return try this.getPrefixLength();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IPInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIPInformation.GUID;
    pub const IID: Guid = IIPInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIPInformation.SIGNATURE);
};
pub const IProviderNetworkUsage = extern struct {
    vtable: *const VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesSent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BytesReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProviderId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IProviderNetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ec69e04-7931-48c8-b8f3-46300fa42728";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BytesSent: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_BytesReceived: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_ProviderId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProxyConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getProxyUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        var _r: *IVectorView(Uri) = undefined;
        const _c = self.vtable.get_ProxyUris(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanConnectDirectly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanConnectDirectly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IProxyConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef3a60b4-9004-4dd6-b7d8-b3e502f4aad0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProxyUris: *const fn(self: *anyopaque, _r: **IVectorView(Uri)) callconv(.winapi) HRESULT,
        get_CanConnectDirectly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRoutePolicy = extern struct {
    vtable: *const VTable,
    pub fn getConnectionProfile(self: *@This()) core.HResult!*ConnectionProfile {
        var _r: *ConnectionProfile = undefined;
        const _c = self.vtable.get_ConnectionProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        var _r: *HostName = undefined;
        const _c = self.vtable.get_HostName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHostNameType(self: *@This()) core.HResult!DomainNameType {
        var _r: DomainNameType = undefined;
        const _c = self.vtable.get_HostNameType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IRoutePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11abc4ac-0fc7-42e4-8742-569923b1ca11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionProfile: *const fn(self: *anyopaque, _r: **ConnectionProfile) callconv(.winapi) HRESULT,
        get_HostName: *const fn(self: *anyopaque, _r: **HostName) callconv(.winapi) HRESULT,
        get_HostNameType: *const fn(self: *anyopaque, _r: *DomainNameType) callconv(.winapi) HRESULT,
    };
};
pub const IRoutePolicyFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateRoutePolicy(self: *@This(), connectionProfile: *ConnectionProfile, hostName: *HostName, type: DomainNameType) core.HResult!*RoutePolicy {
        var _r: *RoutePolicy = undefined;
        const _c = self.vtable.CreateRoutePolicy(@ptrCast(self), connectionProfile, hostName, type, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IRoutePolicyFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36027933-a18e-4db5-a697-f58fa7364e44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRoutePolicy: *const fn(self: *anyopaque, connectionProfile: *ConnectionProfile, hostName: *HostName, type: DomainNameType, _r: **RoutePolicy) callconv(.winapi) HRESULT,
    };
};
pub const IWlanConnectionProfileDetails = extern struct {
    vtable: *const VTable,
    pub fn GetConnectedSsid(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetConnectedSsid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.IWlanConnectionProfileDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "562098cb-b35a-4bf1-a884-b7557e88ff86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetConnectedSsid: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LanIdentifier = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInfrastructureId(self: *@This()) core.HResult!*LanIdentifierData {
        const this: *ILanIdentifier = @ptrCast(self);
        return try this.getInfrastructureId();
    }
    pub fn getPortId(self: *@This()) core.HResult!*LanIdentifierData {
        const this: *ILanIdentifier = @ptrCast(self);
        return try this.getPortId();
    }
    pub fn getNetworkAdapterId(self: *@This()) core.HResult!*Guid {
        const this: *ILanIdentifier = @ptrCast(self);
        return try this.getNetworkAdapterId();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.LanIdentifier";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILanIdentifier.GUID;
    pub const IID: Guid = ILanIdentifier.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILanIdentifier.SIGNATURE);
};
pub const LanIdentifierData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!u32 {
        const this: *ILanIdentifierData = @ptrCast(self);
        return try this.getType();
    }
    pub fn getValue(self: *@This()) core.HResult!*IVectorView(u8) {
        const this: *ILanIdentifierData = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.LanIdentifierData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILanIdentifierData.GUID;
    pub const IID: Guid = ILanIdentifierData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILanIdentifierData.SIGNATURE);
};
pub const NetworkAdapter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOutboundMaxBitsPerSecond(self: *@This()) core.HResult!u64 {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.getOutboundMaxBitsPerSecond();
    }
    pub fn getInboundMaxBitsPerSecond(self: *@This()) core.HResult!u64 {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.getInboundMaxBitsPerSecond();
    }
    pub fn getIanaInterfaceType(self: *@This()) core.HResult!u32 {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.getIanaInterfaceType();
    }
    pub fn getNetworkItem(self: *@This()) core.HResult!*NetworkItem {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.getNetworkItem();
    }
    pub fn getNetworkAdapterId(self: *@This()) core.HResult!*Guid {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.getNetworkAdapterId();
    }
    pub fn GetConnectedProfileAsync(self: *@This()) core.HResult!*IAsyncOperation(ConnectionProfile) {
        const this: *INetworkAdapter = @ptrCast(self);
        return try this.GetConnectedProfileAsync();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkAdapter.GUID;
    pub const IID: Guid = INetworkAdapter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkAdapter.SIGNATURE);
};
pub const NetworkAuthenticationType = enum(i32) {
    None = 0,
    Unknown = 1,
    Open80211 = 2,
    SharedKey80211 = 3,
    Wpa = 4,
    WpaPsk = 5,
    WpaNone = 6,
    Rsna = 7,
    RsnaPsk = 8,
    Ihv = 9,
    Wpa3 = 10,
    Wpa3Enterprise192Bits = 10,
    Wpa3Sae = 11,
    Owe = 12,
    Wpa3Enterprise = 13,
};
pub const NetworkConnectivityLevel = enum(i32) {
    None = 0,
    LocalAccess = 1,
    ConstrainedInternetAccess = 2,
    InternetAccess = 3,
};
pub const NetworkCostType = enum(i32) {
    Unknown = 0,
    Unrestricted = 1,
    Fixed = 2,
    Variable = 3,
};
pub const NetworkEncryptionType = enum(i32) {
    None = 0,
    Unknown = 1,
    Wep = 2,
    Wep40 = 3,
    Wep104 = 4,
    Tkip = 5,
    Ccmp = 6,
    WpaUseGroup = 7,
    RsnUseGroup = 8,
    Ihv = 9,
    Gcmp = 10,
    Gcmp256 = 11,
};
pub const NetworkInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetConnectionProfiles() core.HResult!*IVectorView(ConnectionProfile) {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetConnectionProfiles();
    }
    pub fn GetInternetConnectionProfile() core.HResult!*ConnectionProfile {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetInternetConnectionProfile();
    }
    pub fn GetLanIdentifiers() core.HResult!*IVectorView(LanIdentifier) {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetLanIdentifiers();
    }
    pub fn GetHostNames() core.HResult!*IVectorView(HostName) {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetHostNames();
    }
    pub fn GetProxyConfigurationAsync(uri: *Uri) core.HResult!*IAsyncOperation(ProxyConfiguration) {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetProxyConfigurationAsync(uri);
    }
    pub fn GetSortedEndpointPairs(destinationList: *IIterable(EndpointPair), sortOptions: HostNameSortOptions) core.HResult!*IVectorView(EndpointPair) {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.GetSortedEndpointPairs(destinationList, sortOptions);
    }
    pub fn addNetworkStatusChanged(networkStatusHandler: *NetworkStatusChangedEventHandler) core.HResult!EventRegistrationToken {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.addNetworkStatusChanged(networkStatusHandler);
    }
    pub fn removeNetworkStatusChanged(eventCookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().INetworkInformationStaticsCache.get();
        return try factory.removeNetworkStatusChanged(eventCookie);
    }
    pub fn FindConnectionProfilesAsync(pProfileFilter: *ConnectionProfileFilter) core.HResult!*IAsyncOperation(IVectorView(ConnectionProfile)) {
        const factory = @This().INetworkInformationStatics2Cache.get();
        return try factory.FindConnectionProfilesAsync(pProfileFilter);
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _INetworkInformationStaticsCache: FactoryCache(INetworkInformationStatics, RUNTIME_NAME) = .{};
    var _INetworkInformationStatics2Cache: FactoryCache(INetworkInformationStatics2, RUNTIME_NAME) = .{};
};
pub const NetworkItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkId(self: *@This()) core.HResult!*Guid {
        const this: *INetworkItem = @ptrCast(self);
        return try this.getNetworkId();
    }
    pub fn GetNetworkTypes(self: *@This()) core.HResult!NetworkTypes {
        const this: *INetworkItem = @ptrCast(self);
        return try this.GetNetworkTypes();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkItem.GUID;
    pub const IID: Guid = INetworkItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkItem.SIGNATURE);
};
pub const NetworkSecuritySettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNetworkAuthenticationType(self: *@This()) core.HResult!NetworkAuthenticationType {
        const this: *INetworkSecuritySettings = @ptrCast(self);
        return try this.getNetworkAuthenticationType();
    }
    pub fn getNetworkEncryptionType(self: *@This()) core.HResult!NetworkEncryptionType {
        const this: *INetworkSecuritySettings = @ptrCast(self);
        return try this.getNetworkEncryptionType();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkSecuritySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkSecuritySettings.GUID;
    pub const IID: Guid = INetworkSecuritySettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkSecuritySettings.SIGNATURE);
};
pub const NetworkStateChangeEventDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasNewInternetConnectionProfile(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewInternetConnectionProfile();
    }
    pub fn getHasNewConnectionCost(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewConnectionCost();
    }
    pub fn getHasNewNetworkConnectivityLevel(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewNetworkConnectivityLevel();
    }
    pub fn getHasNewDomainConnectivityLevel(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewDomainConnectivityLevel();
    }
    pub fn getHasNewHostNameList(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewHostNameList();
    }
    pub fn getHasNewWwanRegistrationState(self: *@This()) core.HResult!bool {
        const this: *INetworkStateChangeEventDetails = @ptrCast(self);
        return try this.getHasNewWwanRegistrationState();
    }
    pub fn getHasNewTetheringOperationalState(self: *@This()) core.HResult!bool {
        var this: ?*INetworkStateChangeEventDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkStateChangeEventDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasNewTetheringOperationalState();
    }
    pub fn getHasNewTetheringClientCount(self: *@This()) core.HResult!bool {
        var this: ?*INetworkStateChangeEventDetails2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INetworkStateChangeEventDetails2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHasNewTetheringClientCount();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkStateChangeEventDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkStateChangeEventDetails.GUID;
    pub const IID: Guid = INetworkStateChangeEventDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkStateChangeEventDetails.SIGNATURE);
};
pub const NetworkStatusChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkStatusChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71ba143f-598e-49d0-84eb-8febaedcc195";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const NetworkTypes = enum(i32) {
    None = 0,
    Internet = 1,
    PrivateNetwork = 2,
};
pub const NetworkUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        const this: *INetworkUsage = @ptrCast(self);
        return try this.getBytesSent();
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        const this: *INetworkUsage = @ptrCast(self);
        return try this.getBytesReceived();
    }
    pub fn getConnectionDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *INetworkUsage = @ptrCast(self);
        return try this.getConnectionDuration();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.NetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INetworkUsage.GUID;
    pub const IID: Guid = INetworkUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INetworkUsage.SIGNATURE);
};
pub const NetworkUsageStates = extern struct {
    Roaming: TriStates,
    Shared: TriStates,
};
pub const ProviderNetworkUsage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBytesSent(self: *@This()) core.HResult!u64 {
        const this: *IProviderNetworkUsage = @ptrCast(self);
        return try this.getBytesSent();
    }
    pub fn getBytesReceived(self: *@This()) core.HResult!u64 {
        const this: *IProviderNetworkUsage = @ptrCast(self);
        return try this.getBytesReceived();
    }
    pub fn getProviderId(self: *@This()) core.HResult!HSTRING {
        const this: *IProviderNetworkUsage = @ptrCast(self);
        return try this.getProviderId();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ProviderNetworkUsage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProviderNetworkUsage.GUID;
    pub const IID: Guid = IProviderNetworkUsage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProviderNetworkUsage.SIGNATURE);
};
pub const ProxyConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProxyUris(self: *@This()) core.HResult!*IVectorView(Uri) {
        const this: *IProxyConfiguration = @ptrCast(self);
        return try this.getProxyUris();
    }
    pub fn getCanConnectDirectly(self: *@This()) core.HResult!bool {
        const this: *IProxyConfiguration = @ptrCast(self);
        return try this.getCanConnectDirectly();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.ProxyConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProxyConfiguration.GUID;
    pub const IID: Guid = IProxyConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProxyConfiguration.SIGNATURE);
};
pub const RoamingStates = enum(i32) {
    None = 0,
    NotRoaming = 1,
    Roaming = 2,
};
pub const RoutePolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnectionProfile(self: *@This()) core.HResult!*ConnectionProfile {
        const this: *IRoutePolicy = @ptrCast(self);
        return try this.getConnectionProfile();
    }
    pub fn getHostName(self: *@This()) core.HResult!*HostName {
        const this: *IRoutePolicy = @ptrCast(self);
        return try this.getHostName();
    }
    pub fn getHostNameType(self: *@This()) core.HResult!DomainNameType {
        const this: *IRoutePolicy = @ptrCast(self);
        return try this.getHostNameType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateRoutePolicy(connectionProfile: *ConnectionProfile, hostName: *HostName, type: DomainNameType) core.HResult!*RoutePolicy {
        const factory = @This().IRoutePolicyFactoryCache.get();
        return try factory.CreateRoutePolicy(connectionProfile, hostName, type);
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.RoutePolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRoutePolicy.GUID;
    pub const IID: Guid = IRoutePolicy.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRoutePolicy.SIGNATURE);
    var _IRoutePolicyFactoryCache: FactoryCache(IRoutePolicyFactory, RUNTIME_NAME) = .{};
};
pub const TriStates = enum(i32) {
    DoNotCare = 0,
    No = 1,
    Yes = 2,
};
pub const WlanConnectionProfileDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetConnectedSsid(self: *@This()) core.HResult!HSTRING {
        const this: *IWlanConnectionProfileDetails = @ptrCast(self);
        return try this.GetConnectedSsid();
    }
    pub const NAME: []const u8 = "Windows.Networking.Connectivity.WlanConnectionProfileDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWlanConnectionProfileDetails.GUID;
    pub const IID: Guid = IWlanConnectionProfileDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWlanConnectionProfileDetails.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const DateTime = @import("../Foundation.zig").DateTime;
const DomainNameType = @import("../Networking.zig").DomainNameType;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const HostNameSortOptions = @import("../Networking.zig").HostNameSortOptions;
const HSTRING = @import("../root.zig").HSTRING;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAgileObject = @import("../root.zig").IAgileObject;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const HostName = @import("../Networking.zig").HostName;
const EndpointPair = @import("../Networking.zig").EndpointPair;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
