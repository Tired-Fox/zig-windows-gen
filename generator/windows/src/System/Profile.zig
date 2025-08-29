pub const IKnownRetailInfoPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getRetailAccessCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RetailAccessCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ManufacturerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayModelName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayModelName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Price(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFeatured(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsFeatured(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormFactor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScreenSize(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ScreenSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeight(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Weight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBatteryLifeDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BatteryLifeDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProcessorDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProcessorDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMemory(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Memory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorageDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StorageDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGraphicsDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GraphicsDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrontCameraDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrontCameraDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRearCameraDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RearCameraDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasNfc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HasNfc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasSdSlot(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HasSdSlot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasOpticalDrive(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HasOpticalDrive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOfficeInstalled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IsOfficeInstalled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowsEdition(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WindowsEdition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IKnownRetailInfoPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99571178-500f-487e-8e75-29e551728712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RetailAccessCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ManufacturerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayModelName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Price: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsFeatured: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FormFactor: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ScreenSize: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Weight: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BatteryLifeDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProcessorDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Memory: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StorageDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GraphicsDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FrontCameraDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RearCameraDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasNfc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasSdSlot: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasOpticalDrive: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsOfficeInstalled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WindowsEdition: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IRetailInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsDemoModeEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDemoModeEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IRetailInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0712c6b8-8b92-4f2a-8499-031f1798d6ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDemoModeEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const KnownRetailInfoProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getRetailAccessCode() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getRetailAccessCode();
    }
    pub fn getManufacturerName() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getManufacturerName();
    }
    pub fn getModelName() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getModelName();
    }
    pub fn getDisplayModelName() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getDisplayModelName();
    }
    pub fn getPrice() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getPrice();
    }
    pub fn getIsFeatured() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getIsFeatured();
    }
    pub fn getFormFactor() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getFormFactor();
    }
    pub fn getScreenSize() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getScreenSize();
    }
    pub fn getWeight() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getWeight();
    }
    pub fn getDisplayDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getDisplayDescription();
    }
    pub fn getBatteryLifeDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getBatteryLifeDescription();
    }
    pub fn getProcessorDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getProcessorDescription();
    }
    pub fn getMemory() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getMemory();
    }
    pub fn getStorageDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getStorageDescription();
    }
    pub fn getGraphicsDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getGraphicsDescription();
    }
    pub fn getFrontCameraDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getFrontCameraDescription();
    }
    pub fn getRearCameraDescription() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getRearCameraDescription();
    }
    pub fn getHasNfc() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getHasNfc();
    }
    pub fn getHasSdSlot() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getHasSdSlot();
    }
    pub fn getHasOpticalDrive() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getHasOpticalDrive();
    }
    pub fn getIsOfficeInstalled() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getIsOfficeInstalled();
    }
    pub fn getWindowsEdition() core.HResult!HSTRING {
        const factory = @This().IKnownRetailInfoPropertiesStaticsCache.get();
        return try factory.getWindowsEdition();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.KnownRetailInfoProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownRetailInfoPropertiesStaticsCache: FactoryCache(IKnownRetailInfoPropertiesStatics, RUNTIME_NAME) = .{};
};
pub const RetailInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsDemoModeEnabled() core.HResult!bool {
        const factory = @This().IRetailInfoStaticsCache.get();
        return try factory.getIsDemoModeEnabled();
    }
    pub fn getProperties() core.HResult!*IMapView(HSTRING,IInspectable) {
        const factory = @This().IRetailInfoStaticsCache.get();
        return try factory.getProperties();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.RetailInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IRetailInfoStaticsCache: FactoryCache(IRetailInfoStatics, RUNTIME_NAME) = .{};
};
pub const HardwareIdentification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetPackageSpecificToken(nonce: *IBuffer) core.HResult!*HardwareToken {
        const factory = @This().IHardwareIdentificationStaticsCache.get();
        return try factory.GetPackageSpecificToken(nonce);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.HardwareIdentification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IHardwareIdentificationStaticsCache: FactoryCache(IHardwareIdentificationStatics, RUNTIME_NAME) = .{};
};
pub const HardwareToken = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        const this: *IHardwareToken = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSignature(self: *@This()) core.HResult!*IBuffer {
        const this: *IHardwareToken = @ptrCast(self);
        return try this.getSignature();
    }
    pub fn getCertificate(self: *@This()) core.HResult!*IBuffer {
        const this: *IHardwareToken = @ptrCast(self);
        return try this.getCertificate();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.HardwareToken";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHardwareToken.GUID;
    pub const IID: Guid = IHardwareToken.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHardwareToken.SIGNATURE);
};
pub const IHardwareIdentificationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetPackageSpecificToken(self: *@This(), nonce: *IBuffer) core.HResult!*HardwareToken {
        var _r: *HardwareToken = undefined;
        const _c = self.vtable.GetPackageSpecificToken(@ptrCast(self), nonce, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IHardwareIdentificationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "971260e0-f170-4a42-bd55-a900b212dae2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPackageSpecificToken: *const fn(self: *anyopaque, nonce: *IBuffer, _r: **HardwareToken) callconv(.winapi) HRESULT,
    };
};
pub const IHardwareToken = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSignature(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Signature(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCertificate(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Certificate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IHardwareToken";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28f6d4c0-fb12-40a4-8167-7f4e03d2724c";
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
        get_Signature: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Certificate: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const ISharedModeSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISharedModeSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "893df40e-cad6-4d50-8c49-6fcfc03edb29";
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
    };
};
pub const ISharedModeSettingsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getShouldAvoidLocalStorage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldAvoidLocalStorage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISharedModeSettingsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "608988a4-ccf1-4ee8-a5e2-fd6a1d0cfac8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldAvoidLocalStorage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const SharedModeSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getShouldAvoidLocalStorage() core.HResult!bool {
        const factory = @This().ISharedModeSettingsStatics2Cache.get();
        return try factory.getShouldAvoidLocalStorage();
    }
    pub fn getIsEnabled() core.HResult!bool {
        const factory = @This().ISharedModeSettingsStaticsCache.get();
        return try factory.getIsEnabled();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SharedModeSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISharedModeSettingsStatics2Cache: FactoryCache(ISharedModeSettingsStatics2, RUNTIME_NAME) = .{};
    var _ISharedModeSettingsStaticsCache: FactoryCache(ISharedModeSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IPlatformAutomaticAppSignInManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getPolicy(self: *@This()) core.HResult!PlatformAutomaticAppSignInPolicy {
        var _r: PlatformAutomaticAppSignInPolicy = undefined;
        const _c = self.vtable.get_Policy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IPlatformAutomaticAppSignInManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ac9afce-8dd5-5c2d-b420-767d1f3b7d03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Policy: *const fn(self: *anyopaque, _r: *PlatformAutomaticAppSignInPolicy) callconv(.winapi) HRESULT,
    };
};
pub const PlatformAutomaticAppSignInManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getPolicy() core.HResult!PlatformAutomaticAppSignInPolicy {
        const factory = @This().IPlatformAutomaticAppSignInManagerStaticsCache.get();
        return try factory.getPolicy();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.PlatformAutomaticAppSignInManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlatformAutomaticAppSignInManagerStaticsCache: FactoryCache(IPlatformAutomaticAppSignInManagerStatics, RUNTIME_NAME) = .{};
};
pub const PlatformAutomaticAppSignInPolicy = enum(i32) {
    Unknown = 0,
    PermissionRequired = 1,
    AlwaysAllowed = 2,
};
pub const AnalyticsInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetSystemPropertiesAsync(attributeNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,HSTRING)) {
        const factory = @This().IAnalyticsInfoStatics2Cache.get();
        return try factory.GetSystemPropertiesAsync(attributeNames);
    }
    pub fn getVersionInfo() core.HResult!*AnalyticsVersionInfo {
        const factory = @This().IAnalyticsInfoStaticsCache.get();
        return try factory.getVersionInfo();
    }
    pub fn getDeviceForm() core.HResult!HSTRING {
        const factory = @This().IAnalyticsInfoStaticsCache.get();
        return try factory.getDeviceForm();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.AnalyticsInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAnalyticsInfoStatics2Cache: FactoryCache(IAnalyticsInfoStatics2, RUNTIME_NAME) = .{};
    var _IAnalyticsInfoStaticsCache: FactoryCache(IAnalyticsInfoStatics, RUNTIME_NAME) = .{};
};
pub const AnalyticsVersionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceFamily(self: *@This()) core.HResult!HSTRING {
        const this: *IAnalyticsVersionInfo = @ptrCast(self);
        return try this.getDeviceFamily();
    }
    pub fn getDeviceFamilyVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IAnalyticsVersionInfo = @ptrCast(self);
        return try this.getDeviceFamilyVersion();
    }
    pub fn getProductName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAnalyticsVersionInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAnalyticsVersionInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProductName();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.AnalyticsVersionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAnalyticsVersionInfo.GUID;
    pub const IID: Guid = IAnalyticsVersionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAnalyticsVersionInfo.SIGNATURE);
};
pub const AppApplicability = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetUnsupportedAppRequirements(capabilities: *IIterable(HSTRING)) core.HResult!*IVectorView(UnsupportedAppRequirement) {
        const factory = @This().IAppApplicabilityStaticsCache.get();
        return try factory.GetUnsupportedAppRequirements(capabilities);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.AppApplicability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppApplicabilityStaticsCache: FactoryCache(IAppApplicabilityStatics, RUNTIME_NAME) = .{};
};
pub const EducationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsEducationEnvironment() core.HResult!bool {
        const factory = @This().IEducationSettingsStaticsCache.get();
        return try factory.getIsEducationEnvironment();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.EducationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IEducationSettingsStaticsCache: FactoryCache(IEducationSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IAnalyticsInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getVersionInfo(self: *@This()) core.HResult!*AnalyticsVersionInfo {
        var _r: *AnalyticsVersionInfo = undefined;
        const _c = self.vtable.get_VersionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceForm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceForm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IAnalyticsInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d5ee066-188d-5ba9-4387-acaeb0e7e305";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VersionInfo: *const fn(self: *anyopaque, _r: **AnalyticsVersionInfo) callconv(.winapi) HRESULT,
        get_DeviceForm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAnalyticsInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetSystemPropertiesAsync(self: *@This(), attributeNames: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IMapView(HSTRING,HSTRING)) {
        var _r: *IAsyncOperation(IMapView(HSTRING,HSTRING)) = undefined;
        const _c = self.vtable.GetSystemPropertiesAsync(@ptrCast(self), attributeNames, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IAnalyticsInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "101704ea-a7f9-46d2-ab94-016865afdb25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSystemPropertiesAsync: *const fn(self: *anyopaque, attributeNames: *IIterable(HSTRING), _r: **IAsyncOperation(IMapView(HSTRING,HSTRING))) callconv(.winapi) HRESULT,
    };
};
pub const IAnalyticsVersionInfo = extern struct {
    vtable: *const VTable,
    pub fn getDeviceFamily(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceFamily(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceFamilyVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceFamilyVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IAnalyticsVersionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "926130b8-9955-4c74-bdc1-7cd0decf9b03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceFamily: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceFamilyVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAnalyticsVersionInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getProductName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IAnalyticsVersionInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76e915b1-ff36-407c-9f57-160d3e540747";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppApplicabilityStatics = extern struct {
    vtable: *const VTable,
    pub fn GetUnsupportedAppRequirements(self: *@This(), capabilities: *IIterable(HSTRING)) core.HResult!*IVectorView(UnsupportedAppRequirement) {
        var _r: *IVectorView(UnsupportedAppRequirement) = undefined;
        const _c = self.vtable.GetUnsupportedAppRequirements(@ptrCast(self), capabilities, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IAppApplicabilityStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1664a082-0f38-5c99-83e4-48995970861c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUnsupportedAppRequirements: *const fn(self: *anyopaque, capabilities: *IIterable(HSTRING), _r: **IVectorView(UnsupportedAppRequirement)) callconv(.winapi) HRESULT,
    };
};
pub const IEducationSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsEducationEnvironment(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEducationEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IEducationSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc53f0ef-4d3e-4e13-9b23-505f4d091e92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEducationEnvironment: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlatformDiagnosticsAndUsageDataSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn getCollectionLevel(self: *@This()) core.HResult!PlatformDataCollectionLevel {
        var _r: PlatformDataCollectionLevel = undefined;
        const _c = self.vtable.get_CollectionLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCollectionLevelChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CollectionLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCollectionLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CollectionLevelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CanCollectDiagnostics(self: *@This(), level: PlatformDataCollectionLevel) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanCollectDiagnostics(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IPlatformDiagnosticsAndUsageDataSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6e24c1b-7b1c-4b32-8c62-a66597ce723a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollectionLevel: *const fn(self: *anyopaque, _r: *PlatformDataCollectionLevel) callconv(.winapi) HRESULT,
        add_CollectionLevelChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CollectionLevelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CanCollectDiagnostics: *const fn(self: *anyopaque, level: PlatformDataCollectionLevel, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISmartAppControlPolicyStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISmartAppControlPolicyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ff8c75b-073e-5015-8d98-5ff224180a0b";
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
        add_Changed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemIdentificationInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!SystemIdentificationSource {
        var _r: SystemIdentificationSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISystemIdentificationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c659e7d-c3c2-4d33-a2df-21bc41916eb3";
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
        get_Source: *const fn(self: *anyopaque, _r: *SystemIdentificationSource) callconv(.winapi) HRESULT,
    };
};
pub const ISystemIdentificationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetSystemIdForPublisher(self: *@This()) core.HResult!*SystemIdentificationInfo {
        var _r: *SystemIdentificationInfo = undefined;
        const _c = self.vtable.GetSystemIdForPublisher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSystemIdForUser(self: *@This(), user: *User) core.HResult!*SystemIdentificationInfo {
        var _r: *SystemIdentificationInfo = undefined;
        const _c = self.vtable.GetSystemIdForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISystemIdentificationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5581f42a-d3df-4d93-a37d-c41a616c6d01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSystemIdForPublisher: *const fn(self: *anyopaque, _r: **SystemIdentificationInfo) callconv(.winapi) HRESULT,
        GetSystemIdForUser: *const fn(self: *anyopaque, user: *User, _r: **SystemIdentificationInfo) callconv(.winapi) HRESULT,
    };
};
pub const ISystemSetupInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getOutOfBoxExperienceState(self: *@This()) core.HResult!SystemOutOfBoxExperienceState {
        var _r: SystemOutOfBoxExperienceState = undefined;
        const _c = self.vtable.get_OutOfBoxExperienceState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOutOfBoxExperienceStateChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OutOfBoxExperienceStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOutOfBoxExperienceStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OutOfBoxExperienceStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.ISystemSetupInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8366a4b-fb6a-4571-be0a-9a0f67954123";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OutOfBoxExperienceState: *const fn(self: *anyopaque, _r: *SystemOutOfBoxExperienceState) callconv(.winapi) HRESULT,
        add_OutOfBoxExperienceStateChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OutOfBoxExperienceStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUnsupportedAppRequirement = extern struct {
    vtable: *const VTable,
    pub fn getRequirement(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Requirement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReasons(self: *@This()) core.HResult!UnsupportedAppRequirementReasons {
        var _r: UnsupportedAppRequirementReasons = undefined;
        const _c = self.vtable.get_Reasons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IUnsupportedAppRequirement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6182445c-894b-5cbc-8976-a98e0a9b998d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Requirement: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Reasons: *const fn(self: *anyopaque, _r: *UnsupportedAppRequirementReasons) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsIntegrityPolicyStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabledForTrial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabledForTrial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDisable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDisable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisableSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisableSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPolicyChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PolicyChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePolicyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PolicyChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.System.Profile.IWindowsIntegrityPolicyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d1d81db-8d63-4789-9ea5-ddcf65a94f3c";
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
        get_IsEnabledForTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanDisable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisableSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_PolicyChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PolicyChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const PlatformDataCollectionLevel = enum(i32) {
    Security = 0,
    Basic = 1,
    Enhanced = 2,
    Full = 3,
};
pub const PlatformDiagnosticsAndUsageDataSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCollectionLevel() core.HResult!PlatformDataCollectionLevel {
        const factory = @This().IPlatformDiagnosticsAndUsageDataSettingsStaticsCache.get();
        return try factory.getCollectionLevel();
    }
    pub fn addCollectionLevelChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IPlatformDiagnosticsAndUsageDataSettingsStaticsCache.get();
        return try factory.addCollectionLevelChanged(handler);
    }
    pub fn removeCollectionLevelChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IPlatformDiagnosticsAndUsageDataSettingsStaticsCache.get();
        return try factory.removeCollectionLevelChanged(token);
    }
    pub fn CanCollectDiagnostics(level: PlatformDataCollectionLevel) core.HResult!bool {
        const factory = @This().IPlatformDiagnosticsAndUsageDataSettingsStaticsCache.get();
        return try factory.CanCollectDiagnostics(level);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.PlatformDiagnosticsAndUsageDataSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPlatformDiagnosticsAndUsageDataSettingsStaticsCache: FactoryCache(IPlatformDiagnosticsAndUsageDataSettingsStatics, RUNTIME_NAME) = .{};
};
pub const SmartAppControlPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsEnabled() core.HResult!bool {
        const factory = @This().ISmartAppControlPolicyStaticsCache.get();
        return try factory.getIsEnabled();
    }
    pub fn addChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().ISmartAppControlPolicyStaticsCache.get();
        return try factory.addChanged(handler);
    }
    pub fn removeChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ISmartAppControlPolicyStaticsCache.get();
        return try factory.removeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SmartAppControlPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISmartAppControlPolicyStaticsCache: FactoryCache(ISmartAppControlPolicyStatics, RUNTIME_NAME) = .{};
};
pub const SystemIdentification = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetSystemIdForPublisher() core.HResult!*SystemIdentificationInfo {
        const factory = @This().ISystemIdentificationStaticsCache.get();
        return try factory.GetSystemIdForPublisher();
    }
    pub fn GetSystemIdForUser(user: *User) core.HResult!*SystemIdentificationInfo {
        const factory = @This().ISystemIdentificationStaticsCache.get();
        return try factory.GetSystemIdForUser(user);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemIdentification";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISystemIdentificationStaticsCache: FactoryCache(ISystemIdentificationStatics, RUNTIME_NAME) = .{};
};
pub const SystemIdentificationInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!*IBuffer {
        const this: *ISystemIdentificationInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSource(self: *@This()) core.HResult!SystemIdentificationSource {
        const this: *ISystemIdentificationInfo = @ptrCast(self);
        return try this.getSource();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemIdentificationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemIdentificationInfo.GUID;
    pub const IID: Guid = ISystemIdentificationInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemIdentificationInfo.SIGNATURE);
};
pub const SystemIdentificationSource = enum(i32) {
    None = 0,
    Tpm = 1,
    Uefi = 2,
    Registry = 3,
};
pub const SystemOutOfBoxExperienceState = enum(i32) {
    NotStarted = 0,
    InProgress = 1,
    Completed = 2,
};
pub const SystemSetupInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getOutOfBoxExperienceState() core.HResult!SystemOutOfBoxExperienceState {
        const factory = @This().ISystemSetupInfoStaticsCache.get();
        return try factory.getOutOfBoxExperienceState();
    }
    pub fn addOutOfBoxExperienceStateChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().ISystemSetupInfoStaticsCache.get();
        return try factory.addOutOfBoxExperienceStateChanged(handler);
    }
    pub fn removeOutOfBoxExperienceStateChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ISystemSetupInfoStaticsCache.get();
        return try factory.removeOutOfBoxExperienceStateChanged(token);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.SystemSetupInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ISystemSetupInfoStaticsCache: FactoryCache(ISystemSetupInfoStatics, RUNTIME_NAME) = .{};
};
pub const UnsupportedAppRequirement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequirement(self: *@This()) core.HResult!HSTRING {
        const this: *IUnsupportedAppRequirement = @ptrCast(self);
        return try this.getRequirement();
    }
    pub fn getReasons(self: *@This()) core.HResult!UnsupportedAppRequirementReasons {
        const this: *IUnsupportedAppRequirement = @ptrCast(self);
        return try this.getReasons();
    }
    pub const NAME: []const u8 = "Windows.System.Profile.UnsupportedAppRequirement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnsupportedAppRequirement.GUID;
    pub const IID: Guid = IUnsupportedAppRequirement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnsupportedAppRequirement.SIGNATURE);
};
pub const UnsupportedAppRequirementReasons = enum(i32) {
    Unknown = 0,
    DeniedBySystem = 1,
};
pub const WindowsIntegrityPolicy = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIsEnabled() core.HResult!bool {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.getIsEnabled();
    }
    pub fn getIsEnabledForTrial() core.HResult!bool {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.getIsEnabledForTrial();
    }
    pub fn getCanDisable() core.HResult!bool {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.getCanDisable();
    }
    pub fn getIsDisableSupported() core.HResult!bool {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.getIsDisableSupported();
    }
    pub fn addPolicyChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.addPolicyChanged(handler);
    }
    pub fn removePolicyChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IWindowsIntegrityPolicyStaticsCache.get();
        return try factory.removePolicyChanged(token);
    }
    pub const NAME: []const u8 = "Windows.System.Profile.WindowsIntegrityPolicy";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWindowsIntegrityPolicyStaticsCache: FactoryCache(IWindowsIntegrityPolicyStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const FactoryCache = @import("../core.zig").FactoryCache;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const User = @import("../System.zig").User;
const HSTRING = @import("../root.zig").HSTRING;
pub const SystemManufacturers = @import("./Profile/SystemManufacturers.zig");
