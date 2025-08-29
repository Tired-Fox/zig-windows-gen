pub const CortanaActionableInsights = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.getUser();
    }
    pub fn IsAvailableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.IsAvailableAsync();
    }
    pub fn ShowInsightsForImageAsync(self: *@This(), imageStream: *IRandomAccessStreamReference) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsForImageAsync(imageStream);
    }
    pub fn ShowInsightsForImageAsync(self: *@This(), imageStream: *IRandomAccessStreamReference, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsForImageAsync(imageStream, options);
    }
    pub fn ShowInsightsForTextAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsForTextAsync(text);
    }
    pub fn ShowInsightsForTextAsync(self: *@This(), text: HSTRING, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsForTextAsync(text, options);
    }
    pub fn ShowInsightsAsync(self: *@This(), datapackage: *DataPackage) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsAsync(datapackage);
    }
    pub fn ShowInsightsAsync(self: *@This(), datapackage: *DataPackage, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        const this: *ICortanaActionableInsights = @ptrCast(self);
        return try this.ShowInsightsAsync(datapackage, options);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*CortanaActionableInsights {
        const factory = @This().ICortanaActionableInsightsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*CortanaActionableInsights {
        const factory = @This().ICortanaActionableInsightsStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.CortanaActionableInsights";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICortanaActionableInsights.GUID;
    pub const IID: Guid = ICortanaActionableInsights.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICortanaActionableInsights.SIGNATURE);
    var _ICortanaActionableInsightsStaticsCache: FactoryCache(ICortanaActionableInsightsStatics, RUNTIME_NAME) = .{};
};
pub const CortanaActionableInsightsOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        const this: *ICortanaActionableInsightsOptions = @ptrCast(self);
        return try this.getContentSourceWebLink();
    }
    pub fn putContentSourceWebLink(self: *@This(), value: *Uri) core.HResult!void {
        const this: *ICortanaActionableInsightsOptions = @ptrCast(self);
        return try this.putContentSourceWebLink(value);
    }
    pub fn getSurroundingText(self: *@This()) core.HResult!HSTRING {
        const this: *ICortanaActionableInsightsOptions = @ptrCast(self);
        return try this.getSurroundingText();
    }
    pub fn putSurroundingText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ICortanaActionableInsightsOptions = @ptrCast(self);
        return try this.putSurroundingText(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICortanaActionableInsightsOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.CortanaActionableInsightsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICortanaActionableInsightsOptions.GUID;
    pub const IID: Guid = ICortanaActionableInsightsOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICortanaActionableInsightsOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CortanaPermission = enum(i32) {
    BrowsingHistory = 0,
    Calendar = 1,
    CallHistory = 2,
    Contacts = 3,
    Email = 4,
    InputPersonalization = 5,
    Location = 6,
    Messaging = 7,
    Microphone = 8,
    Personalization = 9,
    PhoneCall = 10,
};
pub const CortanaPermissionsChangeResult = enum(i32) {
    Success = 0,
    Unavailable = 1,
    DisabledByPolicy = 2,
};
pub const CortanaPermissionsManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        const this: *ICortanaPermissionsManager = @ptrCast(self);
        return try this.IsSupported();
    }
    pub fn ArePermissionsGrantedAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(bool) {
        const this: *ICortanaPermissionsManager = @ptrCast(self);
        return try this.ArePermissionsGrantedAsync(permissions);
    }
    pub fn GrantPermissionsAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(CortanaPermissionsChangeResult) {
        const this: *ICortanaPermissionsManager = @ptrCast(self);
        return try this.GrantPermissionsAsync(permissions);
    }
    pub fn RevokePermissionsAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(CortanaPermissionsChangeResult) {
        const this: *ICortanaPermissionsManager = @ptrCast(self);
        return try this.RevokePermissionsAsync(permissions);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*CortanaPermissionsManager {
        const factory = @This().ICortanaPermissionsManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.CortanaPermissionsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICortanaPermissionsManager.GUID;
    pub const IID: Guid = ICortanaPermissionsManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICortanaPermissionsManager.SIGNATURE);
    var _ICortanaPermissionsManagerStaticsCache: FactoryCache(ICortanaPermissionsManagerStatics, RUNTIME_NAME) = .{};
};
pub const ICortanaActionableInsights = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsAvailableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsAvailableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsForImageAsync(self: *@This(), imageStream: *IRandomAccessStreamReference) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsForImageAsync(@ptrCast(self), imageStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsForImageAsync(self: *@This(), imageStream: *IRandomAccessStreamReference, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsForImageAsync(@ptrCast(self), imageStream, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsForTextAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsForTextAsync(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsForTextAsync(self: *@This(), text: HSTRING, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsForTextAsync(@ptrCast(self), text, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsAsync(self: *@This(), datapackage: *DataPackage) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsAsync(@ptrCast(self), datapackage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowInsightsAsync(self: *@This(), datapackage: *DataPackage, options: *CortanaActionableInsightsOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowInsightsAsync(@ptrCast(self), datapackage, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaActionableInsights";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "951ec6b1-fc83-586d-8b84-2452c8981625";
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
        IsAvailableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ShowInsightsForImageAsync: *const fn(self: *anyopaque, imageStream: *IRandomAccessStreamReference, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowInsightsForImageAsync: *const fn(self: *anyopaque, imageStream: *IRandomAccessStreamReference, options: *CortanaActionableInsightsOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowInsightsForTextAsync: *const fn(self: *anyopaque, text: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowInsightsForTextAsync: *const fn(self: *anyopaque, text: HSTRING, options: *CortanaActionableInsightsOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowInsightsAsync: *const fn(self: *anyopaque, datapackage: *DataPackage, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowInsightsAsync: *const fn(self: *anyopaque, datapackage: *DataPackage, options: *CortanaActionableInsightsOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICortanaActionableInsightsOptions = extern struct {
    vtable: *const VTable,
    pub fn getContentSourceWebLink(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContentSourceWebLink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentSourceWebLink(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContentSourceWebLink(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSurroundingText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SurroundingText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSurroundingText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SurroundingText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaActionableInsightsOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aac2bbcf-9782-5420-b81e-7ae56af31815";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentSourceWebLink: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContentSourceWebLink: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_SurroundingText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SurroundingText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICortanaActionableInsightsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*CortanaActionableInsights {
        var _r: *CortanaActionableInsights = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*CortanaActionableInsights {
        var _r: *CortanaActionableInsights = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaActionableInsightsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5ded412-9d2f-5cb5-9b05-356a0b836c10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **CortanaActionableInsights) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **CortanaActionableInsights) callconv(.winapi) HRESULT,
    };
};
pub const ICortanaPermissionsManager = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ArePermissionsGrantedAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ArePermissionsGrantedAsync(@ptrCast(self), permissions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GrantPermissionsAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(CortanaPermissionsChangeResult) {
        var _r: *IAsyncOperation(CortanaPermissionsChangeResult) = undefined;
        const _c = self.vtable.GrantPermissionsAsync(@ptrCast(self), permissions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RevokePermissionsAsync(self: *@This(), permissions: *IIterable(CortanaPermission)) core.HResult!*IAsyncOperation(CortanaPermissionsChangeResult) {
        var _r: *IAsyncOperation(CortanaPermissionsChangeResult) = undefined;
        const _c = self.vtable.RevokePermissionsAsync(@ptrCast(self), permissions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaPermissionsManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "191330e0-8695-438a-9545-3da4e822ddb4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ArePermissionsGrantedAsync: *const fn(self: *anyopaque, permissions: *IIterable(CortanaPermission), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GrantPermissionsAsync: *const fn(self: *anyopaque, permissions: *IIterable(CortanaPermission), _r: **IAsyncOperation(CortanaPermissionsChangeResult)) callconv(.winapi) HRESULT,
        RevokePermissionsAsync: *const fn(self: *anyopaque, permissions: *IIterable(CortanaPermission), _r: **IAsyncOperation(CortanaPermissionsChangeResult)) callconv(.winapi) HRESULT,
    };
};
pub const ICortanaPermissionsManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*CortanaPermissionsManager {
        var _r: *CortanaPermissionsManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaPermissionsManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76b1e67a-b045-4414-9d6d-2ad3a5fe3a7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **CortanaPermissionsManager) callconv(.winapi) HRESULT,
    };
};
pub const CortanaSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasUserConsentToVoiceActivation(self: *@This()) core.HResult!bool {
        const this: *ICortanaSettings = @ptrCast(self);
        return try this.getHasUserConsentToVoiceActivation();
    }
    pub fn getIsVoiceActivationEnabled(self: *@This()) core.HResult!bool {
        const this: *ICortanaSettings = @ptrCast(self);
        return try this.getIsVoiceActivationEnabled();
    }
    pub fn putIsVoiceActivationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICortanaSettings = @ptrCast(self);
        return try this.putIsVoiceActivationEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSupported() core.HResult!bool {
        const factory = @This().ICortanaSettingsStaticsCache.get();
        return try factory.IsSupported();
    }
    pub fn GetDefault() core.HResult!*CortanaSettings {
        const factory = @This().ICortanaSettingsStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.CortanaSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICortanaSettings.GUID;
    pub const IID: Guid = ICortanaSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICortanaSettings.SIGNATURE);
    var _ICortanaSettingsStaticsCache: FactoryCache(ICortanaSettingsStatics, RUNTIME_NAME) = .{};
};
pub const ICortanaSettings = extern struct {
    vtable: *const VTable,
    pub fn getHasUserConsentToVoiceActivation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasUserConsentToVoiceActivation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVoiceActivationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVoiceActivationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVoiceActivationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVoiceActivationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "54d571a7-8062-40f4-abe7-dedfd697b019";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasUserConsentToVoiceActivation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsVoiceActivationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsVoiceActivationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICortanaSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefault(self: *@This()) core.HResult!*CortanaSettings {
        var _r: *CortanaSettings = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Cortana.ICortanaSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b2ccd7e-2ec0-446d-9285-33f07ce8ac04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **CortanaSettings) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const DataPackage = @import("../ApplicationModel/DataTransfer.zig").DataPackage;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
