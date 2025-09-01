pub const AppExtension = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtension = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtension = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtension = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtension = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        const this: *IAppExtension = @ptrCast(self);
        return try this.getAppInfo();
    }
    pub fn GetExtensionPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IPropertySet) {
        const this: *IAppExtension = @ptrCast(self);
        return try this.GetExtensionPropertiesAsync();
    }
    pub fn GetPublicFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IAppExtension = @ptrCast(self);
        return try this.GetPublicFolderAsync();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppExtension2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppExtension2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppUserModelId();
    }
    pub fn GetExtensionProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IAppExtension3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppExtension3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetExtensionProperties();
    }
    pub fn GetPublicPath(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppExtension3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppExtension3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPublicPath();
    }
    pub fn GetPublicFolder(self: *@This()) core.HResult!*StorageFolder {
        var this: ?*IAppExtension3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppExtension3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPublicFolder();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtension.GUID;
    pub const IID: Guid = IAppExtension.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtension.SIGNATURE);
};
pub const AppExtensionCatalog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppExtension)) {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.FindAllAsync();
    }
    pub fn RequestRemovePackageAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.RequestRemovePackageAsync(packageFullName);
    }
    pub fn addPackageInstalled(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageInstalledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.addPackageInstalled(handler);
    }
    pub fn removePackageInstalled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.removePackageInstalled(token);
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.addPackageUpdating(handler);
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.removePackageUpdating(token);
    }
    pub fn addPackageUpdated(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.addPackageUpdated(handler);
    }
    pub fn removePackageUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.removePackageUpdated(token);
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.addPackageUninstalling(handler);
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.removePackageUninstalling(token);
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.addPackageStatusChanged(handler);
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppExtensionCatalog = @ptrCast(self);
        return try this.removePackageStatusChanged(token);
    }
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        var this: ?*IAppExtensionCatalog2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppExtensionCatalog2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindAll();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Open(appExtensionName: HSTRING) core.HResult!*AppExtensionCatalog {
        const _f = @This().IAppExtensionCatalogStaticsCache.get();
        return try _f.Open(appExtensionName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionCatalog.GUID;
    pub const IID: Guid = IAppExtensionCatalog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionCatalog.SIGNATURE);
    var _IAppExtensionCatalogStaticsCache: FactoryCache(IAppExtensionCatalogStatics, RUNTIME_NAME) = .{};
};
pub const AppExtensionPackageInstalledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getAppExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        const this: *IAppExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getExtensions();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionPackageInstalledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionPackageInstalledEventArgs.GUID;
    pub const IID: Guid = IAppExtensionPackageInstalledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionPackageInstalledEventArgs.SIGNATURE);
};
pub const AppExtensionPackageStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtensionPackageStatusChangedEventArgs = @ptrCast(self);
        return try this.getAppExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtensionPackageStatusChangedEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionPackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionPackageStatusChangedEventArgs.GUID;
    pub const IID: Guid = IAppExtensionPackageStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionPackageStatusChangedEventArgs.SIGNATURE);
};
pub const AppExtensionPackageUninstallingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtensionPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getAppExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtensionPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionPackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionPackageUninstallingEventArgs.GUID;
    pub const IID: Guid = IAppExtensionPackageUninstallingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionPackageUninstallingEventArgs.SIGNATURE);
};
pub const AppExtensionPackageUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getAppExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        const this: *IAppExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getExtensions();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionPackageUpdatedEventArgs.GUID;
    pub const IID: Guid = IAppExtensionPackageUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionPackageUpdatedEventArgs.SIGNATURE);
};
pub const AppExtensionPackageUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppExtensionPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getAppExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IAppExtensionPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.AppExtensionPackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppExtensionPackageUpdatingEventArgs.GUID;
    pub const IID: Guid = IAppExtensionPackageUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppExtensionPackageUpdatingEventArgs.SIGNATURE);
};
pub const IAppExtension = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_AppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetExtensionPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IPropertySet) {
        var _r: *IAsyncOperation(IPropertySet) = undefined;
        const _c = self.vtable.GetExtensionPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPublicFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetPublicFolderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8450902c-15ed-4faf-93ea-2237bbf8cbd6";
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
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_AppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
        GetExtensionPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IPropertySet)) callconv(.winapi) HRESULT,
        GetPublicFolderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtension2 = extern struct {
    vtable: *const VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtension2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab3b15f0-14f9-4b9f-9419-a349a242ef38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtension3 = extern struct {
    vtable: *const VTable,
    pub fn GetExtensionProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.GetExtensionProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPublicPath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetPublicPath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPublicFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.GetPublicFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtension3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5923c101-aa38-4009-84d9-5b54a0df30ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetExtensionProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        GetPublicPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPublicFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionCatalog = extern struct {
    vtable: *const VTable,
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(AppExtension)) {
        var _r: *IAsyncOperation(IVectorView(AppExtension)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRemovePackageAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestRemovePackageAsync(@ptrCast(self), packageFullName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPackageInstalled(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageInstalledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageInstalled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageInstalled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageInstalled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUpdating(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUpdated(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUninstalling(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUninstalling(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97872032-8426-4ad1-9084-92e88c2da200";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(AppExtension))) callconv(.winapi) HRESULT,
        RequestRemovePackageAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_PackageInstalled: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageInstalledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageInstalled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUpdating: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUninstalling: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageUninstallingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUninstalling: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppExtensionCatalog,AppExtensionPackageStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionCatalog2 = extern struct {
    vtable: *const VTable,
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        var _r: *IVectorView(AppExtension) = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionCatalog2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50056eba-58b6-4147-b5a5-8feca6dfb49d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, _r: **IVectorView(AppExtension)) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionCatalogStatics = extern struct {
    vtable: *const VTable,
    pub fn Open(self: *@This(), appExtensionName: HSTRING) core.HResult!*AppExtensionCatalog {
        var _r: *AppExtensionCatalog = undefined;
        const _c = self.vtable.Open(@ptrCast(self), appExtensionName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionCatalogStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c36668a-5f18-4f0b-9ce5-cab61d196f11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Open: *const fn(self: *anyopaque, appExtensionName: HSTRING, _r: **AppExtensionCatalog) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionPackageInstalledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        var _r: *IVectorView(AppExtension) = undefined;
        const _c = self.vtable.get_Extensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionPackageInstalledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39e59234-3351-4a8d-9745-e7d3dd45bc48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Extensions: *const fn(self: *anyopaque, _r: **IVectorView(AppExtension)) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionPackageStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionPackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ce17433-1153-44fd-87b1-8ae1050303df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionPackageUninstallingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60f160c5-171e-40ff-ae98-ab2c20dd4d75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionPackageUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(AppExtension) {
        var _r: *IVectorView(AppExtension) = undefined;
        const _c = self.vtable.get_Extensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a83c43f-797e-44b5-ba24-a4c8b5a543d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Extensions: *const fn(self: *anyopaque, _r: **IVectorView(AppExtension)) callconv(.winapi) HRESULT,
    };
};
pub const IAppExtensionPackageUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAppExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.AppExtensions.IAppExtensionPackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ed59329-1a65-4800-a700-b321009e306a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const AppInfo = @import("../ApplicationModel.zig").AppInfo;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const Package = @import("../ApplicationModel.zig").Package;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const HSTRING = @import("../root.zig").HSTRING;
