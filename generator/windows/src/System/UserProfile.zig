pub const ILockScreenImageFeedStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestSetImageFeedAsync(self: *@This(), syndicationFeedUri: *Uri) core.HResult!*IAsyncOperation(SetImageFeedResult) {
        var _r: *IAsyncOperation(SetImageFeedResult) = undefined;
        const _c = self.vtable.RequestSetImageFeedAsync(@ptrCast(self), syndicationFeedUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRemoveImageFeed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryRemoveImageFeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.ILockScreenImageFeedStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c0d73f6-03a9-41a6-9b01-495251ff51d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestSetImageFeedAsync: *const fn(self: *anyopaque, syndicationFeedUri: *Uri, _r: **IAsyncOperation(SetImageFeedResult)) callconv(.winapi) HRESULT,
        TryRemoveImageFeed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenStatics = extern struct {
    vtable: *const VTable,
    pub fn getOriginalImageFile(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OriginalImageFile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetImageStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.GetImageStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetImageFileAsync(self: *@This(), value: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetImageFileAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetImageStreamAsync(self: *@This(), value: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetImageStreamAsync(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.ILockScreenStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ee9d3ad-b607-40ae-b426-7631d9821269";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OriginalImageFile: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        GetImageStream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        SetImageFileAsync: *const fn(self: *anyopaque, value: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetImageStreamAsync: *const fn(self: *anyopaque, value: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const LockScreen = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestSetImageFeedAsync(syndicationFeedUri: *Uri) core.HResult!*IAsyncOperation(SetImageFeedResult) {
        const factory = @This().ILockScreenImageFeedStaticsCache.get();
        return try factory.RequestSetImageFeedAsync(syndicationFeedUri);
    }
    pub fn TryRemoveImageFeed() core.HResult!bool {
        const factory = @This().ILockScreenImageFeedStaticsCache.get();
        return try factory.TryRemoveImageFeed();
    }
    pub fn get_OriginalImageFile() core.HResult!*Uri {
        const factory = @This().ILockScreenStaticsCache.get();
        return try factory.getOriginalImageFile();
    }
    pub fn GetImageStream() core.HResult!*IRandomAccessStream {
        const factory = @This().ILockScreenStaticsCache.get();
        return try factory.GetImageStream();
    }
    pub fn SetImageFileAsync(value: *IStorageFile) core.HResult!*IAsyncAction {
        const factory = @This().ILockScreenStaticsCache.get();
        return try factory.SetImageFileAsync(value);
    }
    pub fn SetImageStreamAsync(value: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const factory = @This().ILockScreenStaticsCache.get();
        return try factory.SetImageStreamAsync(value);
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.LockScreen";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILockScreenImageFeedStaticsCache: FactoryCache(ILockScreenImageFeedStatics, RUNTIME_NAME) = .{};
    var _ILockScreenStaticsCache: FactoryCache(ILockScreenStatics, RUNTIME_NAME) = .{};
};
pub const AccountPictureKind = enum(i32) {
    SmallImage = 0,
    LargeImage = 1,
    Video = 2,
};
pub const IUserInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn getAccountPictureChangeEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AccountPictureChangeEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNameAccessAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_NameAccessAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccountPicture(self: *@This(), kind: AccountPictureKind) core.HResult!*IStorageFile {
        var _r: *IStorageFile = undefined;
        const _c = self.vtable.GetAccountPicture(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccountPictureAsync(self: *@This(), image: *IStorageFile) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        var _r: *IAsyncOperation(SetAccountPictureResult) = undefined;
        const _c = self.vtable.SetAccountPictureAsync(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccountPicturesAsync(self: *@This(), smallImage: *IStorageFile, largeImage: *IStorageFile, video: *IStorageFile) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        var _r: *IAsyncOperation(SetAccountPictureResult) = undefined;
        const _c = self.vtable.SetAccountPicturesAsync(@ptrCast(self), smallImage, largeImage, video, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccountPictureFromStreamAsync(self: *@This(), image: *IRandomAccessStream) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        var _r: *IAsyncOperation(SetAccountPictureResult) = undefined;
        const _c = self.vtable.SetAccountPictureFromStreamAsync(@ptrCast(self), image, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccountPicturesFromStreamsAsync(self: *@This(), smallImage: *IRandomAccessStream, largeImage: *IRandomAccessStream, video: *IRandomAccessStream) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        var _r: *IAsyncOperation(SetAccountPictureResult) = undefined;
        const _c = self.vtable.SetAccountPicturesFromStreamsAsync(@ptrCast(self), smallImage, largeImage, video, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAccountPictureChanged(self: *@This(), changeHandler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccountPictureChanged(@ptrCast(self), changeHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccountPictureChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccountPictureChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDisplayNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetDisplayNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFirstNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetFirstNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLastNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetLastNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPrincipalNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetPrincipalNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSessionInitiationProtocolUriAsync(self: *@This()) core.HResult!*IAsyncOperation(Uri) {
        var _r: *IAsyncOperation(Uri) = undefined;
        const _c = self.vtable.GetSessionInitiationProtocolUriAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDomainNameAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetDomainNameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IUserInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77f3a910-48fa-489c-934e-2ae85ba8f772";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccountPictureChangeEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_NameAccessAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetAccountPicture: *const fn(self: *anyopaque, kind: AccountPictureKind, _r: **IStorageFile) callconv(.winapi) HRESULT,
        SetAccountPictureAsync: *const fn(self: *anyopaque, image: *IStorageFile, _r: **IAsyncOperation(SetAccountPictureResult)) callconv(.winapi) HRESULT,
        SetAccountPicturesAsync: *const fn(self: *anyopaque, smallImage: *IStorageFile, largeImage: *IStorageFile, video: *IStorageFile, _r: **IAsyncOperation(SetAccountPictureResult)) callconv(.winapi) HRESULT,
        SetAccountPictureFromStreamAsync: *const fn(self: *anyopaque, image: *IRandomAccessStream, _r: **IAsyncOperation(SetAccountPictureResult)) callconv(.winapi) HRESULT,
        SetAccountPicturesFromStreamsAsync: *const fn(self: *anyopaque, smallImage: *IRandomAccessStream, largeImage: *IRandomAccessStream, video: *IRandomAccessStream, _r: **IAsyncOperation(SetAccountPictureResult)) callconv(.winapi) HRESULT,
        add_AccountPictureChanged: *const fn(self: *anyopaque, changeHandler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccountPictureChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetDisplayNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetFirstNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetLastNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetPrincipalNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetSessionInitiationProtocolUriAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Uri)) callconv(.winapi) HRESULT,
        GetDomainNameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const SetAccountPictureResult = enum(i32) {
    Success = 0,
    ChangeDisabled = 1,
    LargeOrDynamicError = 2,
    VideoFrameSizeError = 3,
    FileSizeError = 4,
    Failure = 5,
};
pub const SetImageFeedResult = enum(i32) {
    Success = 0,
    ChangeDisabled = 1,
    UserCanceled = 2,
};
pub const UserInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AccountPictureChangeEnabled() core.HResult!bool {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.getAccountPictureChangeEnabled();
    }
    pub fn get_NameAccessAllowed() core.HResult!bool {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.getNameAccessAllowed();
    }
    pub fn GetAccountPicture(kind: AccountPictureKind) core.HResult!*IStorageFile {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetAccountPicture(kind);
    }
    pub fn SetAccountPictureAsync(image: *IStorageFile) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.SetAccountPictureAsync(image);
    }
    pub fn SetAccountPicturesAsync(smallImage: *IStorageFile, largeImage: *IStorageFile, video: *IStorageFile) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.SetAccountPicturesAsync(smallImage, largeImage, video);
    }
    pub fn SetAccountPictureFromStreamAsync(image: *IRandomAccessStream) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.SetAccountPictureFromStreamAsync(image);
    }
    pub fn SetAccountPicturesFromStreamsAsync(smallImage: *IRandomAccessStream, largeImage: *IRandomAccessStream, video: *IRandomAccessStream) core.HResult!*IAsyncOperation(SetAccountPictureResult) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.SetAccountPicturesFromStreamsAsync(smallImage, largeImage, video);
    }
    pub fn add_AccountPictureChanged(changeHandler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.addAccountPictureChanged(changeHandler);
    }
    pub fn remove_AccountPictureChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.removeAccountPictureChanged(token);
    }
    pub fn GetDisplayNameAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetDisplayNameAsync();
    }
    pub fn GetFirstNameAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetFirstNameAsync();
    }
    pub fn GetLastNameAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetLastNameAsync();
    }
    pub fn GetPrincipalNameAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetPrincipalNameAsync();
    }
    pub fn GetSessionInitiationProtocolUriAsync() core.HResult!*IAsyncOperation(Uri) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetSessionInitiationProtocolUriAsync();
    }
    pub fn GetDomainNameAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const factory = @This().IUserInformationStaticsCache.get();
        return try factory.GetDomainNameAsync();
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.UserInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IUserInformationStaticsCache: FactoryCache(IUserInformationStatics, RUNTIME_NAME) = .{};
};
pub const AdvertisingManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AdvertisingId() core.HResult!HSTRING {
        const factory = @This().IAdvertisingManagerStaticsCache.get();
        return try factory.getAdvertisingId();
    }
    pub fn GetForUser(user: *User) core.HResult!*AdvertisingManagerForUser {
        const factory = @This().IAdvertisingManagerStatics2Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.AdvertisingManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAdvertisingManagerStaticsCache: FactoryCache(IAdvertisingManagerStatics, RUNTIME_NAME) = .{};
    var _IAdvertisingManagerStatics2Cache: FactoryCache(IAdvertisingManagerStatics2, RUNTIME_NAME) = .{};
};
pub const AdvertisingManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdvertisingId(self: *@This()) core.HResult!HSTRING {
        const this: *IAdvertisingManagerForUser = @ptrCast(self);
        return try this.getAdvertisingId();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAdvertisingManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.AdvertisingManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvertisingManagerForUser.GUID;
    pub const IID: Guid = IAdvertisingManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvertisingManagerForUser.SIGNATURE);
};
pub const AssignedAccessSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IAssignedAccessSettings = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getIsSingleAppKioskMode(self: *@This()) core.HResult!bool {
        const this: *IAssignedAccessSettings = @ptrCast(self);
        return try this.getIsSingleAppKioskMode();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IAssignedAccessSettings = @ptrCast(self);
        return try this.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*AssignedAccessSettings {
        const factory = @This().IAssignedAccessSettingsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*AssignedAccessSettings {
        const factory = @This().IAssignedAccessSettingsStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.AssignedAccessSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAssignedAccessSettings.GUID;
    pub const IID: Guid = IAssignedAccessSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAssignedAccessSettings.SIGNATURE);
    var _IAssignedAccessSettingsStaticsCache: FactoryCache(IAssignedAccessSettingsStatics, RUNTIME_NAME) = .{};
};
pub const DiagnosticsSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanUseDiagnosticsToTailorExperiences(self: *@This()) core.HResult!bool {
        const this: *IDiagnosticsSettings = @ptrCast(self);
        return try this.getCanUseDiagnosticsToTailorExperiences();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IDiagnosticsSettings = @ptrCast(self);
        return try this.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*DiagnosticsSettings {
        const factory = @This().IDiagnosticsSettingsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*DiagnosticsSettings {
        const factory = @This().IDiagnosticsSettingsStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.DiagnosticsSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiagnosticsSettings.GUID;
    pub const IID: Guid = IDiagnosticsSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiagnosticsSettings.SIGNATURE);
    var _IDiagnosticsSettingsStaticsCache: FactoryCache(IDiagnosticsSettingsStatics, RUNTIME_NAME) = .{};
};
pub const FirstSignInSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: HSTRING) core.HResult!*IInspectable {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn HasKey(self: *@This(), key: HSTRING) core.HResult!bool {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKey(key);
    }
    pub fn Split(self: *@This(), first: *IMapView(HSTRING,IInspectable), second: *IMapView(HSTRING,IInspectable)) core.HResult!void {
        var this: ?*IMapView = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapView.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Split(first, second);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,IInspectable)) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*FirstSignInSettings {
        const factory = @This().IFirstSignInSettingsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.FirstSignInSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFirstSignInSettings.GUID;
    pub const IID: Guid = IFirstSignInSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFirstSignInSettings.SIGNATURE);
    var _IFirstSignInSettingsStaticsCache: FactoryCache(IFirstSignInSettingsStatics, RUNTIME_NAME) = .{};
};
pub const GlobalizationPreferences = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Calendars() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getCalendars();
    }
    pub fn get_Clocks() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getClocks();
    }
    pub fn get_Currencies() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getCurrencies();
    }
    pub fn get_Languages() core.HResult!*IVectorView(HSTRING) {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getLanguages();
    }
    pub fn get_HomeGeographicRegion() core.HResult!HSTRING {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getHomeGeographicRegion();
    }
    pub fn get_WeekStartsOn() core.HResult!DayOfWeek {
        const factory = @This().IGlobalizationPreferencesStaticsCache.get();
        return try factory.getWeekStartsOn();
    }
    pub fn TrySetHomeGeographicRegion(region: HSTRING) core.HResult!bool {
        const factory = @This().IGlobalizationPreferencesStatics2Cache.get();
        return try factory.TrySetHomeGeographicRegion(region);
    }
    pub fn TrySetLanguages(languageTags: *IIterable(HSTRING)) core.HResult!bool {
        const factory = @This().IGlobalizationPreferencesStatics2Cache.get();
        return try factory.TrySetLanguages(languageTags);
    }
    pub fn GetForUser(user: *User) core.HResult!*GlobalizationPreferencesForUser {
        const factory = @This().IGlobalizationPreferencesStatics3Cache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.GlobalizationPreferences";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IGlobalizationPreferencesStaticsCache: FactoryCache(IGlobalizationPreferencesStatics, RUNTIME_NAME) = .{};
    var _IGlobalizationPreferencesStatics2Cache: FactoryCache(IGlobalizationPreferencesStatics2, RUNTIME_NAME) = .{};
    var _IGlobalizationPreferencesStatics3Cache: FactoryCache(IGlobalizationPreferencesStatics3, RUNTIME_NAME) = .{};
};
pub const GlobalizationPreferencesForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub fn getCalendars(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getCalendars();
    }
    pub fn getClocks(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getClocks();
    }
    pub fn getCurrencies(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getCurrencies();
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getLanguages();
    }
    pub fn getHomeGeographicRegion(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getHomeGeographicRegion();
    }
    pub fn getWeekStartsOn(self: *@This()) core.HResult!DayOfWeek {
        const this: *IGlobalizationPreferencesForUser = @ptrCast(self);
        return try this.getWeekStartsOn();
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.GlobalizationPreferencesForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalizationPreferencesForUser.GUID;
    pub const IID: Guid = IGlobalizationPreferencesForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalizationPreferencesForUser.SIGNATURE);
};
pub const IAdvertisingManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn getAdvertisingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdvertisingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IAdvertisingManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "928bf3d0-cf7c-4ab0-a7dc-6dc5bcd44252";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdvertisingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IAdvertisingManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getAdvertisingId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdvertisingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IAdvertisingManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "add3468c-a273-48cb-b346-3544522d5581";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdvertisingId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdvertisingManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AdvertisingManagerForUser {
        var _r: *AdvertisingManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IAdvertisingManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd0947af-1a6d-46b0-95bc-f3f9d6beb9fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AdvertisingManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IAssignedAccessSettings = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSingleAppKioskMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSingleAppKioskMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IAssignedAccessSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bc57f1c-e971-5757-b8e0-512f8b8c46d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSingleAppKioskMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IAssignedAccessSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AssignedAccessSettings {
        var _r: *AssignedAccessSettings = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AssignedAccessSettings {
        var _r: *AssignedAccessSettings = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IAssignedAccessSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34a81d0d-8a29-5ef3-a7be-618e6ac3bd01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AssignedAccessSettings) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AssignedAccessSettings) callconv(.winapi) HRESULT,
    };
};
pub const IDiagnosticsSettings = extern struct {
    vtable: *const VTable,
    pub fn getCanUseDiagnosticsToTailorExperiences(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanUseDiagnosticsToTailorExperiences(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IDiagnosticsSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5e9eccd-2711-44e0-973c-491d78048d24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanUseDiagnosticsToTailorExperiences: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IDiagnosticsSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*DiagnosticsSettings {
        var _r: *DiagnosticsSettings = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*DiagnosticsSettings {
        var _r: *DiagnosticsSettings = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IDiagnosticsSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72d2e80f-5390-4793-990b-3ccc7d6ac9c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **DiagnosticsSettings) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **DiagnosticsSettings) callconv(.winapi) HRESULT,
    };
};
pub const IFirstSignInSettings = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.System.UserProfile.IFirstSignInSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e945153-3a5e-452e-a601-f5baad2a4870";
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
pub const IFirstSignInSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*FirstSignInSettings {
        var _r: *FirstSignInSettings = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IFirstSignInSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ce18f0f-1c41-4ea0-b7a2-6f0c1c7e8438";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **FirstSignInSettings) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalizationPreferencesForUser = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCalendars(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Calendars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClocks(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Clocks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencies(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Currencies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHomeGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HomeGeographicRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekStartsOn(self: *@This()) core.HResult!DayOfWeek {
        var _r: DayOfWeek = undefined;
        const _c = self.vtable.get_WeekStartsOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IGlobalizationPreferencesForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "150f0795-4f6e-40ba-a010-e27d81bda7f5";
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
        get_Calendars: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Clocks: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Currencies: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_HomeGeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekStartsOn: *const fn(self: *anyopaque, _r: *DayOfWeek) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalizationPreferencesStatics = extern struct {
    vtable: *const VTable,
    pub fn getCalendars(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Calendars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClocks(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Clocks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencies(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Currencies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguages(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Languages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHomeGeographicRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HomeGeographicRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekStartsOn(self: *@This()) core.HResult!DayOfWeek {
        var _r: DayOfWeek = undefined;
        const _c = self.vtable.get_WeekStartsOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IGlobalizationPreferencesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01bf4326-ed37-4e96-b0e9-c1340d1ea158";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Calendars: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Clocks: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Currencies: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Languages: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_HomeGeographicRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekStartsOn: *const fn(self: *anyopaque, _r: *DayOfWeek) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalizationPreferencesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TrySetHomeGeographicRegion(self: *@This(), region: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetHomeGeographicRegion(@ptrCast(self), region, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetLanguages(self: *@This(), languageTags: *IIterable(HSTRING)) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetLanguages(@ptrCast(self), languageTags, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IGlobalizationPreferencesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcce85f1-4300-4cd0-9cac-1a8e7b7e18f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetHomeGeographicRegion: *const fn(self: *anyopaque, region: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        TrySetLanguages: *const fn(self: *anyopaque, languageTags: *IIterable(HSTRING), _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalizationPreferencesStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*GlobalizationPreferencesForUser {
        var _r: *GlobalizationPreferencesForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IGlobalizationPreferencesStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e059733-35f5-40d8-b9e8-aef3ef856fce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **GlobalizationPreferencesForUser) callconv(.winapi) HRESULT,
    };
};
pub const IUserProfilePersonalizationSettings = extern struct {
    vtable: *const VTable,
    pub fn TrySetLockScreenImageAsync(self: *@This(), imageFile: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetLockScreenImageAsync(@ptrCast(self), imageFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetWallpaperImageAsync(self: *@This(), imageFile: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetWallpaperImageAsync(@ptrCast(self), imageFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IUserProfilePersonalizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ceddab4-7998-46d5-8dd3-184f1c5f9ab9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TrySetLockScreenImageAsync: *const fn(self: *anyopaque, imageFile: *StorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetWallpaperImageAsync: *const fn(self: *anyopaque, imageFile: *StorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IUserProfilePersonalizationSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*UserProfilePersonalizationSettings {
        var _r: *UserProfilePersonalizationSettings = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.IUserProfilePersonalizationSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91acb841-5037-454b-9883-bb772d08dd16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **UserProfilePersonalizationSettings) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const UserProfilePersonalizationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TrySetLockScreenImageAsync(self: *@This(), imageFile: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserProfilePersonalizationSettings = @ptrCast(self);
        return try this.TrySetLockScreenImageAsync(imageFile);
    }
    pub fn TrySetWallpaperImageAsync(self: *@This(), imageFile: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        const this: *IUserProfilePersonalizationSettings = @ptrCast(self);
        return try this.TrySetWallpaperImageAsync(imageFile);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Current() core.HResult!*UserProfilePersonalizationSettings {
        const factory = @This().IUserProfilePersonalizationSettingsStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().IUserProfilePersonalizationSettingsStaticsCache.get();
        return try factory.IsSupported();
    }
    pub const NAME: []const u8 = "Windows.System.UserProfile.UserProfilePersonalizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUserProfilePersonalizationSettings.GUID;
    pub const IID: Guid = IUserProfilePersonalizationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUserProfilePersonalizationSettings.SIGNATURE);
    var _IUserProfilePersonalizationSettingsStaticsCache: FactoryCache(IUserProfilePersonalizationSettingsStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const HSTRING = @import("../root.zig").HSTRING;
const Guid = @import("../root.zig").Guid;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const StorageFile = @import("../Storage.zig").StorageFile;
const Uri = @import("../Foundation.zig").Uri;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const DayOfWeek = @import("../Globalization.zig").DayOfWeek;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
