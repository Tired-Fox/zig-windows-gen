pub const IKnownRemoteSystemCapabilitiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getAppService(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppService(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaunchUri(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LaunchUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemoteSession(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpatialEntity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SpatialEntity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IKnownRemoteSystemCapabilitiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8108e380-7f8a-44e4-92cd-03b6469b94a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppService: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LaunchUri: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RemoteSession: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SpatialEntity: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemStatus {
        var _r: RemoteSystemStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAvailableByProximity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailableByProximity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed5838cd-1e10-4a8c-b4a6-4e5fd6f97721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *RemoteSystemStatus) callconv(.winapi) HRESULT,
        get_IsAvailableByProximity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAvailableBySpatialProximity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailableBySpatialProximity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapabilitySupportedAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetCapabilitySupportedAsync(@ptrCast(self), capabilityName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09dfe4ec-fb8b-4a08-a758-6876435d769e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAvailableBySpatialProximity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetCapabilitySupportedAsync: *const fn(self: *anyopaque, capabilityName: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem3 = extern struct {
    vtable: *const VTable,
    pub fn getManufacturerDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ManufacturerDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72b4b495-b7c6-40be-831b-73562f12ffa8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ManufacturerDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem4 = extern struct {
    vtable: *const VTable,
    pub fn getPlatform(self: *@This()) core.HResult!RemoteSystemPlatform {
        var _r: RemoteSystemPlatform = undefined;
        const _c = self.vtable.get_Platform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f164ffe5-b987-4ca5-9926-fa0438be6273";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Platform: *const fn(self: *anyopaque, _r: *RemoteSystemPlatform) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem5 = extern struct {
    vtable: *const VTable,
    pub fn getApps(self: *@This()) core.HResult!*IVectorView(RemoteSystemApp) {
        var _r: *IVectorView(RemoteSystemApp) = undefined;
        const _c = self.vtable.get_Apps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb2ad723-e5e2-4ae2-a7a7-a1097a098e90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Apps: *const fn(self: *anyopaque, _r: **IVectorView(RemoteSystemApp)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystem6 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystem6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4cda942-c027-533e-9384-3a19b4f7eef3";
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
pub const IRemoteSystemAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        var _r: *RemoteSystem = undefined;
        const _c = self.vtable.get_RemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f39560f-e534-4697-8836-7abea151516e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystem: *const fn(self: *anyopaque, _r: **RemoteSystem) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemApp = extern struct {
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
    pub fn getIsAvailableByProximity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailableByProximity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAvailableBySpatialProximity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailableBySpatialProximity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributes(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Attributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80e5bcbd-d54d-41b1-9b16-6810a871ed4f";
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
        get_IsAvailableByProximity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAvailableBySpatialProximity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Attributes: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemApp2 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnectionToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConnectionToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemApp2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6369bf15-0a96-577a-8ff6-c35904dfa8f3";
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
        get_ConnectionToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemAppRegistration = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributes(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Attributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemAppRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b47947b5-7035-4a5a-b8df-962d8f8431f4";
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
        get_Attributes: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemAppRegistrationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*RemoteSystemAppRegistration {
        var _r: *RemoteSystemAppRegistration = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*RemoteSystemAppRegistration {
        var _r: *RemoteSystemAppRegistration = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemAppRegistrationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01b99840-cfd2-453f-ae25-c2539f086afd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **RemoteSystemAppRegistration) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **RemoteSystemAppRegistration) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemAuthorizationKindFilter = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemAuthorizationKind(self: *@This()) core.HResult!RemoteSystemAuthorizationKind {
        var _r: RemoteSystemAuthorizationKind = undefined;
        const _c = self.vtable.get_RemoteSystemAuthorizationKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b0dde8e-04d0-40f4-a27f-c2acbbd6b734";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemAuthorizationKind: *const fn(self: *anyopaque, _r: *RemoteSystemAuthorizationKind) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemAuthorizationKindFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), remoteSystemAuthorizationKind: RemoteSystemAuthorizationKind) core.HResult!*RemoteSystemAuthorizationKindFilter {
        var _r: *RemoteSystemAuthorizationKindFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), remoteSystemAuthorizationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemAuthorizationKindFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad65df4d-b66a-45a4-8177-8caed75d9e5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, remoteSystemAuthorizationKind: RemoteSystemAuthorizationKind, _r: **RemoteSystemAuthorizationKindFilter) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionInfo = extern struct {
    vtable: *const VTable,
    pub fn getIsProximal(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProximal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23278bc3-0d09-52cb-9c6a-eed2940bee43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsProximal: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCreateFromAppServiceConnection(self: *@This(), connection: *AppServiceConnection) core.HResult!*RemoteSystemConnectionInfo {
        var _r: *RemoteSystemConnectionInfo = undefined;
        const _c = self.vtable.TryCreateFromAppServiceConnection(@ptrCast(self), connection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac831e2d-66c5-56d7-a4ce-705d94925ad6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateFromAppServiceConnection: *const fn(self: *anyopaque, connection: *AppServiceConnection, _r: **RemoteSystemConnectionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequest = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        var _r: *RemoteSystem = undefined;
        const _c = self.vtable.get_RemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84ed4104-8d5e-4d72-8238-7621576c7a67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystem: *const fn(self: *anyopaque, _r: **RemoteSystem) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequest2 = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemApp(self: *@This()) core.HResult!*RemoteSystemApp {
        var _r: *RemoteSystemApp = undefined;
        const _c = self.vtable.get_RemoteSystemApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12df6d6f-bffc-483a-8abe-d34a6c19f92b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemApp: *const fn(self: *anyopaque, _r: **RemoteSystemApp) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequest3 = extern struct {
    vtable: *const VTable,
    pub fn getConnectionToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConnectionToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequest3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de86c3e7-c9cc-5a50-b8d9-ba7b34bb8d0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConnectionToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), remoteSystem: *RemoteSystem) core.HResult!*RemoteSystemConnectionRequest {
        var _r: *RemoteSystemConnectionRequest = undefined;
        const _c = self.vtable.Create(@ptrCast(self), remoteSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa0a0a20-baeb-4575-b530-810bb9786334";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, remoteSystem: *RemoteSystem, _r: **RemoteSystemConnectionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequestStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForApp(self: *@This(), remoteSystemApp: *RemoteSystemApp) core.HResult!*RemoteSystemConnectionRequest {
        var _r: *RemoteSystemConnectionRequest = undefined;
        const _c = self.vtable.CreateForApp(@ptrCast(self), remoteSystemApp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequestStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86ca143d-8214-425c-8932-db49032d1306";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForApp: *const fn(self: *anyopaque, remoteSystemApp: *RemoteSystemApp, _r: **RemoteSystemConnectionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemConnectionRequestStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromConnectionToken(self: *@This(), connectionToken: HSTRING) core.HResult!*RemoteSystemConnectionRequest {
        var _r: *RemoteSystemConnectionRequest = undefined;
        const _c = self.vtable.CreateFromConnectionToken(@ptrCast(self), connectionToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromConnectionTokenForUser(self: *@This(), user: *User, connectionToken: HSTRING) core.HResult!*RemoteSystemConnectionRequest {
        var _r: *RemoteSystemConnectionRequest = undefined;
        const _c = self.vtable.CreateFromConnectionTokenForUser(@ptrCast(self), user, connectionToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemConnectionRequestStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "460f1027-64ec-598e-a800-4f2ee58def19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromConnectionToken: *const fn(self: *anyopaque, connectionToken: HSTRING, _r: **RemoteSystemConnectionRequest) callconv(.winapi) HRESULT,
        CreateFromConnectionTokenForUser: *const fn(self: *anyopaque, user: *User, connectionToken: HSTRING, _r: **RemoteSystemConnectionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemDiscoveryTypeFilter = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemDiscoveryType(self: *@This()) core.HResult!RemoteSystemDiscoveryType {
        var _r: RemoteSystemDiscoveryType = undefined;
        const _c = self.vtable.get_RemoteSystemDiscoveryType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42d9041f-ee5a-43da-ac6a-6fee25460741";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemDiscoveryType: *const fn(self: *anyopaque, _r: *RemoteSystemDiscoveryType) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemDiscoveryTypeFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), discoveryType: RemoteSystemDiscoveryType) core.HResult!*RemoteSystemDiscoveryTypeFilter {
        var _r: *RemoteSystemDiscoveryTypeFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), discoveryType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemDiscoveryTypeFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f9eb993-c260-4161-92f2-9c021f23fe5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, discoveryType: RemoteSystemDiscoveryType, _r: **RemoteSystemDiscoveryTypeFilter) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemEnumerationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemEnumerationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6e83d5f-4030-4354-a060-14f1b22c545d";
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
pub const IRemoteSystemFilter = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a3ba9e4-99eb-45eb-ba16-0367728ff374";
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
pub const IRemoteSystemKindFilter = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemKinds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_RemoteSystemKinds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemKindFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38e1c9ec-22c3-4ef6-901a-bbb1c7aad4ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemKinds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemKindFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), remoteSystemKinds: *IIterable(HSTRING)) core.HResult!*RemoteSystemKindFilter {
        var _r: *RemoteSystemKindFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), remoteSystemKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemKindFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1fb18ee-99ea-40bc-9a39-c670aa804a28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, remoteSystemKinds: *IIterable(HSTRING), _r: **RemoteSystemKindFilter) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemKindStatics = extern struct {
    vtable: *const VTable,
    pub fn getPhone(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Phone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHub(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hub(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHolographic(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Holographic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesktop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Desktop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXbox(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Xbox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemKindStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6317633-ab14-41d0-9553-796aadb882db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Phone: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hub: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Holographic: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Desktop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Xbox: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemKindStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIot(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Iot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTablet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tablet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLaptop(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Laptop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemKindStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9e3a3d0-0466-4749-91e8-65f9d19a96a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Iot: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Tablet: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Laptop: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteSystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b3d16bb-7306-49ea-b7df-67d5714cb013";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSession = extern struct {
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
    pub fn getControllerDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ControllerDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(RemoteSystemSession,RemoteSystemSessionDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Disconnected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Disconnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateParticipantWatcher(self: *@This()) core.HResult!*RemoteSystemSessionParticipantWatcher {
        var _r: *RemoteSystemSessionParticipantWatcher = undefined;
        const _c = self.vtable.CreateParticipantWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendInvitationAsync(self: *@This(), invitee: *RemoteSystem) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SendInvitationAsync(@ptrCast(self), invitee, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69476a01-9ada-490f-9549-d31cb14c9e95";
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
        get_ControllerDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_Disconnected: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSession,RemoteSystemSessionDisconnectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Disconnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateParticipantWatcher: *const fn(self: *anyopaque, _r: **RemoteSystemSessionParticipantWatcher) callconv(.winapi) HRESULT,
        SendInvitationAsync: *const fn(self: *anyopaque, invitee: *RemoteSystem, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        var _r: *RemoteSystemSessionInfo = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d585d754-bc97-4c39-99b4-beca76e04c3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **RemoteSystemSessionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionController = extern struct {
    vtable: *const VTable,
    pub fn addJoinRequested(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionController,RemoteSystemSessionJoinRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_JoinRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeJoinRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_JoinRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveParticipantAsync(self: *@This(), pParticipant: *RemoteSystemSessionParticipant) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RemoveParticipantAsync(@ptrCast(self), pParticipant, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSessionAsync(self: *@This()) core.HResult!*IAsyncOperation(RemoteSystemSessionCreationResult) {
        var _r: *IAsyncOperation(RemoteSystemSessionCreationResult) = undefined;
        const _c = self.vtable.CreateSessionAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e48b2dd2-6820-4867-b425-d89c0a3ef7ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_JoinRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionController,RemoteSystemSessionJoinRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_JoinRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RemoveParticipantAsync: *const fn(self: *anyopaque, pParticipant: *RemoteSystemSessionParticipant, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        CreateSessionAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RemoteSystemSessionCreationResult)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionControllerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateController(self: *@This(), displayName: HSTRING) core.HResult!*RemoteSystemSessionController {
        var _r: *RemoteSystemSessionController = undefined;
        const _c = self.vtable.CreateController(@ptrCast(self), displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateController(self: *@This(), displayName: HSTRING, options: *RemoteSystemSessionOptions) core.HResult!*RemoteSystemSessionController {
        var _r: *RemoteSystemSessionController = undefined;
        const _c = self.vtable.CreateController(@ptrCast(self), displayName, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionControllerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfcc2f6b-ac3d-4199-82cd-6670a773ef2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateController: *const fn(self: *anyopaque, displayName: HSTRING, _r: **RemoteSystemSessionController) callconv(.winapi) HRESULT,
        CreateController: *const fn(self: *anyopaque, displayName: HSTRING, options: *RemoteSystemSessionOptions, _r: **RemoteSystemSessionController) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionCreationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionCreationStatus {
        var _r: RemoteSystemSessionCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        var _r: *RemoteSystemSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a79812c2-37de-448c-8b83-a30aa3c4ead6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *RemoteSystemSessionCreationStatus) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **RemoteSystemSession) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionDisconnectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!RemoteSystemSessionDisconnectedReason {
        var _r: RemoteSystemSessionDisconnectedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de0bc69b-77c5-461c-8209-7c6c5d3111ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *RemoteSystemSessionDisconnectedReason) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControllerDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ControllerDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn JoinAsync(self: *@This()) core.HResult!*IAsyncOperation(RemoteSystemSessionJoinResult) {
        var _r: *IAsyncOperation(RemoteSystemSessionJoinResult) = undefined;
        const _c = self.vtable.JoinAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff4df648-8b0a-4e9a-9905-69e4b841c588";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ControllerDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        JoinAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RemoteSystemSessionJoinResult)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionInvitation = extern struct {
    vtable: *const VTable,
    pub fn getSender(self: *@This()) core.HResult!*RemoteSystem {
        var _r: *RemoteSystem = undefined;
        const _c = self.vtable.get_Sender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        var _r: *RemoteSystemSessionInfo = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionInvitation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e32cc91-51d7-4766-a121-25516c3b8294";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Sender: *const fn(self: *anyopaque, _r: **RemoteSystem) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **RemoteSystemSessionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionInvitationListener = extern struct {
    vtable: *const VTable,
    pub fn addInvitationReceived(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionInvitationListener,RemoteSystemSessionInvitationReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InvitationReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInvitationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InvitationReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionInvitationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08f4003f-bc71-49e1-874a-31ddff9a27b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_InvitationReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionInvitationListener,RemoteSystemSessionInvitationReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InvitationReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionInvitationReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInvitation(self: *@This()) core.HResult!*RemoteSystemSessionInvitation {
        var _r: *RemoteSystemSessionInvitation = undefined;
        const _c = self.vtable.get_Invitation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionInvitationReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e964a2d-a10d-4edb-8dea-54d20ac19543";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Invitation: *const fn(self: *anyopaque, _r: **RemoteSystemSessionInvitation) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionJoinRequest = extern struct {
    vtable: *const VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        var _r: *RemoteSystemSessionParticipant = undefined;
        const _c = self.vtable.get_Participant(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const _c = self.vtable.Accept(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20600068-7994-4331-86d1-d89d882585ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Participant: *const fn(self: *anyopaque, _r: **RemoteSystemSessionParticipant) callconv(.winapi) HRESULT,
        Accept: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionJoinRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getJoinRequest(self: *@This()) core.HResult!*RemoteSystemSessionJoinRequest {
        var _r: *RemoteSystemSessionJoinRequest = undefined;
        const _c = self.vtable.get_JoinRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionJoinRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbca4fc3-82b9-4816-9c24-e40e61774bd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_JoinRequest: *const fn(self: *anyopaque, _r: **RemoteSystemSessionJoinRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionJoinResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionJoinStatus {
        var _r: RemoteSystemSessionJoinStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        var _r: *RemoteSystemSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionJoinResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce7b1f04-a03e-41a4-900b-1e79328c1267";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *RemoteSystemSessionJoinStatus) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **RemoteSystemSession) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionMessageChannel = extern struct {
    vtable: *const VTable,
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        var _r: *RemoteSystemSession = undefined;
        const _c = self.vtable.get_Session(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BroadcastValueSetAsync(self: *@This(), messageData: *ValueSet) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.BroadcastValueSetAsync(@ptrCast(self), messageData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendValueSetAsync(self: *@This(), messageData: *ValueSet, participant: *RemoteSystemSessionParticipant) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SendValueSetAsync(@ptrCast(self), messageData, participant, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendValueSetToParticipantsAsync(self: *@This(), messageData: *ValueSet, participants: *IIterable(RemoteSystemSessionParticipant)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SendValueSetToParticipantsAsync(@ptrCast(self), messageData, participants, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addValueSetReceived(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionMessageChannel,RemoteSystemSessionValueSetReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValueSetReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValueSetReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValueSetReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9524d12a-73d9-4c10-b751-c26784437127";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Session: *const fn(self: *anyopaque, _r: **RemoteSystemSession) callconv(.winapi) HRESULT,
        BroadcastValueSetAsync: *const fn(self: *anyopaque, messageData: *ValueSet, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SendValueSetAsync: *const fn(self: *anyopaque, messageData: *ValueSet, participant: *RemoteSystemSessionParticipant, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SendValueSetToParticipantsAsync: *const fn(self: *anyopaque, messageData: *ValueSet, participants: *IIterable(RemoteSystemSessionParticipant), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_ValueSetReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionMessageChannel,RemoteSystemSessionValueSetReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValueSetReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionMessageChannelFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), session: *RemoteSystemSession, channelName: HSTRING) core.HResult!*RemoteSystemSessionMessageChannel {
        var _r: *RemoteSystemSessionMessageChannel = undefined;
        const _c = self.vtable.Create(@ptrCast(self), session, channelName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Create(self: *@This(), session: *RemoteSystemSession, channelName: HSTRING, reliability: RemoteSystemSessionMessageChannelReliability) core.HResult!*RemoteSystemSessionMessageChannel {
        var _r: *RemoteSystemSessionMessageChannel = undefined;
        const _c = self.vtable.Create(@ptrCast(self), session, channelName, reliability, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionMessageChannelFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "295e1c4a-bd16-4298-b7ce-415482b0e11d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, session: *RemoteSystemSession, channelName: HSTRING, _r: **RemoteSystemSessionMessageChannel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, session: *RemoteSystemSession, channelName: HSTRING, reliability: RemoteSystemSessionMessageChannelReliability, _r: **RemoteSystemSessionMessageChannel) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionOptions = extern struct {
    vtable: *const VTable,
    pub fn getIsInviteOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInviteOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInviteOnly(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInviteOnly(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "740ed755-8418-4f01-9353-e21c9ecc6cfc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsInviteOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInviteOnly: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionParticipant = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        var _r: *RemoteSystem = undefined;
        const _c = self.vtable.get_RemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHostNames(self: *@This()) core.HResult!*IVectorView(HostName) {
        var _r: *IVectorView(HostName) = undefined;
        const _c = self.vtable.GetHostNames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionParticipant";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e90058c-acf9-4729-8a17-44e7baed5dcc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystem: *const fn(self: *anyopaque, _r: **RemoteSystem) callconv(.winapi) HRESULT,
        GetHostNames: *const fn(self: *anyopaque, _r: **IVectorView(HostName)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionParticipantAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        var _r: *RemoteSystemSessionParticipant = undefined;
        const _c = self.vtable.get_Participant(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionParticipantAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d35a57d8-c9a1-4bb7-b6b0-79bb91adf93d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Participant: *const fn(self: *anyopaque, _r: **RemoteSystemSessionParticipant) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionParticipantRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        var _r: *RemoteSystemSessionParticipant = undefined;
        const _c = self.vtable.get_Participant(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionParticipantRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "866ef088-de68-4abf-88a1-f90d16274192";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Participant: *const fn(self: *anyopaque, _r: **RemoteSystemSessionParticipant) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionParticipantWatcher = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionParticipantWatcherStatus {
        var _r: RemoteSystemSessionParticipantWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionParticipantWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcdd02cc-aa87-4d79-b6cc-4459b3e92075";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *RemoteSystemSessionParticipantWatcherStatus) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        var _r: *RemoteSystemSessionInfo = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af82914e-39a1-4dea-9d63-43798d5bbbd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **RemoteSystemSessionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcher(self: *@This()) core.HResult!*RemoteSystemSessionWatcher {
        var _r: *RemoteSystemSessionWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8524899f-fd20-44e3-9565-e75a3b14c66e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **RemoteSystemSessionWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        var _r: *RemoteSystemSessionInfo = undefined;
        const _c = self.vtable.get_SessionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16875069-231e-4c91-8ec8-b3a39d9e55a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SessionInfo: *const fn(self: *anyopaque, _r: **RemoteSystemSessionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionValueSetReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSender(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        var _r: *RemoteSystemSessionParticipant = undefined;
        const _c = self.vtable.get_Sender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionValueSetReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06f31785-2da5-4e58-a78f-9e8d0784ee25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Sender: *const fn(self: *anyopaque, _r: **RemoteSystemSessionParticipant) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemSessionWatcher = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionWatcherStatus {
        var _r: RemoteSystemSessionWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemSessionWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8003e340-0c41-4a62-b6d7-bdbe2b19be2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *RemoteSystemSessionWatcherStatus) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemStatics = extern struct {
    vtable: *const VTable,
    pub fn FindByHostNameAsync(self: *@This(), hostName: *HostName) core.HResult!*IAsyncOperation(RemoteSystem) {
        var _r: *IAsyncOperation(RemoteSystem) = undefined;
        const _c = self.vtable.FindByHostNameAsync(@ptrCast(self), hostName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This()) core.HResult!*RemoteSystemWatcher {
        var _r: *RemoteSystemWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This(), filters: *IIterable(IRemoteSystemFilter)) core.HResult!*RemoteSystemWatcher {
        var _r: *RemoteSystemWatcher = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), filters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(RemoteSystemAccessStatus) {
        var _r: *IAsyncOperation(RemoteSystemAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a485b392-ff2b-4b47-be62-743f2f140f30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindByHostNameAsync: *const fn(self: *anyopaque, hostName: *HostName, _r: **IAsyncOperation(RemoteSystem)) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **RemoteSystemWatcher) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, filters: *IIterable(IRemoteSystemFilter), _r: **RemoteSystemWatcher) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(RemoteSystemAccessStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsAuthorizationKindEnabled(self: *@This(), kind: RemoteSystemAuthorizationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsAuthorizationKindEnabled(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c98edca-6f99-4c52-a272-ea4f36471744";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsAuthorizationKindEnabled: *const fn(self: *anyopaque, kind: RemoteSystemAuthorizationKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateWatcherForUser(self: *@This(), user: *User) core.HResult!*RemoteSystemWatcher {
        var _r: *RemoteSystemWatcher = undefined;
        const _c = self.vtable.CreateWatcherForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcherForUser(self: *@This(), user: *User, filters: *IIterable(IRemoteSystemFilter)) core.HResult!*RemoteSystemWatcher {
        var _r: *RemoteSystemWatcher = undefined;
        const _c = self.vtable.CreateWatcherForUser(@ptrCast(self), user, filters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9995f16f-0b3c-5ac5-b325-cc73f437dfcd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWatcherForUser: *const fn(self: *anyopaque, user: *User, _r: **RemoteSystemWatcher) callconv(.winapi) HRESULT,
        CreateWatcherForUser: *const fn(self: *anyopaque, user: *User, filters: *IIterable(IRemoteSystemFilter), _r: **RemoteSystemWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemStatusTypeFilter = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystemStatusType(self: *@This()) core.HResult!RemoteSystemStatusType {
        var _r: RemoteSystemStatusType = undefined;
        const _c = self.vtable.get_RemoteSystemStatusType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c39514e-cbb6-4777-8534-2e0c521affa2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystemStatusType: *const fn(self: *anyopaque, _r: *RemoteSystemStatusType) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemStatusTypeFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), remoteSystemStatusType: RemoteSystemStatusType) core.HResult!*RemoteSystemStatusTypeFilter {
        var _r: *RemoteSystemStatusTypeFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), remoteSystemStatusType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemStatusTypeFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33cf78fa-d724-4125-ac7a-8d281e44c949";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, remoteSystemStatusType: RemoteSystemStatusType, _r: **RemoteSystemStatusTypeFilter) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        var _r: *RemoteSystem = undefined;
        const _c = self.vtable.get_RemoteSystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7502ff0e-dbcb-4155-b4ca-b30a04f27627";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RemoteSystem: *const fn(self: *anyopaque, _r: **RemoteSystem) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemWatcher = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoteSystemAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemoteSystemAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoteSystemAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemoteSystemAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoteSystemUpdated(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemoteSystemUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoteSystemUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemoteSystemUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoteSystemRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RemoteSystemRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoteSystemRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RemoteSystemRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d600c7e-2c07-48c5-889c-455d2b099771";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_RemoteSystemAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemoteSystemAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RemoteSystemUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemoteSystemUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RemoteSystemRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RemoteSystemRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemWatcher2 = extern struct {
    vtable: *const VTable,
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemEnumerationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemWatcherErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWatcher2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73436700-19ca-48f9-a4cd-780f7ad58c71";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemEnumerationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemWatcherErrorOccurredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemWatcher3 = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWatcher3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f79c0fcf-a913-55d3-8413-418fcf15ba54";
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
pub const IRemoteSystemWatcherErrorOccurredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!RemoteSystemWatcherError {
        var _r: RemoteSystemWatcherError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWatcherErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74c5c6af-5114-4426-9216-20d81f8519ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *RemoteSystemWatcherError) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemWebAccountFilter = extern struct {
    vtable: *const VTable,
    pub fn getAccount(self: *@This()) core.HResult!*WebAccount {
        var _r: *WebAccount = undefined;
        const _c = self.vtable.get_Account(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWebAccountFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fb75873-87c8-5d8f-977e-f69f96d67238";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Account: *const fn(self: *anyopaque, _r: **WebAccount) callconv(.winapi) HRESULT,
    };
};
pub const IRemoteSystemWebAccountFilterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), account: *WebAccount) core.HResult!*RemoteSystemWebAccountFilter {
        var _r: *RemoteSystemWebAccountFilter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), account, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.IRemoteSystemWebAccountFilterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "348a2709-5f4d-5127-b4a7-bf99d5252b1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, account: *WebAccount, _r: **RemoteSystemWebAccountFilter) callconv(.winapi) HRESULT,
    };
};
pub const KnownRemoteSystemCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAppService() core.HResult!HSTRING {
        const factory = @This().IKnownRemoteSystemCapabilitiesStaticsCache.get();
        return try factory.getAppService();
    }
    pub fn getLaunchUri() core.HResult!HSTRING {
        const factory = @This().IKnownRemoteSystemCapabilitiesStaticsCache.get();
        return try factory.getLaunchUri();
    }
    pub fn getRemoteSession() core.HResult!HSTRING {
        const factory = @This().IKnownRemoteSystemCapabilitiesStaticsCache.get();
        return try factory.getRemoteSession();
    }
    pub fn getSpatialEntity() core.HResult!HSTRING {
        const factory = @This().IKnownRemoteSystemCapabilitiesStaticsCache.get();
        return try factory.getSpatialEntity();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.KnownRemoteSystemCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownRemoteSystemCapabilitiesStaticsCache: FactoryCache(IKnownRemoteSystemCapabilitiesStatics, RUNTIME_NAME) = .{};
};
pub const RemoteSystem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystem = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystem = @ptrCast(self);
        return try this.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystem = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemStatus {
        const this: *IRemoteSystem = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIsAvailableByProximity(self: *@This()) core.HResult!bool {
        const this: *IRemoteSystem = @ptrCast(self);
        return try this.getIsAvailableByProximity();
    }
    pub fn getIsAvailableBySpatialProximity(self: *@This()) core.HResult!bool {
        var this: ?*IRemoteSystem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAvailableBySpatialProximity();
    }
    pub fn GetCapabilitySupportedAsync(self: *@This(), capabilityName: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IRemoteSystem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCapabilitySupportedAsync(capabilityName);
    }
    pub fn getManufacturerDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRemoteSystem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getManufacturerDisplayName();
    }
    pub fn getModelDisplayName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRemoteSystem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getModelDisplayName();
    }
    pub fn getPlatform(self: *@This()) core.HResult!RemoteSystemPlatform {
        var this: ?*IRemoteSystem4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlatform();
    }
    pub fn getApps(self: *@This()) core.HResult!*IVectorView(RemoteSystemApp) {
        var this: ?*IRemoteSystem5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getApps();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IRemoteSystem6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystem6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindByHostNameAsync(hostName: *HostName) core.HResult!*IAsyncOperation(RemoteSystem) {
        const factory = @This().IRemoteSystemStaticsCache.get();
        return try factory.FindByHostNameAsync(hostName);
    }
    pub fn CreateWatcher() core.HResult!*RemoteSystemWatcher {
        const factory = @This().IRemoteSystemStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub fn CreateWatcher(filters: *IIterable(IRemoteSystemFilter)) core.HResult!*RemoteSystemWatcher {
        const factory = @This().IRemoteSystemStaticsCache.get();
        return try factory.CreateWatcher(filters);
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(RemoteSystemAccessStatus) {
        const factory = @This().IRemoteSystemStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn IsAuthorizationKindEnabled(kind: RemoteSystemAuthorizationKind) core.HResult!bool {
        const factory = @This().IRemoteSystemStatics2Cache.get();
        return try factory.IsAuthorizationKindEnabled(kind);
    }
    pub fn CreateWatcherForUser(user: *User) core.HResult!*RemoteSystemWatcher {
        const factory = @This().IRemoteSystemStatics3Cache.get();
        return try factory.CreateWatcherForUser(user);
    }
    pub fn CreateWatcherForUser(user: *User, filters: *IIterable(IRemoteSystemFilter)) core.HResult!*RemoteSystemWatcher {
        const factory = @This().IRemoteSystemStatics3Cache.get();
        return try factory.CreateWatcherForUser(user, filters);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystem.GUID;
    pub const IID: Guid = IRemoteSystem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystem.SIGNATURE);
    var _IRemoteSystemStaticsCache: FactoryCache(IRemoteSystemStatics, RUNTIME_NAME) = .{};
    var _IRemoteSystemStatics2Cache: FactoryCache(IRemoteSystemStatics2, RUNTIME_NAME) = .{};
    var _IRemoteSystemStatics3Cache: FactoryCache(IRemoteSystemStatics3, RUNTIME_NAME) = .{};
};
pub const RemoteSystemAccessStatus = enum(i32) {
    Unspecified = 0,
    Allowed = 1,
    DeniedByUser = 2,
    DeniedBySystem = 3,
};
pub const RemoteSystemAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        const this: *IRemoteSystemAddedEventArgs = @ptrCast(self);
        return try this.getRemoteSystem();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemAddedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemAddedEventArgs.SIGNATURE);
};
pub const RemoteSystemApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemApp = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemApp = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getIsAvailableByProximity(self: *@This()) core.HResult!bool {
        const this: *IRemoteSystemApp = @ptrCast(self);
        return try this.getIsAvailableByProximity();
    }
    pub fn getIsAvailableBySpatialProximity(self: *@This()) core.HResult!bool {
        const this: *IRemoteSystemApp = @ptrCast(self);
        return try this.getIsAvailableBySpatialProximity();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IRemoteSystemApp = @ptrCast(self);
        return try this.getAttributes();
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IRemoteSystemApp2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemApp2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub fn getConnectionToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRemoteSystemApp2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemApp2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConnectionToken();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemApp.GUID;
    pub const IID: Guid = IRemoteSystemApp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemApp.SIGNATURE);
};
pub const RemoteSystemAppRegistration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IRemoteSystemAppRegistration = @ptrCast(self);
        return try this.getUser();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IRemoteSystemAppRegistration = @ptrCast(self);
        return try this.getAttributes();
    }
    pub fn SaveAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemAppRegistration = @ptrCast(self);
        return try this.SaveAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*RemoteSystemAppRegistration {
        const factory = @This().IRemoteSystemAppRegistrationStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*RemoteSystemAppRegistration {
        const factory = @This().IRemoteSystemAppRegistrationStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemAppRegistration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemAppRegistration.GUID;
    pub const IID: Guid = IRemoteSystemAppRegistration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemAppRegistration.SIGNATURE);
    var _IRemoteSystemAppRegistrationStaticsCache: FactoryCache(IRemoteSystemAppRegistrationStatics, RUNTIME_NAME) = .{};
};
pub const RemoteSystemAuthorizationKind = enum(i32) {
    SameUser = 0,
    Anonymous = 1,
};
pub const RemoteSystemAuthorizationKindFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystemAuthorizationKind(self: *@This()) core.HResult!RemoteSystemAuthorizationKind {
        const this: *IRemoteSystemAuthorizationKindFilter = @ptrCast(self);
        return try this.getRemoteSystemAuthorizationKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(remoteSystemAuthorizationKind: RemoteSystemAuthorizationKind) core.HResult!*RemoteSystemAuthorizationKindFilter {
        const factory = @This().IRemoteSystemAuthorizationKindFilterFactoryCache.get();
        return try factory.Create(remoteSystemAuthorizationKind);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemAuthorizationKindFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemAuthorizationKindFilter.GUID;
    pub const IID: Guid = IRemoteSystemAuthorizationKindFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemAuthorizationKindFilter.SIGNATURE);
    var _IRemoteSystemAuthorizationKindFilterFactoryCache: FactoryCache(IRemoteSystemAuthorizationKindFilterFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemConnectionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsProximal(self: *@This()) core.HResult!bool {
        const this: *IRemoteSystemConnectionInfo = @ptrCast(self);
        return try this.getIsProximal();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreateFromAppServiceConnection(connection: *AppServiceConnection) core.HResult!*RemoteSystemConnectionInfo {
        const factory = @This().IRemoteSystemConnectionInfoStaticsCache.get();
        return try factory.TryCreateFromAppServiceConnection(connection);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemConnectionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemConnectionInfo.GUID;
    pub const IID: Guid = IRemoteSystemConnectionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemConnectionInfo.SIGNATURE);
    var _IRemoteSystemConnectionInfoStaticsCache: FactoryCache(IRemoteSystemConnectionInfoStatics, RUNTIME_NAME) = .{};
};
pub const RemoteSystemConnectionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        const this: *IRemoteSystemConnectionRequest = @ptrCast(self);
        return try this.getRemoteSystem();
    }
    pub fn getRemoteSystemApp(self: *@This()) core.HResult!*RemoteSystemApp {
        var this: ?*IRemoteSystemConnectionRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemConnectionRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRemoteSystemApp();
    }
    pub fn getConnectionToken(self: *@This()) core.HResult!HSTRING {
        var this: ?*IRemoteSystemConnectionRequest3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemConnectionRequest3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConnectionToken();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(remoteSystem: *RemoteSystem) core.HResult!*RemoteSystemConnectionRequest {
        const factory = @This().IRemoteSystemConnectionRequestFactoryCache.get();
        return try factory.Create(remoteSystem);
    }
    pub fn CreateForApp(remoteSystemApp: *RemoteSystemApp) core.HResult!*RemoteSystemConnectionRequest {
        const factory = @This().IRemoteSystemConnectionRequestStaticsCache.get();
        return try factory.CreateForApp(remoteSystemApp);
    }
    pub fn CreateFromConnectionToken(connectionToken: HSTRING) core.HResult!*RemoteSystemConnectionRequest {
        const factory = @This().IRemoteSystemConnectionRequestStatics2Cache.get();
        return try factory.CreateFromConnectionToken(connectionToken);
    }
    pub fn CreateFromConnectionTokenForUser(user: *User, connectionToken: HSTRING) core.HResult!*RemoteSystemConnectionRequest {
        const factory = @This().IRemoteSystemConnectionRequestStatics2Cache.get();
        return try factory.CreateFromConnectionTokenForUser(user, connectionToken);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemConnectionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemConnectionRequest.GUID;
    pub const IID: Guid = IRemoteSystemConnectionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemConnectionRequest.SIGNATURE);
    var _IRemoteSystemConnectionRequestFactoryCache: FactoryCache(IRemoteSystemConnectionRequestFactory, RUNTIME_NAME) = .{};
    var _IRemoteSystemConnectionRequestStaticsCache: FactoryCache(IRemoteSystemConnectionRequestStatics, RUNTIME_NAME) = .{};
    var _IRemoteSystemConnectionRequestStatics2Cache: FactoryCache(IRemoteSystemConnectionRequestStatics2, RUNTIME_NAME) = .{};
};
pub const RemoteSystemDiscoveryType = enum(i32) {
    Any = 0,
    Proximal = 1,
    Cloud = 2,
    SpatiallyProximal = 3,
};
pub const RemoteSystemDiscoveryTypeFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystemDiscoveryType(self: *@This()) core.HResult!RemoteSystemDiscoveryType {
        const this: *IRemoteSystemDiscoveryTypeFilter = @ptrCast(self);
        return try this.getRemoteSystemDiscoveryType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(discoveryType: RemoteSystemDiscoveryType) core.HResult!*RemoteSystemDiscoveryTypeFilter {
        const factory = @This().IRemoteSystemDiscoveryTypeFilterFactoryCache.get();
        return try factory.Create(discoveryType);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemDiscoveryTypeFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemDiscoveryTypeFilter.GUID;
    pub const IID: Guid = IRemoteSystemDiscoveryTypeFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemDiscoveryTypeFilter.SIGNATURE);
    var _IRemoteSystemDiscoveryTypeFilterFactoryCache: FactoryCache(IRemoteSystemDiscoveryTypeFilterFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemEnumerationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemEnumerationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemEnumerationCompletedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemEnumerationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemEnumerationCompletedEventArgs.SIGNATURE);
};
pub const RemoteSystemKindFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystemKinds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IRemoteSystemKindFilter = @ptrCast(self);
        return try this.getRemoteSystemKinds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(remoteSystemKinds: *IIterable(HSTRING)) core.HResult!*RemoteSystemKindFilter {
        const factory = @This().IRemoteSystemKindFilterFactoryCache.get();
        return try factory.Create(remoteSystemKinds);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemKindFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemKindFilter.GUID;
    pub const IID: Guid = IRemoteSystemKindFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemKindFilter.SIGNATURE);
    var _IRemoteSystemKindFilterFactoryCache: FactoryCache(IRemoteSystemKindFilterFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemKinds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getPhone() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStaticsCache.get();
        return try factory.getPhone();
    }
    pub fn getHub() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStaticsCache.get();
        return try factory.getHub();
    }
    pub fn getHolographic() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStaticsCache.get();
        return try factory.getHolographic();
    }
    pub fn getDesktop() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStaticsCache.get();
        return try factory.getDesktop();
    }
    pub fn getXbox() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStaticsCache.get();
        return try factory.getXbox();
    }
    pub fn getIot() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStatics2Cache.get();
        return try factory.getIot();
    }
    pub fn getTablet() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStatics2Cache.get();
        return try factory.getTablet();
    }
    pub fn getLaptop() core.HResult!HSTRING {
        const factory = @This().IRemoteSystemKindStatics2Cache.get();
        return try factory.getLaptop();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemKinds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRemoteSystemKindStaticsCache: FactoryCache(IRemoteSystemKindStatics, RUNTIME_NAME) = .{};
    var _IRemoteSystemKindStatics2Cache: FactoryCache(IRemoteSystemKindStatics2, RUNTIME_NAME) = .{};
};
pub const RemoteSystemPlatform = enum(i32) {
    Unknown = 0,
    Windows = 1,
    Android = 2,
    Ios = 3,
    Linux = 4,
};
pub const RemoteSystemRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystemId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemRemovedEventArgs = @ptrCast(self);
        return try this.getRemoteSystemId();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemRemovedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemRemovedEventArgs.SIGNATURE);
};
pub const RemoteSystemSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getControllerDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.getControllerDisplayName();
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(RemoteSystemSession,RemoteSystemSessionDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.addDisconnected(handler);
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.removeDisconnected(token);
    }
    pub fn CreateParticipantWatcher(self: *@This()) core.HResult!*RemoteSystemSessionParticipantWatcher {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.CreateParticipantWatcher();
    }
    pub fn SendInvitationAsync(self: *@This(), invitee: *RemoteSystem) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemSession = @ptrCast(self);
        return try this.SendInvitationAsync(invitee);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWatcher() core.HResult!*RemoteSystemSessionWatcher {
        const factory = @This().IRemoteSystemSessionStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSession.GUID;
    pub const IID: Guid = IRemoteSystemSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSession.SIGNATURE);
    var _IRemoteSystemSessionStaticsCache: FactoryCache(IRemoteSystemSessionStatics, RUNTIME_NAME) = .{};
};
pub const RemoteSystemSessionAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        const this: *IRemoteSystemSessionAddedEventArgs = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionAddedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionAddedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addJoinRequested(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionController,RemoteSystemSessionJoinRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionController = @ptrCast(self);
        return try this.addJoinRequested(handler);
    }
    pub fn removeJoinRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionController = @ptrCast(self);
        return try this.removeJoinRequested(token);
    }
    pub fn RemoveParticipantAsync(self: *@This(), pParticipant: *RemoteSystemSessionParticipant) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemSessionController = @ptrCast(self);
        return try this.RemoveParticipantAsync(pParticipant);
    }
    pub fn CreateSessionAsync(self: *@This()) core.HResult!*IAsyncOperation(RemoteSystemSessionCreationResult) {
        const this: *IRemoteSystemSessionController = @ptrCast(self);
        return try this.CreateSessionAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateController(displayName: HSTRING) core.HResult!*RemoteSystemSessionController {
        const factory = @This().IRemoteSystemSessionControllerFactoryCache.get();
        return try factory.CreateController(displayName);
    }
    pub fn CreateController(displayName: HSTRING, options: *RemoteSystemSessionOptions) core.HResult!*RemoteSystemSessionController {
        const factory = @This().IRemoteSystemSessionControllerFactoryCache.get();
        return try factory.CreateController(displayName, options);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionController.GUID;
    pub const IID: Guid = IRemoteSystemSessionController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionController.SIGNATURE);
    var _IRemoteSystemSessionControllerFactoryCache: FactoryCache(IRemoteSystemSessionControllerFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemSessionCreationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionCreationStatus {
        const this: *IRemoteSystemSessionCreationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        const this: *IRemoteSystemSessionCreationResult = @ptrCast(self);
        return try this.getSession();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionCreationResult.GUID;
    pub const IID: Guid = IRemoteSystemSessionCreationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionCreationResult.SIGNATURE);
};
pub const RemoteSystemSessionCreationStatus = enum(i32) {
    Success = 0,
    SessionLimitsExceeded = 1,
    OperationAborted = 2,
};
pub const RemoteSystemSessionDisconnectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!RemoteSystemSessionDisconnectedReason {
        const this: *IRemoteSystemSessionDisconnectedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionDisconnectedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionDisconnectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionDisconnectedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionDisconnectedReason = enum(i32) {
    SessionUnavailable = 0,
    RemovedByController = 1,
    SessionClosed = 2,
};
pub const RemoteSystemSessionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemSessionInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getControllerDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IRemoteSystemSessionInfo = @ptrCast(self);
        return try this.getControllerDisplayName();
    }
    pub fn JoinAsync(self: *@This()) core.HResult!*IAsyncOperation(RemoteSystemSessionJoinResult) {
        const this: *IRemoteSystemSessionInfo = @ptrCast(self);
        return try this.JoinAsync();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionInfo.GUID;
    pub const IID: Guid = IRemoteSystemSessionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionInfo.SIGNATURE);
};
pub const RemoteSystemSessionInvitation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSender(self: *@This()) core.HResult!*RemoteSystem {
        const this: *IRemoteSystemSessionInvitation = @ptrCast(self);
        return try this.getSender();
    }
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        const this: *IRemoteSystemSessionInvitation = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionInvitation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionInvitation.GUID;
    pub const IID: Guid = IRemoteSystemSessionInvitation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionInvitation.SIGNATURE);
};
pub const RemoteSystemSessionInvitationListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addInvitationReceived(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionInvitationListener,RemoteSystemSessionInvitationReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionInvitationListener = @ptrCast(self);
        return try this.addInvitationReceived(handler);
    }
    pub fn removeInvitationReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionInvitationListener = @ptrCast(self);
        return try this.removeInvitationReceived(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRemoteSystemSessionInvitationListener.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionInvitationListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionInvitationListener.GUID;
    pub const IID: Guid = IRemoteSystemSessionInvitationListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionInvitationListener.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemSessionInvitationReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInvitation(self: *@This()) core.HResult!*RemoteSystemSessionInvitation {
        const this: *IRemoteSystemSessionInvitationReceivedEventArgs = @ptrCast(self);
        return try this.getInvitation();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionInvitationReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionInvitationReceivedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionInvitationReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionInvitationReceivedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionJoinRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        const this: *IRemoteSystemSessionJoinRequest = @ptrCast(self);
        return try this.getParticipant();
    }
    pub fn Accept(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemSessionJoinRequest = @ptrCast(self);
        return try this.Accept();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionJoinRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionJoinRequest.GUID;
    pub const IID: Guid = IRemoteSystemSessionJoinRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionJoinRequest.SIGNATURE);
};
pub const RemoteSystemSessionJoinRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getJoinRequest(self: *@This()) core.HResult!*RemoteSystemSessionJoinRequest {
        const this: *IRemoteSystemSessionJoinRequestedEventArgs = @ptrCast(self);
        return try this.getJoinRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IRemoteSystemSessionJoinRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionJoinRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionJoinRequestedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionJoinRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionJoinRequestedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionJoinResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionJoinStatus {
        const this: *IRemoteSystemSessionJoinResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        const this: *IRemoteSystemSessionJoinResult = @ptrCast(self);
        return try this.getSession();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionJoinResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionJoinResult.GUID;
    pub const IID: Guid = IRemoteSystemSessionJoinResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionJoinResult.SIGNATURE);
};
pub const RemoteSystemSessionJoinStatus = enum(i32) {
    Success = 0,
    SessionLimitsExceeded = 1,
    OperationAborted = 2,
    SessionUnavailable = 3,
    RejectedByController = 4,
};
pub const RemoteSystemSessionMessageChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSession(self: *@This()) core.HResult!*RemoteSystemSession {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.getSession();
    }
    pub fn BroadcastValueSetAsync(self: *@This(), messageData: *ValueSet) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.BroadcastValueSetAsync(messageData);
    }
    pub fn SendValueSetAsync(self: *@This(), messageData: *ValueSet, participant: *RemoteSystemSessionParticipant) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.SendValueSetAsync(messageData, participant);
    }
    pub fn SendValueSetToParticipantsAsync(self: *@This(), messageData: *ValueSet, participants: *IIterable(RemoteSystemSessionParticipant)) core.HResult!*IAsyncOperation(bool) {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.SendValueSetToParticipantsAsync(messageData, participants);
    }
    pub fn addValueSetReceived(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionMessageChannel,RemoteSystemSessionValueSetReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.addValueSetReceived(handler);
    }
    pub fn removeValueSetReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionMessageChannel = @ptrCast(self);
        return try this.removeValueSetReceived(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(session: *RemoteSystemSession, channelName: HSTRING) core.HResult!*RemoteSystemSessionMessageChannel {
        const factory = @This().IRemoteSystemSessionMessageChannelFactoryCache.get();
        return try factory.Create(session, channelName);
    }
    pub fn Create(session: *RemoteSystemSession, channelName: HSTRING, reliability: RemoteSystemSessionMessageChannelReliability) core.HResult!*RemoteSystemSessionMessageChannel {
        const factory = @This().IRemoteSystemSessionMessageChannelFactoryCache.get();
        return try factory.Create(session, channelName, reliability);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionMessageChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionMessageChannel.GUID;
    pub const IID: Guid = IRemoteSystemSessionMessageChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionMessageChannel.SIGNATURE);
    var _IRemoteSystemSessionMessageChannelFactoryCache: FactoryCache(IRemoteSystemSessionMessageChannelFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemSessionMessageChannelReliability = enum(i32) {
    Reliable = 0,
    Unreliable = 1,
};
pub const RemoteSystemSessionOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsInviteOnly(self: *@This()) core.HResult!bool {
        const this: *IRemoteSystemSessionOptions = @ptrCast(self);
        return try this.getIsInviteOnly();
    }
    pub fn putIsInviteOnly(self: *@This(), value: bool) core.HResult!void {
        const this: *IRemoteSystemSessionOptions = @ptrCast(self);
        return try this.putIsInviteOnly(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRemoteSystemSessionOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionOptions.GUID;
    pub const IID: Guid = IRemoteSystemSessionOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemSessionParticipant = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        const this: *IRemoteSystemSessionParticipant = @ptrCast(self);
        return try this.getRemoteSystem();
    }
    pub fn GetHostNames(self: *@This()) core.HResult!*IVectorView(HostName) {
        const this: *IRemoteSystemSessionParticipant = @ptrCast(self);
        return try this.GetHostNames();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionParticipant";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionParticipant.GUID;
    pub const IID: Guid = IRemoteSystemSessionParticipant.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionParticipant.SIGNATURE);
};
pub const RemoteSystemSessionParticipantAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        const this: *IRemoteSystemSessionParticipantAddedEventArgs = @ptrCast(self);
        return try this.getParticipant();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionParticipantAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionParticipantAddedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionParticipantAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionParticipantAddedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionParticipantRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParticipant(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        const this: *IRemoteSystemSessionParticipantRemovedEventArgs = @ptrCast(self);
        return try this.getParticipant();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionParticipantRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionParticipantRemovedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionParticipantRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionParticipantRemovedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionParticipantWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionParticipantWatcherStatus {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,RemoteSystemSessionParticipantRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionParticipantWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionParticipantWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionParticipantWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionParticipantWatcher.GUID;
    pub const IID: Guid = IRemoteSystemSessionParticipantWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionParticipantWatcher.SIGNATURE);
};
pub const RemoteSystemSessionParticipantWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const RemoteSystemSessionRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        const this: *IRemoteSystemSessionRemovedEventArgs = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionRemovedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionRemovedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSessionInfo(self: *@This()) core.HResult!*RemoteSystemSessionInfo {
        const this: *IRemoteSystemSessionUpdatedEventArgs = @ptrCast(self);
        return try this.getSessionInfo();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionUpdatedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionUpdatedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionValueSetReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSender(self: *@This()) core.HResult!*RemoteSystemSessionParticipant {
        const this: *IRemoteSystemSessionValueSetReceivedEventArgs = @ptrCast(self);
        return try this.getSender();
    }
    pub fn getMessage(self: *@This()) core.HResult!*ValueSet {
        const this: *IRemoteSystemSessionValueSetReceivedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionValueSetReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionValueSetReceivedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemSessionValueSetReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionValueSetReceivedEventArgs.SIGNATURE);
};
pub const RemoteSystemSessionWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn getStatus(self: *@This()) core.HResult!RemoteSystemSessionWatcherStatus {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemSessionWatcher,RemoteSystemSessionRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemSessionWatcher = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemSessionWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemSessionWatcher.GUID;
    pub const IID: Guid = IRemoteSystemSessionWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemSessionWatcher.SIGNATURE);
};
pub const RemoteSystemSessionWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopping = 3,
    Stopped = 4,
    Aborted = 5,
};
pub const RemoteSystemStatus = enum(i32) {
    Unavailable = 0,
    DiscoveringAvailability = 1,
    Available = 2,
    Unknown = 3,
};
pub const RemoteSystemStatusType = enum(i32) {
    Any = 0,
    Available = 1,
};
pub const RemoteSystemStatusTypeFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystemStatusType(self: *@This()) core.HResult!RemoteSystemStatusType {
        const this: *IRemoteSystemStatusTypeFilter = @ptrCast(self);
        return try this.getRemoteSystemStatusType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(remoteSystemStatusType: RemoteSystemStatusType) core.HResult!*RemoteSystemStatusTypeFilter {
        const factory = @This().IRemoteSystemStatusTypeFilterFactoryCache.get();
        return try factory.Create(remoteSystemStatusType);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemStatusTypeFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemStatusTypeFilter.GUID;
    pub const IID: Guid = IRemoteSystemStatusTypeFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemStatusTypeFilter.SIGNATURE);
    var _IRemoteSystemStatusTypeFilterFactoryCache: FactoryCache(IRemoteSystemStatusTypeFilterFactory, RUNTIME_NAME) = .{};
};
pub const RemoteSystemUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRemoteSystem(self: *@This()) core.HResult!*RemoteSystem {
        const this: *IRemoteSystemUpdatedEventArgs = @ptrCast(self);
        return try this.getRemoteSystem();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemUpdatedEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemUpdatedEventArgs.SIGNATURE);
};
pub const RemoteSystemWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addRemoteSystemAdded(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.addRemoteSystemAdded(handler);
    }
    pub fn removeRemoteSystemAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.removeRemoteSystemAdded(token);
    }
    pub fn addRemoteSystemUpdated(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.addRemoteSystemUpdated(handler);
    }
    pub fn removeRemoteSystemUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.removeRemoteSystemUpdated(token);
    }
    pub fn addRemoteSystemRemoved(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.addRemoteSystemRemoved(handler);
    }
    pub fn removeRemoteSystemRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRemoteSystemWatcher = @ptrCast(self);
        return try this.removeRemoteSystemRemoved(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemEnumerationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IRemoteSystemWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IRemoteSystemWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeEnumerationCompleted(token);
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(RemoteSystemWatcher,RemoteSystemWatcherErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IRemoteSystemWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addErrorOccurred(handler);
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IRemoteSystemWatcher2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemWatcher2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeErrorOccurred(token);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var this: ?*IRemoteSystemWatcher3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRemoteSystemWatcher3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUser();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemWatcher.GUID;
    pub const IID: Guid = IRemoteSystemWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemWatcher.SIGNATURE);
};
pub const RemoteSystemWatcherError = enum(i32) {
    Unknown = 0,
    InternetNotAvailable = 1,
    AuthenticationError = 2,
};
pub const RemoteSystemWatcherErrorOccurredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!RemoteSystemWatcherError {
        const this: *IRemoteSystemWatcherErrorOccurredEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemWatcherErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemWatcherErrorOccurredEventArgs.GUID;
    pub const IID: Guid = IRemoteSystemWatcherErrorOccurredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemWatcherErrorOccurredEventArgs.SIGNATURE);
};
pub const RemoteSystemWebAccountFilter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccount(self: *@This()) core.HResult!*WebAccount {
        const this: *IRemoteSystemWebAccountFilter = @ptrCast(self);
        return try this.getAccount();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(account: *WebAccount) core.HResult!*RemoteSystemWebAccountFilter {
        const factory = @This().IRemoteSystemWebAccountFilterFactoryCache.get();
        return try factory.Create(account);
    }
    pub const NAME: []const u8 = "Windows.System.RemoteSystems.RemoteSystemWebAccountFilter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRemoteSystemWebAccountFilter.GUID;
    pub const IID: Guid = IRemoteSystemWebAccountFilter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRemoteSystemWebAccountFilter.SIGNATURE);
    var _IRemoteSystemWebAccountFilterFactoryCache: FactoryCache(IRemoteSystemWebAccountFilterFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const AppServiceConnection = @import("../ApplicationModel/AppService.zig").AppServiceConnection;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const IClosable = @import("../Foundation.zig").IClosable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const HostName = @import("../Networking.zig").HostName;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IMap = @import("../Foundation/Collections.zig").IMap;
const WebAccount = @import("../Security/Credentials.zig").WebAccount;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const User = @import("../System.zig").User;
