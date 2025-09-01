pub const IPackageExtension = extern struct {
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
    pub fn GetExtensionProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.GetExtensionProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetExtensionPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IPropertySet) {
        var _r: *IAsyncOperation(IPropertySet) = undefined;
        const _c = self.vtable.GetExtensionPropertiesAsync(@ptrCast(self), &_r);
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
    pub fn GetPublicFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        var _r: *IAsyncOperation(StorageFolder) = undefined;
        const _c = self.vtable.GetPublicFolderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da70c957-7ead-5c3b-9cf0-cc43faf474b4";
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
        GetExtensionProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        GetExtensionPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IPropertySet)) callconv(.winapi) HRESULT,
        GetPublicPath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetPublicFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        GetPublicFolderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorageFolder)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionCatalog = extern struct {
    vtable: *const VTable,
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        var _r: *IVectorView(PackageExtension) = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PackageExtension)) {
        var _r: *IAsyncOperation(IVectorView(PackageExtension)) = undefined;
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
    pub fn addPackageInstalled(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageInstalledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageInstalled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageInstalled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageInstalled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUpdating(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUpdating(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUpdated(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageUninstalling(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageUninstalling(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PackageStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PackageStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0879dfe6-ac30-58b2-97f9-480b07e75bfa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, _r: **IVectorView(PackageExtension)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PackageExtension))) callconv(.winapi) HRESULT,
        RequestRemovePackageAsync: *const fn(self: *anyopaque, packageFullName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_PackageInstalled: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageInstalledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageInstalled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUpdating: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUpdating: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageUninstalling: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUninstallingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageUninstalling: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PackageStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PackageStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionCatalogStatics = extern struct {
    vtable: *const VTable,
    pub fn Open(self: *@This(), packageExtensionName: HSTRING) core.HResult!*PackageExtensionCatalog {
        var _r: *PackageExtensionCatalog = undefined;
        const _c = self.vtable.Open(@ptrCast(self), packageExtensionName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionCatalogStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9588ece4-3183-5684-9e5f-27759733ddfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Open: *const fn(self: *anyopaque, packageExtensionName: HSTRING, _r: **PackageExtensionCatalog) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionPackageInstalledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        var _r: *IVectorView(PackageExtension) = undefined;
        const _c = self.vtable.get_Extensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionPackageInstalledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c9b0067-083c-5fe3-bdfb-9feb156b4118";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Extensions: *const fn(self: *anyopaque, _r: **IVectorView(PackageExtension)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionPackageStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionPackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8fee20a-680d-5942-876c-5de12df1083c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionPackageUninstallingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionPackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b8e9cb7-c539-554d-bb33-a84c0bfa3f50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionPackageUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        var _r: *IVectorView(PackageExtension) = undefined;
        const _c = self.vtable.get_Extensions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionPackageUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdc31add-16a7-509d-8bc4-fde22e856d2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Extensions: *const fn(self: *anyopaque, _r: **IVectorView(PackageExtension)) callconv(.winapi) HRESULT,
    };
};
pub const IPackageExtensionPackageUpdatingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageExtensionName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.IPackageExtensionPackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27ae2ce1-a1d3-532e-8e7e-8b43782fce09";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageExtensionName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
    };
};
pub const PackageExtension = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn GetExtensionProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.GetExtensionProperties();
    }
    pub fn GetExtensionPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IPropertySet) {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.GetExtensionPropertiesAsync();
    }
    pub fn GetPublicPath(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.GetPublicPath();
    }
    pub fn GetPublicFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.GetPublicFolder();
    }
    pub fn GetPublicFolderAsync(self: *@This()) core.HResult!*IAsyncOperation(StorageFolder) {
        const this: *IPackageExtension = @ptrCast(self);
        return try this.GetPublicFolderAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtension.GUID;
    pub const IID: Guid = IPackageExtension.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtension.SIGNATURE);
};
pub const PackageExtensionCatalog = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.FindAll();
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PackageExtension)) {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.FindAllAsync();
    }
    pub fn RequestRemovePackageAsync(self: *@This(), packageFullName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.RequestRemovePackageAsync(packageFullName);
    }
    pub fn addPackageInstalled(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageInstalledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.addPackageInstalled(handler);
    }
    pub fn removePackageInstalled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.removePackageInstalled(token);
    }
    pub fn addPackageUpdating(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.addPackageUpdating(handler);
    }
    pub fn removePackageUpdating(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.removePackageUpdating(token);
    }
    pub fn addPackageUpdated(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.addPackageUpdated(handler);
    }
    pub fn removePackageUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.removePackageUpdated(token);
    }
    pub fn addPackageUninstalling(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageUninstallingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.addPackageUninstalling(handler);
    }
    pub fn removePackageUninstalling(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.removePackageUninstalling(token);
    }
    pub fn addPackageStatusChanged(self: *@This(), handler: *TypedEventHandler(PackageExtensionCatalog,PackageExtensionPackageStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.addPackageStatusChanged(handler);
    }
    pub fn removePackageStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPackageExtensionCatalog = @ptrCast(self);
        return try this.removePackageStatusChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Open(packageExtensionName: HSTRING) core.HResult!*PackageExtensionCatalog {
        const _f = @This().IPackageExtensionCatalogStaticsCache.get();
        return try _f.Open(packageExtensionName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionCatalog";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionCatalog.GUID;
    pub const IID: Guid = IPackageExtensionCatalog.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionCatalog.SIGNATURE);
    var _IPackageExtensionCatalogStaticsCache: FactoryCache(IPackageExtensionCatalogStatics, RUNTIME_NAME) = .{};
};
pub const PackageExtensionPackageInstalledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getPackageExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        const this: *IPackageExtensionPackageInstalledEventArgs = @ptrCast(self);
        return try this.getExtensions();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionPackageInstalledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionPackageInstalledEventArgs.GUID;
    pub const IID: Guid = IPackageExtensionPackageInstalledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionPackageInstalledEventArgs.SIGNATURE);
};
pub const PackageExtensionPackageStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtensionPackageStatusChangedEventArgs = @ptrCast(self);
        return try this.getPackageExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtensionPackageStatusChangedEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionPackageStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionPackageStatusChangedEventArgs.GUID;
    pub const IID: Guid = IPackageExtensionPackageStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionPackageStatusChangedEventArgs.SIGNATURE);
};
pub const PackageExtensionPackageUninstallingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtensionPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getPackageExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtensionPackageUninstallingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionPackageUninstallingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionPackageUninstallingEventArgs.GUID;
    pub const IID: Guid = IPackageExtensionPackageUninstallingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionPackageUninstallingEventArgs.SIGNATURE);
};
pub const PackageExtensionPackageUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getPackageExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getExtensions(self: *@This()) core.HResult!*IVectorView(PackageExtension) {
        const this: *IPackageExtensionPackageUpdatedEventArgs = @ptrCast(self);
        return try this.getExtensions();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionPackageUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionPackageUpdatedEventArgs.GUID;
    pub const IID: Guid = IPackageExtensionPackageUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionPackageUpdatedEventArgs.SIGNATURE);
};
pub const PackageExtensionPackageUpdatingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageExtensionName(self: *@This()) core.HResult!HSTRING {
        const this: *IPackageExtensionPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getPackageExtensionName();
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IPackageExtensionPackageUpdatingEventArgs = @ptrCast(self);
        return try this.getPackage();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.PackageExtensions.PackageExtensionPackageUpdatingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPackageExtensionPackageUpdatingEventArgs.GUID;
    pub const IID: Guid = IPackageExtensionPackageUpdatingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPackageExtensionPackageUpdatingEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const Package = @import("../ApplicationModel.zig").Package;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const HSTRING = @import("../root.zig").HSTRING;
