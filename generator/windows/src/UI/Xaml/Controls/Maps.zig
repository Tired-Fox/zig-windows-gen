pub const IMapControlBusinessLandmarkClickEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        var _r: *IVectorView(LocalLocation) = undefined;
        const _c = self.vtable.get_LocalLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e464922-4a1a-4797-beb7-5cf7754cb867";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalLocations: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlBusinessLandmarkPointerEnteredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        var _r: *IVectorView(LocalLocation) = undefined;
        const _c = self.vtable.get_LocalLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e4081a6-ea98-4f95-8caf-5b42696ff504";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalLocations: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlBusinessLandmarkPointerExitedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        var _r: *IVectorView(LocalLocation) = undefined;
        const _c = self.vtable.get_LocalLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bb52caf-f24a-46d0-b463-65f719731057";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalLocations: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlBusinessLandmarkRightTappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        var _r: *IVectorView(LocalLocation) = undefined;
        const _c = self.vtable.get_LocalLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlBusinessLandmarkRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ab8ae7-f184-4ab1-b0b0-35c8bf0654b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalLocations: *const fn(self: *anyopaque, _r: **IVectorView(LocalLocation)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlDataHelper = extern struct {
    vtable: *const VTable,
    pub fn addBusinessLandmarkClick(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkClickEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BusinessLandmarkClick(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBusinessLandmarkClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BusinessLandmarkClick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransitFeatureClick(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeatureClickEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransitFeatureClick(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransitFeatureClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransitFeatureClick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBusinessLandmarkRightTapped(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BusinessLandmarkRightTapped(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBusinessLandmarkRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BusinessLandmarkRightTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransitFeatureRightTapped(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeatureRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransitFeatureRightTapped(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransitFeatureRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransitFeatureRightTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlDataHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bb0f09c-14ab-486c-9de5-5a5def0205a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BusinessLandmarkClick: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkClickEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BusinessLandmarkClick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TransitFeatureClick: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlTransitFeatureClickEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransitFeatureClick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BusinessLandmarkRightTapped: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkRightTappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BusinessLandmarkRightTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TransitFeatureRightTapped: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlTransitFeatureRightTappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransitFeatureRightTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlDataHelper2 = extern struct {
    vtable: *const VTable,
    pub fn addBusinessLandmarkPointerEntered(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BusinessLandmarkPointerEntered(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBusinessLandmarkPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BusinessLandmarkPointerEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransitFeaturePointerEntered(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransitFeaturePointerEntered(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransitFeaturePointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransitFeaturePointerEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBusinessLandmarkPointerExited(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BusinessLandmarkPointerExited(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBusinessLandmarkPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BusinessLandmarkPointerExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransitFeaturePointerExited(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransitFeaturePointerExited(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransitFeaturePointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransitFeaturePointerExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlDataHelper2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59ce429e-562f-4c21-a674-0f11decf0fb3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BusinessLandmarkPointerEntered: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BusinessLandmarkPointerEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TransitFeaturePointerEntered: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransitFeaturePointerEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BusinessLandmarkPointerExited: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerExitedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BusinessLandmarkPointerExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TransitFeaturePointerExited: *const fn(self: *anyopaque, value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerExitedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransitFeaturePointerExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlDataHelperFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), map: *MapControl) core.HResult!*MapControlDataHelper {
        var _r: *MapControlDataHelper = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), map, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlDataHelperFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b70aa8e-02ef-469c-bbaf-dc2158d4289b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, map: *MapControl, _r: **MapControlDataHelper) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlDataHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateMapControl(self: *@This(), rasterRenderMode: bool) core.HResult!*MapControl {
        var _r: *MapControl = undefined;
        const _c = self.vtable.CreateMapControl(@ptrCast(self), rasterRenderMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlDataHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a6632d6-e944-4110-83cf-314d0722e2e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMapControl: *const fn(self: *anyopaque, rasterRenderMode: bool, _r: **MapControl) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlTransitFeatureClickEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_TransitProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76179969-b765-4622-b08a-3072745a4541";
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
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_TransitProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlTransitFeaturePointerEnteredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_TransitProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73911a4e-ec4f-479e-94a1-36e081d0d897";
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
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_TransitProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlTransitFeaturePointerExitedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_TransitProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeaturePointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a11258d-448d-44e7-bc69-d13d497154e9";
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
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_TransitProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlTransitFeatureRightTappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_TransitProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlTransitFeatureRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aea1cc49-a729-4eae-a59a-3ec9a125a028";
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
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_TransitProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const MapControlBusinessLandmarkClickEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        const this: *IMapControlBusinessLandmarkClickEventArgs = @ptrCast(self);
        return try this.getLocalLocations();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlBusinessLandmarkClickEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlBusinessLandmarkClickEventArgs.GUID;
    pub const IID: Guid = IMapControlBusinessLandmarkClickEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlBusinessLandmarkClickEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlBusinessLandmarkPointerEnteredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        const this: *IMapControlBusinessLandmarkPointerEnteredEventArgs = @ptrCast(self);
        return try this.getLocalLocations();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlBusinessLandmarkPointerEnteredEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlBusinessLandmarkPointerEnteredEventArgs.GUID;
    pub const IID: Guid = IMapControlBusinessLandmarkPointerEnteredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlBusinessLandmarkPointerEnteredEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlBusinessLandmarkPointerExitedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        const this: *IMapControlBusinessLandmarkPointerExitedEventArgs = @ptrCast(self);
        return try this.getLocalLocations();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlBusinessLandmarkPointerExitedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlBusinessLandmarkPointerExitedEventArgs.GUID;
    pub const IID: Guid = IMapControlBusinessLandmarkPointerExitedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlBusinessLandmarkPointerExitedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlBusinessLandmarkRightTappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalLocations(self: *@This()) core.HResult!*IVectorView(LocalLocation) {
        const this: *IMapControlBusinessLandmarkRightTappedEventArgs = @ptrCast(self);
        return try this.getLocalLocations();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlBusinessLandmarkRightTappedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlBusinessLandmarkRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlBusinessLandmarkRightTappedEventArgs.GUID;
    pub const IID: Guid = IMapControlBusinessLandmarkRightTappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlBusinessLandmarkRightTappedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlDataHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addBusinessLandmarkClick(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkClickEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.addBusinessLandmarkClick(value);
    }
    pub fn removeBusinessLandmarkClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.removeBusinessLandmarkClick(token);
    }
    pub fn addTransitFeatureClick(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeatureClickEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.addTransitFeatureClick(value);
    }
    pub fn removeTransitFeatureClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.removeTransitFeatureClick(token);
    }
    pub fn addBusinessLandmarkRightTapped(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.addBusinessLandmarkRightTapped(value);
    }
    pub fn removeBusinessLandmarkRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.removeBusinessLandmarkRightTapped(token);
    }
    pub fn addTransitFeatureRightTapped(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeatureRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.addTransitFeatureRightTapped(value);
    }
    pub fn removeTransitFeatureRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControlDataHelper = @ptrCast(self);
        return try this.removeTransitFeatureRightTapped(token);
    }
    pub fn addBusinessLandmarkPointerEntered(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBusinessLandmarkPointerEntered(value);
    }
    pub fn removeBusinessLandmarkPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBusinessLandmarkPointerEntered(token);
    }
    pub fn addTransitFeaturePointerEntered(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addTransitFeaturePointerEntered(value);
    }
    pub fn removeTransitFeaturePointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeTransitFeaturePointerEntered(token);
    }
    pub fn addBusinessLandmarkPointerExited(self: *@This(), value: *TypedEventHandler(MapControl,MapControlBusinessLandmarkPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBusinessLandmarkPointerExited(value);
    }
    pub fn removeBusinessLandmarkPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBusinessLandmarkPointerExited(token);
    }
    pub fn addTransitFeaturePointerExited(self: *@This(), value: *TypedEventHandler(MapControl,MapControlTransitFeaturePointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addTransitFeaturePointerExited(value);
    }
    pub fn removeTransitFeaturePointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControlDataHelper2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControlDataHelper2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeTransitFeaturePointerExited(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(map: *MapControl) core.HResult!*MapControlDataHelper {
        const factory = @This().IMapControlDataHelperFactoryCache.get();
        return try factory.CreateInstance(map);
    }
    pub fn CreateMapControl(rasterRenderMode: bool) core.HResult!*MapControl {
        const factory = @This().IMapControlDataHelperStaticsCache.get();
        return try factory.CreateMapControl(rasterRenderMode);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlDataHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlDataHelper.GUID;
    pub const IID: Guid = IMapControlDataHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlDataHelper.SIGNATURE);
    var _IMapControlDataHelperFactoryCache: FactoryCache(IMapControlDataHelperFactory, RUNTIME_NAME) = .{};
    var _IMapControlDataHelperStaticsCache: FactoryCache(IMapControlDataHelperStatics, RUNTIME_NAME) = .{};
};
pub const MapControlTransitFeatureClickEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapControlTransitFeatureClickEventArgs = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapControlTransitFeatureClickEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IMapControlTransitFeatureClickEventArgs = @ptrCast(self);
        return try this.getTransitProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlTransitFeatureClickEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlTransitFeatureClickEventArgs.GUID;
    pub const IID: Guid = IMapControlTransitFeatureClickEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlTransitFeatureClickEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlTransitFeaturePointerEnteredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapControlTransitFeaturePointerEnteredEventArgs = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapControlTransitFeaturePointerEnteredEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IMapControlTransitFeaturePointerEnteredEventArgs = @ptrCast(self);
        return try this.getTransitProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlTransitFeaturePointerEnteredEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlTransitFeaturePointerEnteredEventArgs.GUID;
    pub const IID: Guid = IMapControlTransitFeaturePointerEnteredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlTransitFeaturePointerEnteredEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlTransitFeaturePointerExitedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapControlTransitFeaturePointerExitedEventArgs = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapControlTransitFeaturePointerExitedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IMapControlTransitFeaturePointerExitedEventArgs = @ptrCast(self);
        return try this.getTransitProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlTransitFeaturePointerExitedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlTransitFeaturePointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlTransitFeaturePointerExitedEventArgs.GUID;
    pub const IID: Guid = IMapControlTransitFeaturePointerExitedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlTransitFeaturePointerExitedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControlTransitFeatureRightTappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IMapControlTransitFeatureRightTappedEventArgs = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapControlTransitFeatureRightTappedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getTransitProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IMapControlTransitFeatureRightTappedEventArgs = @ptrCast(self);
        return try this.getTransitProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControlTransitFeatureRightTappedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControlTransitFeatureRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlTransitFeatureRightTappedEventArgs.GUID;
    pub const IID: Guid = IMapControlTransitFeatureRightTappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlTransitFeatureRightTappedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileDataSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileDataSource {
        const factory = @This().IMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileDataSource.GUID;
    pub const IID: Guid = IMapTileDataSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileDataSource.SIGNATURE);
    var _IMapTileDataSourceFactoryCache: FactoryCache(IMapTileDataSourceFactory, RUNTIME_NAME) = .{};
};
pub const CustomMapTileDataSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addBitmapRequested(self: *@This(), handler: *TypedEventHandler(CustomMapTileDataSource,MapTileBitmapRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICustomMapTileDataSource = @ptrCast(self);
        return try this.addBitmapRequested(handler);
    }
    pub fn removeBitmapRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICustomMapTileDataSource = @ptrCast(self);
        return try this.removeBitmapRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CustomMapTileDataSource {
        const factory = @This().ICustomMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.CustomMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICustomMapTileDataSource.GUID;
    pub const IID: Guid = ICustomMapTileDataSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICustomMapTileDataSource.SIGNATURE);
    var _ICustomMapTileDataSourceFactoryCache: FactoryCache(ICustomMapTileDataSourceFactory, RUNTIME_NAME) = .{};
};
pub const HttpMapTileDataSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUriFormatString(self: *@This()) core.HResult!HSTRING {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.getUriFormatString();
    }
    pub fn putUriFormatString(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.putUriFormatString(value);
    }
    pub fn getAdditionalRequestHeaders(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.getAdditionalRequestHeaders();
    }
    pub fn getAllowCaching(self: *@This()) core.HResult!bool {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.getAllowCaching();
    }
    pub fn putAllowCaching(self: *@This(), value: bool) core.HResult!void {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.putAllowCaching(value);
    }
    pub fn addUriRequested(self: *@This(), handler: *TypedEventHandler(HttpMapTileDataSource,MapTileUriRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.addUriRequested(handler);
    }
    pub fn removeUriRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHttpMapTileDataSource = @ptrCast(self);
        return try this.removeUriRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HttpMapTileDataSource {
        const factory = @This().IHttpMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithUriFormatString(uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HttpMapTileDataSource {
        const factory = @This().IHttpMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstanceWithUriFormatString(uriFormatString, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.HttpMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHttpMapTileDataSource.GUID;
    pub const IID: Guid = IHttpMapTileDataSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHttpMapTileDataSource.SIGNATURE);
    var _IHttpMapTileDataSourceFactoryCache: FactoryCache(IHttpMapTileDataSourceFactory, RUNTIME_NAME) = .{};
};
pub const ICustomMapTileDataSource = extern struct {
    vtable: *const VTable,
    pub fn addBitmapRequested(self: *@This(), handler: *TypedEventHandler(CustomMapTileDataSource,MapTileBitmapRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BitmapRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBitmapRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BitmapRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65da384a-2db1-4be1-b155-3d0c9ecf4799";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BitmapRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(CustomMapTileDataSource,MapTileBitmapRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BitmapRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICustomMapTileDataSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CustomMapTileDataSource {
        var _r: *CustomMapTileDataSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.ICustomMapTileDataSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8477947-c955-4f22-9444-a1d8d744af11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CustomMapTileDataSource) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMapTileDataSource = extern struct {
    vtable: *const VTable,
    pub fn getUriFormatString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UriFormatString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUriFormatString(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UriFormatString(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAdditionalRequestHeaders(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_AdditionalRequestHeaders(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowCaching(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowCaching(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowCaching(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowCaching(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUriRequested(self: *@This(), handler: *TypedEventHandler(HttpMapTileDataSource,MapTileUriRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UriRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUriRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UriRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d03cb5c-fd79-4795-87be-7e54ca0b37d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UriFormatString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UriFormatString: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AdditionalRequestHeaders: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_AllowCaching: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowCaching: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_UriRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(HttpMapTileDataSource,MapTileUriRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UriRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHttpMapTileDataSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HttpMapTileDataSource {
        var _r: *HttpMapTileDataSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithUriFormatString(self: *@This(), uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HttpMapTileDataSource {
        var _r: *HttpMapTileDataSource = undefined;
        const _c = self.vtable.CreateInstanceWithUriFormatString(@ptrCast(self), uriFormatString, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IHttpMapTileDataSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53b4b107-84dc-4291-89f8-6d0bb612a055";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **HttpMapTileDataSource) callconv(.winapi) HRESULT,
        CreateInstanceWithUriFormatString: *const fn(self: *anyopaque, uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **HttpMapTileDataSource) callconv(.winapi) HRESULT,
    };
};
pub const ILocalMapTileDataSource = extern struct {
    vtable: *const VTable,
    pub fn getUriFormatString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UriFormatString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUriFormatString(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UriFormatString(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUriRequested(self: *@This(), handler: *TypedEventHandler(LocalMapTileDataSource,MapTileUriRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UriRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUriRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UriRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "616257b5-9108-4f12-8bf4-bb3c8f6274e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UriFormatString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UriFormatString: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        add_UriRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(LocalMapTileDataSource,MapTileUriRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UriRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILocalMapTileDataSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*LocalMapTileDataSource {
        var _r: *LocalMapTileDataSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithUriFormatString(self: *@This(), uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*LocalMapTileDataSource {
        var _r: *LocalMapTileDataSource = undefined;
        const _c = self.vtable.CreateInstanceWithUriFormatString(@ptrCast(self), uriFormatString, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.ILocalMapTileDataSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5cfe9fc-72ac-4839-8a0d-011f24693c79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **LocalMapTileDataSource) callconv(.winapi) HRESULT,
        CreateInstanceWithUriFormatString: *const fn(self: *anyopaque, uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **LocalMapTileDataSource) callconv(.winapi) HRESULT,
    };
};
pub const IMapActualCameraChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_Camera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "daa080da-b7f4-422c-a618-bbaa7c1d814c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Camera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
    };
};
pub const IMapActualCameraChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var _r: MapCameraChangeReason = undefined;
        const _c = self.vtable.get_ChangeReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ba4c7e5-10dc-455a-9d04-1d72fb6d9b93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeReason: *const fn(self: *anyopaque, _r: *MapCameraChangeReason) callconv(.winapi) HRESULT,
    };
};
pub const IMapActualCameraChangingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_Camera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b0dbed6-93f7-4682-8de5-a47a1cc7a945";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Camera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
    };
};
pub const IMapActualCameraChangingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var _r: MapCameraChangeReason = undefined;
        const _c = self.vtable.get_ChangeReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapActualCameraChangingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2867897-40ac-4e8a-a927-510f3846a47e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeReason: *const fn(self: *anyopaque, _r: *MapCameraChangeReason) callconv(.winapi) HRESULT,
    };
};
pub const IMapBillboard = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalizedAnchorPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_NormalizedAnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalizedAnchorPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_NormalizedAnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Image(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCollisionBehaviorDesired(self: *@This()) core.HResult!MapElementCollisionBehavior {
        var _r: MapElementCollisionBehavior = undefined;
        const _c = self.vtable.get_CollisionBehaviorDesired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCollisionBehaviorDesired(self: *@This(), value: MapElementCollisionBehavior) core.HResult!void {
        const _c = self.vtable.put_CollisionBehaviorDesired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReferenceCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_ReferenceCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapBillboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1694259d-0ae2-4f42-a02e-292ca835d39d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: *Geopoint) callconv(.winapi) HRESULT,
        get_NormalizedAnchorPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_NormalizedAnchorPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_CollisionBehaviorDesired: *const fn(self: *anyopaque, _r: *MapElementCollisionBehavior) callconv(.winapi) HRESULT,
        put_CollisionBehaviorDesired: *const fn(self: *anyopaque, value: MapElementCollisionBehavior) callconv(.winapi) HRESULT,
        get_ReferenceCamera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
    };
};
pub const IMapBillboardFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceFromCamera(self: *@This(), camera: *MapCamera) core.HResult!*MapBillboard {
        var _r: *MapBillboard = undefined;
        const _c = self.vtable.CreateInstanceFromCamera(@ptrCast(self), camera, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapBillboardFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be45a4c5-8f09-4b86-ae28-783740eb8b31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceFromCamera: *const fn(self: *anyopaque, camera: *MapCamera, _r: **MapBillboard) callconv(.winapi) HRESULT,
    };
};
pub const IMapBillboardStatics = extern struct {
    vtable: *const VTable,
    pub fn getLocationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedAnchorPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NormalizedAnchorPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollisionBehaviorDesiredProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CollisionBehaviorDesiredProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapBillboardStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdf839fe-e1f7-4fb0-8887-7da68c647333";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_NormalizedAnchorPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CollisionBehaviorDesiredProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapCamera = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Heading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Heading(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Pitch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPitch(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Pitch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoll(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Roll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoll(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Roll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFieldOfView(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FieldOfView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFieldOfView(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FieldOfView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapCamera";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53a6b623-c0f8-4d8b-ad1e-a59598ea840b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: *Geopoint) callconv(.winapi) HRESULT,
        get_Heading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Heading: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Pitch: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Pitch: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Roll: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Roll: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FieldOfView: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FieldOfView: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IMapCameraFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithLocation(self: *@This(), location: *Geopoint) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.CreateInstanceWithLocation(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithLocationAndHeading(self: *@This(), location: *Geopoint, headingInDegrees: f64) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.CreateInstanceWithLocationAndHeading(@ptrCast(self), location, headingInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithLocationHeadingAndPitch(self: *@This(), location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.CreateInstanceWithLocationHeadingAndPitch(@ptrCast(self), location, headingInDegrees, pitchInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithLocationHeadingPitchRollAndFieldOfView(self: *@This(), location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64, rollInDegrees: f64, fieldOfViewInDegrees: f64) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.CreateInstanceWithLocationHeadingPitchRollAndFieldOfView(@ptrCast(self), location, headingInDegrees, pitchInDegrees, rollInDegrees, fieldOfViewInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapCameraFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea3b0f16-83af-4ace-8e71-10ad9f1e9e7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithLocation: *const fn(self: *anyopaque, location: *Geopoint, _r: **MapCamera) callconv(.winapi) HRESULT,
        CreateInstanceWithLocationAndHeading: *const fn(self: *anyopaque, location: *Geopoint, headingInDegrees: f64, _r: **MapCamera) callconv(.winapi) HRESULT,
        CreateInstanceWithLocationHeadingAndPitch: *const fn(self: *anyopaque, location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64, _r: **MapCamera) callconv(.winapi) HRESULT,
        CreateInstanceWithLocationHeadingPitchRollAndFieldOfView: *const fn(self: *anyopaque, location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64, rollInDegrees: f64, fieldOfViewInDegrees: f64, _r: **MapCamera) callconv(.winapi) HRESULT,
    };
};
pub const IMapContextRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVectorView(MapElement) {
        var _r: *IVectorView(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdd1b423-c961-4df2-bb57-82ee0f0bb591";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVectorView(MapElement)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl = extern struct {
    vtable: *const VTable,
    pub fn getCenter(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenter(self: *@This(), value: *Geopoint) core.HResult!void {
        const _c = self.vtable.put_Center(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVector(DependencyObject) {
        var _r: *IVector(DependencyObject) = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorScheme(self: *@This()) core.HResult!MapColorScheme {
        var _r: MapColorScheme = undefined;
        const _c = self.vtable.get_ColorScheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorScheme(self: *@This(), value: MapColorScheme) core.HResult!void {
        const _c = self.vtable.put_ColorScheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredPitch(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredPitch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredPitch(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredPitch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Heading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Heading(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLandmarksVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_LandmarksVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLandmarksVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_LandmarksVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLoadingStatus(self: *@This()) core.HResult!MapLoadingStatus {
        var _r: MapLoadingStatus = undefined;
        const _c = self.vtable.get_LoadingStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapServiceToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MapServiceToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapServiceToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MapServiceToken(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxZoomLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinZoomLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPedestrianFeaturesVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PedestrianFeaturesVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPedestrianFeaturesVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_PedestrianFeaturesVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Pitch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyle(self: *@This()) core.HResult!MapStyle {
        var _r: MapStyle = undefined;
        const _c = self.vtable.get_Style(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyle(self: *@This(), value: MapStyle) core.HResult!void {
        const _c = self.vtable.put_Style(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrafficFlowVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TrafficFlowVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrafficFlowVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TrafficFlowVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformOrigin(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_TransformOrigin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformOrigin(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_TransformOrigin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWatermarkMode(self: *@This()) core.HResult!MapWatermarkMode {
        var _r: MapWatermarkMode = undefined;
        const _c = self.vtable.get_WatermarkMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWatermarkMode(self: *@This(), value: MapWatermarkMode) core.HResult!void {
        const _c = self.vtable.put_WatermarkMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZoomLevel(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ZoomLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        var _r: *IVector(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutes(self: *@This()) core.HResult!*IVector(MapRouteView) {
        var _r: *IVector(MapRouteView) = undefined;
        const _c = self.vtable.get_Routes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTileSources(self: *@This()) core.HResult!*IVector(MapTileSource) {
        var _r: *IVector(MapTileSource) = undefined;
        const _c = self.vtable.get_TileSources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCenterChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CenterChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCenterChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CenterChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHeadingChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HeadingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHeadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HeadingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLoadingStatusChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LoadingStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLoadingStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LoadingStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapDoubleTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapDoubleTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapDoubleTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapDoubleTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapHolding(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapHolding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapHolding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPitchChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PitchChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePitchChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PitchChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransformOriginChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TransformOriginChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransformOriginChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TransformOriginChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addZoomLevelChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ZoomLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeZoomLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ZoomLevelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindMapElementsAtOffset(self: *@This(), offset: Point) core.HResult!*IVectorView(MapElement) {
        var _r: *IVectorView(MapElement) = undefined;
        const _c = self.vtable.FindMapElementsAtOffset(@ptrCast(self), offset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocationFromOffset(self: *@This(), offset: Point, location: *Geopoint) core.HResult!void {
        const _c = self.vtable.GetLocationFromOffset(@ptrCast(self), offset, location);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetOffsetFromLocation(self: *@This(), location: *Geopoint, offset: Point) core.HResult!void {
        const _c = self.vtable.GetOffsetFromLocation(@ptrCast(self), location, offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsLocationInView(self: *@This(), location: *Geopoint, isInView: bool) core.HResult!void {
        const _c = self.vtable.IsLocationInView(@ptrCast(self), location, isInView);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TrySetViewBoundsAsync(self: *@This(), bounds: *GeoboundingBox, margin: *IReference(Thickness), animation: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetViewBoundsAsync(@ptrCast(self), bounds, margin, animation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetViewAsync(@ptrCast(self), center, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetViewAsync(@ptrCast(self), center, zoomLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetViewAsync(@ptrCast(self), center, zoomLevel, heading, desiredPitch, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64), animation: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetViewAsync(@ptrCast(self), center, zoomLevel, heading, desiredPitch, animation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42d0b851-5256-4747-9e6c-0d11e966141e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        put_Center: *const fn(self: *anyopaque, value: *Geopoint) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **IVector(DependencyObject)) callconv(.winapi) HRESULT,
        get_ColorScheme: *const fn(self: *anyopaque, _r: *MapColorScheme) callconv(.winapi) HRESULT,
        put_ColorScheme: *const fn(self: *anyopaque, value: MapColorScheme) callconv(.winapi) HRESULT,
        get_DesiredPitch: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredPitch: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Heading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Heading: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LandmarksVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_LandmarksVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LoadingStatus: *const fn(self: *anyopaque, _r: *MapLoadingStatus) callconv(.winapi) HRESULT,
        get_MapServiceToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MapServiceToken: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MaxZoomLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinZoomLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_PedestrianFeaturesVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_PedestrianFeaturesVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Pitch: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Style: *const fn(self: *anyopaque, _r: *MapStyle) callconv(.winapi) HRESULT,
        put_Style: *const fn(self: *anyopaque, value: MapStyle) callconv(.winapi) HRESULT,
        get_TrafficFlowVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TrafficFlowVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TransformOrigin: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_TransformOrigin: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_WatermarkMode: *const fn(self: *anyopaque, _r: *MapWatermarkMode) callconv(.winapi) HRESULT,
        put_WatermarkMode: *const fn(self: *anyopaque, value: MapWatermarkMode) callconv(.winapi) HRESULT,
        get_ZoomLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ZoomLevel: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVector(MapElement)) callconv(.winapi) HRESULT,
        get_Routes: *const fn(self: *anyopaque, _r: **IVector(MapRouteView)) callconv(.winapi) HRESULT,
        get_TileSources: *const fn(self: *anyopaque, _r: **IVector(MapTileSource)) callconv(.winapi) HRESULT,
        add_CenterChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CenterChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HeadingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HeadingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LoadingStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LoadingStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapDoubleTapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapInputEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapDoubleTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapHolding: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapInputEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapHolding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapTapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapInputEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PitchChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PitchChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TransformOriginChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TransformOriginChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ZoomLevelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ZoomLevelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindMapElementsAtOffset: *const fn(self: *anyopaque, offset: Point, _r: **IVectorView(MapElement)) callconv(.winapi) HRESULT,
        GetLocationFromOffset: *const fn(self: *anyopaque, offset: Point, location: *Geopoint) callconv(.winapi) HRESULT,
        GetOffsetFromLocation: *const fn(self: *anyopaque, location: *Geopoint, offset: Point) callconv(.winapi) HRESULT,
        IsLocationInView: *const fn(self: *anyopaque, location: *Geopoint, isInView: bool) callconv(.winapi) HRESULT,
        TrySetViewBoundsAsync: *const fn(self: *anyopaque, bounds: *GeoboundingBox, margin: *IReference(Thickness), animation: MapAnimationKind, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetViewAsync: *const fn(self: *anyopaque, center: *Geopoint, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetViewAsync: *const fn(self: *anyopaque, center: *Geopoint, zoomLevel: *IReference(f64), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetViewAsync: *const fn(self: *anyopaque, center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetViewAsync: *const fn(self: *anyopaque, center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64), animation: MapAnimationKind, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl2 = extern struct {
    vtable: *const VTable,
    pub fn getBusinessLandmarksVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BusinessLandmarksVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBusinessLandmarksVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BusinessLandmarksVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransitFeaturesVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransitFeaturesVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransitFeaturesVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TransitFeaturesVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPanInteractionMode(self: *@This()) core.HResult!MapPanInteractionMode {
        var _r: MapPanInteractionMode = undefined;
        const _c = self.vtable.get_PanInteractionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPanInteractionMode(self: *@This(), value: MapPanInteractionMode) core.HResult!void {
        const _c = self.vtable.put_PanInteractionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotateInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var _r: MapInteractionMode = undefined;
        const _c = self.vtable.get_RotateInteractionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotateInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        const _c = self.vtable.put_RotateInteractionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTiltInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var _r: MapInteractionMode = undefined;
        const _c = self.vtable.get_TiltInteractionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTiltInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        const _c = self.vtable.put_TiltInteractionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZoomInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var _r: MapInteractionMode = undefined;
        const _c = self.vtable.get_ZoomInteractionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZoomInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        const _c = self.vtable.put_ZoomInteractionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIs3DSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Is3DSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStreetsideSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStreetsideSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScene(self: *@This()) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.get_Scene(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScene(self: *@This(), value: *MapScene) core.HResult!void {
        const _c = self.vtable.put_Scene(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_ActualCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_TargetCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomExperience(self: *@This()) core.HResult!*MapCustomExperience {
        var _r: *MapCustomExperience = undefined;
        const _c = self.vtable.get_CustomExperience(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomExperience(self: *@This(), value: *MapCustomExperience) core.HResult!void {
        const _c = self.vtable.put_CustomExperience(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementClick(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementClickEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementClick(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementClick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementPointerEntered(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementPointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementPointerEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementPointerExited(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementPointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementPointerExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActualCameraChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapActualCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActualCameraChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActualCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActualCameraChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addActualCameraChanging(self: *@This(), handler: *TypedEventHandler(MapControl,MapActualCameraChangingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActualCameraChanging(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActualCameraChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActualCameraChanging(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTargetCameraChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapTargetCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TargetCameraChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTargetCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TargetCameraChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCustomExperienceChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapCustomExperienceChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CustomExperienceChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCustomExperienceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CustomExperienceChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartContinuousRotate(self: *@This(), rateInDegreesPerSecond: f64) core.HResult!void {
        const _c = self.vtable.StartContinuousRotate(@ptrCast(self), rateInDegreesPerSecond);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopContinuousRotate(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopContinuousRotate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartContinuousTilt(self: *@This(), rateInDegreesPerSecond: f64) core.HResult!void {
        const _c = self.vtable.StartContinuousTilt(@ptrCast(self), rateInDegreesPerSecond);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopContinuousTilt(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopContinuousTilt(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartContinuousZoom(self: *@This(), rateOfChangePerSecond: f64) core.HResult!void {
        const _c = self.vtable.StartContinuousZoom(@ptrCast(self), rateOfChangePerSecond);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopContinuousZoom(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopContinuousZoom(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryRotateAsync(self: *@This(), degrees: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRotateAsync(@ptrCast(self), degrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRotateToAsync(self: *@This(), angleInDegrees: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRotateToAsync(@ptrCast(self), angleInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTiltAsync(self: *@This(), degrees: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryTiltAsync(@ptrCast(self), degrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTiltToAsync(self: *@This(), angleInDegrees: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryTiltToAsync(@ptrCast(self), angleInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryZoomInAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryZoomInAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryZoomOutAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryZoomOutAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryZoomToAsync(self: *@This(), zoomLevel: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryZoomToAsync(@ptrCast(self), zoomLevel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetSceneAsync(self: *@This(), scene: *MapScene) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetSceneAsync(@ptrCast(self), scene, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetSceneAsync(self: *@This(), scene: *MapScene, animationKind: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetSceneAsync(@ptrCast(self), scene, animationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1fd644d-96ec-4065-b0f0-75281da3654d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BusinessLandmarksVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BusinessLandmarksVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TransitFeaturesVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TransitFeaturesVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PanInteractionMode: *const fn(self: *anyopaque, _r: *MapPanInteractionMode) callconv(.winapi) HRESULT,
        put_PanInteractionMode: *const fn(self: *anyopaque, value: MapPanInteractionMode) callconv(.winapi) HRESULT,
        get_RotateInteractionMode: *const fn(self: *anyopaque, _r: *MapInteractionMode) callconv(.winapi) HRESULT,
        put_RotateInteractionMode: *const fn(self: *anyopaque, value: MapInteractionMode) callconv(.winapi) HRESULT,
        get_TiltInteractionMode: *const fn(self: *anyopaque, _r: *MapInteractionMode) callconv(.winapi) HRESULT,
        put_TiltInteractionMode: *const fn(self: *anyopaque, value: MapInteractionMode) callconv(.winapi) HRESULT,
        get_ZoomInteractionMode: *const fn(self: *anyopaque, _r: *MapInteractionMode) callconv(.winapi) HRESULT,
        put_ZoomInteractionMode: *const fn(self: *anyopaque, value: MapInteractionMode) callconv(.winapi) HRESULT,
        get_Is3DSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStreetsideSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Scene: *const fn(self: *anyopaque, _r: **MapScene) callconv(.winapi) HRESULT,
        put_Scene: *const fn(self: *anyopaque, value: *MapScene) callconv(.winapi) HRESULT,
        get_ActualCamera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
        get_TargetCamera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
        get_CustomExperience: *const fn(self: *anyopaque, _r: **MapCustomExperience) callconv(.winapi) HRESULT,
        put_CustomExperience: *const fn(self: *anyopaque, value: *MapCustomExperience) callconv(.winapi) HRESULT,
        add_MapElementClick: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapElementClickEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementClick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapElementPointerEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapElementPointerEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementPointerEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapElementPointerExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapElementPointerExitedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementPointerExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActualCameraChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapActualCameraChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActualCameraChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ActualCameraChanging: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapActualCameraChangingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActualCameraChanging: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TargetCameraChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapTargetCameraChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TargetCameraChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CustomExperienceChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapCustomExperienceChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CustomExperienceChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartContinuousRotate: *const fn(self: *anyopaque, rateInDegreesPerSecond: f64) callconv(.winapi) HRESULT,
        StopContinuousRotate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartContinuousTilt: *const fn(self: *anyopaque, rateInDegreesPerSecond: f64) callconv(.winapi) HRESULT,
        StopContinuousTilt: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartContinuousZoom: *const fn(self: *anyopaque, rateOfChangePerSecond: f64) callconv(.winapi) HRESULT,
        StopContinuousZoom: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryRotateAsync: *const fn(self: *anyopaque, degrees: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryRotateToAsync: *const fn(self: *anyopaque, angleInDegrees: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryTiltAsync: *const fn(self: *anyopaque, degrees: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryTiltToAsync: *const fn(self: *anyopaque, angleInDegrees: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryZoomInAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryZoomOutAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryZoomToAsync: *const fn(self: *anyopaque, zoomLevel: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetSceneAsync: *const fn(self: *anyopaque, scene: *MapScene, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetSceneAsync: *const fn(self: *anyopaque, scene: *MapScene, animationKind: MapAnimationKind, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl3 = extern struct {
    vtable: *const VTable,
    pub fn addMapRightTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapRightTapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapRightTapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "586328f8-8cdd-40ae-9338-af2a7be845e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MapRightTapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapRightTappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapRightTapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl4 = extern struct {
    vtable: *const VTable,
    pub fn getBusinessLandmarksEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BusinessLandmarksEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBusinessLandmarksEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BusinessLandmarksEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransitFeaturesEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransitFeaturesEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransitFeaturesEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TransitFeaturesEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetVisibleRegion(self: *@This(), region: MapVisibleRegionKind) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.GetVisibleRegion(@ptrCast(self), region, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "068f132a-1817-466d-b7ce-419b3f8e248b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BusinessLandmarksEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BusinessLandmarksEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TransitFeaturesEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TransitFeaturesEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetVisibleRegion: *const fn(self: *anyopaque, region: MapVisibleRegionKind, _r: **Geopath) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl5 = extern struct {
    vtable: *const VTable,
    pub fn getMapProjection(self: *@This()) core.HResult!MapProjection {
        var _r: MapProjection = undefined;
        const _c = self.vtable.get_MapProjection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapProjection(self: *@This(), value: MapProjection) core.HResult!void {
        const _c = self.vtable.put_MapProjection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStyleSheet(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.get_StyleSheet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyleSheet(self: *@This(), value: *MapStyleSheet) core.HResult!void {
        const _c = self.vtable.put_StyleSheet(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getViewPadding(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_ViewPadding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewPadding(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_ViewPadding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapContextRequested(self: *@This(), handler: *TypedEventHandler(MapControl,MapContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapContextRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapContextRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindMapElementsAtOffset(self: *@This(), offset: Point, radius: f64) core.HResult!*IVectorView(MapElement) {
        var _r: *IVectorView(MapElement) = undefined;
        const _c = self.vtable.FindMapElementsAtOffset(@ptrCast(self), offset, radius, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocationFromOffset(self: *@This(), offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint) core.HResult!void {
        const _c = self.vtable.GetLocationFromOffset(@ptrCast(self), offset, desiredReferenceSystem, location);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartContinuousPan(self: *@This(), horizontalPixelsPerSecond: f64, verticalPixelsPerSecond: f64) core.HResult!void {
        const _c = self.vtable.StartContinuousPan(@ptrCast(self), horizontalPixelsPerSecond, verticalPixelsPerSecond);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopContinuousPan(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopContinuousPan(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryPanAsync(self: *@This(), horizontalPixels: f64, verticalPixels: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPanAsync(@ptrCast(self), horizontalPixels, verticalPixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPanToAsync(self: *@This(), location: *Geopoint) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPanToAsync(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd9b0ffd-7823-46a2-82c9-65ddac4f365f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapProjection: *const fn(self: *anyopaque, _r: *MapProjection) callconv(.winapi) HRESULT,
        put_MapProjection: *const fn(self: *anyopaque, value: MapProjection) callconv(.winapi) HRESULT,
        get_StyleSheet: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        put_StyleSheet: *const fn(self: *anyopaque, value: *MapStyleSheet) callconv(.winapi) HRESULT,
        get_ViewPadding: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_ViewPadding: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        add_MapContextRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapControl,MapContextRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapContextRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        FindMapElementsAtOffset: *const fn(self: *anyopaque, offset: Point, radius: f64, _r: **IVectorView(MapElement)) callconv(.winapi) HRESULT,
        GetLocationFromOffset: *const fn(self: *anyopaque, offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint) callconv(.winapi) HRESULT,
        StartContinuousPan: *const fn(self: *anyopaque, horizontalPixelsPerSecond: f64, verticalPixelsPerSecond: f64) callconv(.winapi) HRESULT,
        StopContinuousPan: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryPanAsync: *const fn(self: *anyopaque, horizontalPixels: f64, verticalPixels: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryPanToAsync: *const fn(self: *anyopaque, location: *Geopoint, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl6 = extern struct {
    vtable: *const VTable,
    pub fn getLayers(self: *@This()) core.HResult!*IVector(MapLayer) {
        var _r: *IVector(MapLayer) = undefined;
        const _c = self.vtable.get_Layers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLayers(self: *@This(), value: *IVector(MapLayer)) core.HResult!void {
        const _c = self.vtable.put_Layers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetLocationFromOffset(self: *@This(), offset: Point, location: *Geopoint) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetLocationFromOffset(@ptrCast(self), offset, location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetLocationFromOffset(self: *@This(), offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetLocationFromOffset(@ptrCast(self), offset, desiredReferenceSystem, location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0da89a2-1041-4bea-b88a-12ac9a82e0e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Layers: *const fn(self: *anyopaque, _r: **IVector(MapLayer)) callconv(.winapi) HRESULT,
        put_Layers: *const fn(self: *anyopaque, value: *IVector(MapLayer)) callconv(.winapi) HRESULT,
        TryGetLocationFromOffset: *const fn(self: *anyopaque, offset: Point, location: *Geopoint, _r: *bool) callconv(.winapi) HRESULT,
        TryGetLocationFromOffset: *const fn(self: *anyopaque, offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl7 = extern struct {
    vtable: *const VTable,
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Region(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Region(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d86e453-0c1f-4f7e-ae66-4ad0b4987857";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Region: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Region: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapControl8 = extern struct {
    vtable: *const VTable,
    pub fn getCanTiltDown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanTiltDown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanTiltUp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanTiltUp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanZoomIn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanZoomIn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanZoomOut(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanZoomOut(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControl8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "009e9c46-724d-53ca-9421-7a48fc731523";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanTiltDown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanTiltUp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanZoomIn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanZoomOut: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChildrenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ChildrenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorSchemeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorSchemeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredPitchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DesiredPitchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HeadingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLandmarksVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LandmarksVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLoadingStatusProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LoadingStatusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapServiceTokenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapServiceTokenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPedestrianFeaturesVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PedestrianFeaturesVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPitchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PitchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrafficFlowVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TrafficFlowVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransformOriginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransformOriginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWatermarkModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_WatermarkModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevelProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZoomLevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElementsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapElementsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoutesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RoutesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTileSourcesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TileSourcesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocation(self: *@This(), element: *DependencyObject) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.GetLocation(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLocation(self: *@This(), element: *DependencyObject, value: *Geopoint) core.HResult!void {
        const _c = self.vtable.SetLocation(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalizedAnchorPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NormalizedAnchorPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNormalizedAnchorPoint(self: *@This(), element: *DependencyObject) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetNormalizedAnchorPoint(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNormalizedAnchorPoint(self: *@This(), element: *DependencyObject, value: Point) core.HResult!void {
        const _c = self.vtable.SetNormalizedAnchorPoint(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c2c61795-2147-4f0a-942a-5493a85de807";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ChildrenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ColorSchemeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DesiredPitchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HeadingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LandmarksVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LoadingStatusProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MapServiceTokenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PedestrianFeaturesVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PitchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StyleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TrafficFlowVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TransformOriginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_WatermarkModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ZoomLevelProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MapElementsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RoutesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TileSourcesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LocationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLocation: *const fn(self: *anyopaque, element: *DependencyObject, _r: **Geopoint) callconv(.winapi) HRESULT,
        SetLocation: *const fn(self: *anyopaque, element: *DependencyObject, value: *Geopoint) callconv(.winapi) HRESULT,
        get_NormalizedAnchorPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetNormalizedAnchorPoint: *const fn(self: *anyopaque, element: *DependencyObject, _r: *Point) callconv(.winapi) HRESULT,
        SetNormalizedAnchorPoint: *const fn(self: *anyopaque, element: *DependencyObject, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getBusinessLandmarksVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BusinessLandmarksVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitFeaturesVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransitFeaturesVisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPanInteractionModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PanInteractionModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotateInteractionModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotateInteractionModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTiltInteractionModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TiltInteractionModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomInteractionModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZoomInteractionModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIs3DSupportedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Is3DSupportedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStreetsideSupportedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsStreetsideSupportedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSceneProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SceneProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04852b93-b446-4d31-9752-1ec69a5996ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BusinessLandmarksVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TransitFeaturesVisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PanInteractionModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotateInteractionModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TiltInteractionModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ZoomInteractionModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Is3DSupportedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsStreetsideSupportedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SceneProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getBusinessLandmarksEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BusinessLandmarksEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitFeaturesEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransitFeaturesEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe785d97-5d13-4fa1-bf1d-84061768c183";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BusinessLandmarksEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TransitFeaturesEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getMapProjectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapProjectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleSheetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StyleSheetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewPaddingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ViewPaddingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09626f00-b7dd-4189-a7f7-830c412deea3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapProjectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StyleSheetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ViewPaddingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getLayersProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LayersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ccfdd7f-24d1-40a2-8351-b3063a8c95a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LayersProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics7 = extern struct {
    vtable: *const VTable,
    pub fn getRegionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RegionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55f1ac4d-72c2-46b2-b7ae-790260be641b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RegionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapControlStatics8 = extern struct {
    vtable: *const VTable,
    pub fn getCanTiltDownProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanTiltDownProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanTiltUpProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanTiltUpProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanZoomInProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanZoomInProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanZoomOutProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CanZoomOutProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapControlStatics8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adb7a7b0-0605-592c-bf9d-d10bdc2be47b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanTiltDownProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CanTiltUpProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CanZoomInProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CanZoomOutProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapCustomExperience = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapCustomExperience";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64592866-14a3-4e5f-8883-8e9c500eeede";
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
pub const IMapCustomExperienceChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapCustomExperienceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9e6fb9b-8fc1-4042-ac34-a61b38bb7514";
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
pub const IMapCustomExperienceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapCustomExperience {
        var _r: *MapCustomExperience = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapCustomExperienceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a403fb5-a1b1-4e7f-921e-3e6b8d8ebed6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapCustomExperience) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement = extern struct {
    vtable: *const VTable,
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ZIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Visible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d61fc4df-b245-47f2-9ac2-43c058b1c903";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ZIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ZIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Visible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement2 = extern struct {
    vtable: *const VTable,
    pub fn getMapTabIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MapTabIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapTabIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MapTabIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6619f261-fba6-4964-a7ff-f1af63ab9cb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapTabIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MapTabIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement3 = extern struct {
    vtable: *const VTable,
    pub fn getMapStyleSheetEntry(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MapStyleSheetEntry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapStyleSheetEntry(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MapStyleSheetEntry(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMapStyleSheetEntryState(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MapStyleSheetEntryState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapStyleSheetEntryState(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_MapStyleSheetEntryState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Tag(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13efbc59-45ed-48b4-93ad-e3f78f8cf218";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapStyleSheetEntry: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MapStyleSheetEntry: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_MapStyleSheetEntryState: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_MapStyleSheetEntryState: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Tag: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement3D = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModel(self: *@This()) core.HResult!*MapModel3D {
        var _r: *MapModel3D = undefined;
        const _c = self.vtable.get_Model(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModel(self: *@This(), value: *MapModel3D) core.HResult!void {
        const _c = self.vtable.put_Model(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Heading(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Heading(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Pitch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPitch(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Pitch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoll(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Roll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoll(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Roll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "827af8d5-3843-48e2-bd00-0f0644fbe6a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: *Geopoint) callconv(.winapi) HRESULT,
        get_Model: *const fn(self: *anyopaque, _r: **MapModel3D) callconv(.winapi) HRESULT,
        put_Model: *const fn(self: *anyopaque, value: *MapModel3D) callconv(.winapi) HRESULT,
        get_Heading: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Heading: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Pitch: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Pitch: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Roll: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Roll: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement3DStatics = extern struct {
    vtable: *const VTable,
    pub fn getLocationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HeadingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPitchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PitchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRollProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RollProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement3DStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6128011a-450f-442a-b9d9-aa815c71907a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HeadingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PitchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RollProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapElement4 = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElement4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "645883b6-1fc1-4ceb-93bd-dc2c960072e9";
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
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementClickEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        var _r: *IVector(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40168a11-d080-4519-99a1-3149fb8999d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVector(MapElement)) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapElement {
        var _r: *MapElement = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a30d007-0bd6-47a5-860b-7e7cf5f0c573";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapElement) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementPointerEnteredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        var _r: *MapElement = undefined;
        const _c = self.vtable.get_MapElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab85dd4e-91d7-4b31-8f0a-d390c7d3a2ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElement: *const fn(self: *anyopaque, _r: **MapElement) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementPointerExitedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        var _r: *MapElement = undefined;
        const _c = self.vtable.get_MapElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1a45af9-60c9-4679-9119-20abc75d931f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElement: *const fn(self: *anyopaque, _r: **MapElement) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementStatics = extern struct {
    vtable: *const VTable,
    pub fn getZIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8c71cf2-bfef-4b49-8e99-41b5e3789fd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ZIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getMapTabIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapTabIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bf72f30-80fe-4f30-bcc1-fa894050f676";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapTabIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getMapStyleSheetEntryProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapStyleSheetEntryProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapStyleSheetEntryStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapStyleSheetEntryStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTagProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TagProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e11ee92f-9742-49aa-aad8-2e466bff3796";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapStyleSheetEntryProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MapStyleSheetEntryStateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TagProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4296f0b-dff8-467c-9315-6f6db93ee2ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayer = extern struct {
    vtable: *const VTable,
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        var _r: *IVector(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapElements(self: *@This(), value: *IVector(MapElement)) core.HResult!void {
        const _c = self.vtable.put_MapElements(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementClick(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerClickEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementClick(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementClick(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementPointerEntered(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementPointerEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementPointerEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapElementPointerExited(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapElementPointerExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapElementPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapElementPointerExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMapContextRequested(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MapContextRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMapContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MapContextRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de79689a-01ef-46f4-ac60-7c200b552610";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVector(MapElement)) callconv(.winapi) HRESULT,
        put_MapElements: *const fn(self: *anyopaque, value: *IVector(MapElement)) callconv(.winapi) HRESULT,
        add_MapElementClick: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerClickEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementClick: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapElementPointerEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementPointerEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapElementPointerExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerExitedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapElementPointerExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MapContextRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerContextRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MapContextRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayerClickEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        var _r: *IVector(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayerClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ca7cf66-af1b-4c05-8c85-f74ae3d4677f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVector(MapElement)) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayerContextRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVectorView(MapElement) {
        var _r: *IVectorView(MapElement) = undefined;
        const _c = self.vtable.get_MapElements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayerContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da45d0b3-7a0e-4758-808b-3a637627eb0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElements: *const fn(self: *anyopaque, _r: **IVectorView(MapElement)) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayerPointerEnteredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        var _r: *MapElement = undefined;
        const _c = self.vtable.get_MapElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayerPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "757fc032-4694-4404-8c89-348b6b76c5e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElement: *const fn(self: *anyopaque, _r: **MapElement) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayerPointerExitedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        var _r: *MapElement = undefined;
        const _c = self.vtable.get_MapElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayerPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92f3c6ad-03ed-4c39-af20-2a07ee1ccea6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        get_MapElement: *const fn(self: *anyopaque, _r: **MapElement) callconv(.winapi) HRESULT,
    };
};
pub const IMapElementsLayerStatics = extern struct {
    vtable: *const VTable,
    pub fn getMapElementsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapElementsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapElementsLayerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34005727-f509-4d28-9180-911c03411d74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapElementsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapIcon = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const _c = self.vtable.put_Location(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNormalizedAnchorPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_NormalizedAnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalizedAnchorPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_NormalizedAnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Image(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapIcon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2096872-23d9-4a2b-8be0-69f3a85482ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
        put_Location: *const fn(self: *anyopaque, value: *Geopoint) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_NormalizedAnchorPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_NormalizedAnchorPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IMapIcon2 = extern struct {
    vtable: *const VTable,
    pub fn getCollisionBehaviorDesired(self: *@This()) core.HResult!MapElementCollisionBehavior {
        var _r: MapElementCollisionBehavior = undefined;
        const _c = self.vtable.get_CollisionBehaviorDesired(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCollisionBehaviorDesired(self: *@This(), value: MapElementCollisionBehavior) core.HResult!void {
        const _c = self.vtable.put_CollisionBehaviorDesired(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapIcon2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "611254b9-d8aa-4bbd-a316-badf06911d63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollisionBehaviorDesired: *const fn(self: *anyopaque, _r: *MapElementCollisionBehavior) callconv(.winapi) HRESULT,
        put_CollisionBehaviorDesired: *const fn(self: *anyopaque, value: MapElementCollisionBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IMapIconStatics = extern struct {
    vtable: *const VTable,
    pub fn getLocationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TitleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedAnchorPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NormalizedAnchorPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapIconStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcbc9e56-1190-4b5d-9e56-e5b6724aa328";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TitleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_NormalizedAnchorPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapIconStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getCollisionBehaviorDesiredProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CollisionBehaviorDesiredProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapIconStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff4c306a-cf76-46ab-a12f-b603b986c696";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CollisionBehaviorDesiredProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapInputEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapInputEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fc503a0-a8a2-4394-92e9-2247764f2f49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
    };
};
pub const IMapItemsControl = extern struct {
    vtable: *const VTable,
    pub fn getItemsSource(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_ItemsSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemsSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_ItemsSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(DependencyObject) {
        var _r: *IVector(DependencyObject) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemTemplate(self: *@This()) core.HResult!*DataTemplate {
        var _r: *DataTemplate = undefined;
        const _c = self.vtable.get_ItemTemplate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemTemplate(self: *@This(), value: *DataTemplate) core.HResult!void {
        const _c = self.vtable.put_ItemTemplate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapItemsControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94c2c4d3-b335-42c5-b660-e6a07ec3bddc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemsSource: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_ItemsSource: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(DependencyObject)) callconv(.winapi) HRESULT,
        get_ItemTemplate: *const fn(self: *anyopaque, _r: **DataTemplate) callconv(.winapi) HRESULT,
        put_ItemTemplate: *const fn(self: *anyopaque, value: *DataTemplate) callconv(.winapi) HRESULT,
    };
};
pub const IMapItemsControlStatics = extern struct {
    vtable: *const VTable,
    pub fn getItemsSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemsSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemTemplateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemTemplateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapItemsControlStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "33a859c7-789b-425c-8a0a-32385896cb4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ItemsSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemTemplateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapLayer = extern struct {
    vtable: *const VTable,
    pub fn getMapTabIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MapTabIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapTabIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MapTabIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Visible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ZIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d0ff9c1-a14d-4f97-8f57-46715b57683a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapTabIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MapTabIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Visible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ZIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ZIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IMapLayerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapLayer {
        var _r: *MapLayer = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapLayerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e02a2207-dee3-47c8-9825-bd029c5752f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapLayer) callconv(.winapi) HRESULT,
    };
};
pub const IMapLayerStatics = extern struct {
    vtable: *const VTable,
    pub fn getMapTabIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MapTabIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapLayerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ca4a26b-5db9-4f0c-bdd5-b1bffdcce946";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MapTabIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ZIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapModel3D = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapModel3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8c541a1-ca27-4968-a2bf-9c20f06a0468";
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
pub const IMapModel3DFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapModel3D {
        var _r: *MapModel3D = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapModel3DFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df7f0bcc-580a-498b-939b-0119a9dadb9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapModel3D) callconv(.winapi) HRESULT,
    };
};
pub const IMapModel3DStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFrom3MFAsync(self: *@This(), source: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(MapModel3D) {
        var _r: *IAsyncOperation(MapModel3D) = undefined;
        const _c = self.vtable.CreateFrom3MFAsync(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrom3MFAsync(self: *@This(), source: *IRandomAccessStreamReference, shadingOption: MapModel3DShadingOption) core.HResult!*IAsyncOperation(MapModel3D) {
        var _r: *IAsyncOperation(MapModel3D) = undefined;
        const _c = self.vtable.CreateFrom3MFAsync(@ptrCast(self), source, shadingOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapModel3DStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4834a480-8e56-4b0f-872d-7ead103187cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFrom3MFAsync: *const fn(self: *anyopaque, source: *IRandomAccessStreamReference, _r: **IAsyncOperation(MapModel3D)) callconv(.winapi) HRESULT,
        CreateFrom3MFAsync: *const fn(self: *anyopaque, source: *IRandomAccessStreamReference, shadingOption: MapModel3DShadingOption, _r: **IAsyncOperation(MapModel3D)) callconv(.winapi) HRESULT,
    };
};
pub const IMapPolygon = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *Geopath) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_StrokeColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_StrokeColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StrokeThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_StrokeThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StrokeDashed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StrokeDashed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFillColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_FillColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_FillColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapPolygon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abda2285-4926-4c3a-a5f9-19df7f69db3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *Geopath) callconv(.winapi) HRESULT,
        get_StrokeColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_StrokeColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_StrokeThickness: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_StrokeThickness: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_StrokeDashed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StrokeDashed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FillColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_FillColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IMapPolygon2 = extern struct {
    vtable: *const VTable,
    pub fn getPaths(self: *@This()) core.HResult!*IVector(Geopath) {
        var _r: *IVector(Geopath) = undefined;
        const _c = self.vtable.get_Paths(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapPolygon2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96c8a11e-636b-4018-9c2e-acc9122a01b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Paths: *const fn(self: *anyopaque, _r: **IVector(Geopath)) callconv(.winapi) HRESULT,
    };
};
pub const IMapPolygonStatics = extern struct {
    vtable: *const VTable,
    pub fn getPathProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PathProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeDashedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapPolygonStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37f573be-097b-424c-87cc-2ee042fda6d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PathProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeDashedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapPolyline = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        var _r: *Geopath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *Geopath) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_StrokeColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_StrokeColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StrokeThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_StrokeThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StrokeDashed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StrokeDashed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapPolyline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbad24a2-24df-4a86-8ffa-0f8f4d9ec17d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **Geopath) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *Geopath) callconv(.winapi) HRESULT,
        get_StrokeColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_StrokeColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_StrokeThickness: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_StrokeThickness: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_StrokeDashed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StrokeDashed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapPolylineStatics = extern struct {
    vtable: *const VTable,
    pub fn getPathProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PathProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StrokeDashedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapPolylineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61fde44b-1ddf-4303-b809-ec87f58ad065";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PathProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StrokeDashedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapRightTappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20943171-6fe8-40a6-ad0e-297379b575a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteView = extern struct {
    vtable: *const VTable,
    pub fn getRouteColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_RouteColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRouteColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_RouteColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutlineColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OutlineColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutlineColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_OutlineColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRoute(self: *@This()) core.HResult!*MapRoute {
        var _r: *MapRoute = undefined;
        const _c = self.vtable.get_Route(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapRouteView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "740eaec5-bacc-41e1-a67e-dd6513832049";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RouteColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_RouteColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_OutlineColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_OutlineColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Route: *const fn(self: *anyopaque, _r: **MapRoute) callconv(.winapi) HRESULT,
    };
};
pub const IMapRouteViewFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithMapRoute(self: *@This(), route: *MapRoute, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapRouteView {
        var _r: *MapRouteView = undefined;
        const _c = self.vtable.CreateInstanceWithMapRoute(@ptrCast(self), route, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapRouteViewFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f083addf-0066-4628-82fe-ea78c23cec1e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithMapRoute: *const fn(self: *anyopaque, route: *MapRoute, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapRouteView) callconv(.winapi) HRESULT,
    };
};
pub const IMapScene = extern struct {
    vtable: *const VTable,
    pub fn getTargetCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_TargetCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTargetCameraChanged(self: *@This(), handler: *TypedEventHandler(MapScene,MapTargetCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TargetCameraChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTargetCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TargetCameraChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapScene";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bba10a9-50e7-482c-9789-c688b178ac24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetCamera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
        add_TargetCameraChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MapScene,MapTargetCameraChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TargetCameraChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMapSceneStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromBoundingBox(self: *@This(), bounds: *GeoboundingBox) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromBoundingBox(@ptrCast(self), bounds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromBoundingBox(self: *@This(), bounds: *GeoboundingBox, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromBoundingBox(@ptrCast(self), bounds, headingInDegrees, pitchInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromCamera(self: *@This(), camera: *MapCamera) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromCamera(@ptrCast(self), camera, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocation(self: *@This(), location: *Geopoint) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocation(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocation(self: *@This(), location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocation(@ptrCast(self), location, headingInDegrees, pitchInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocationAndRadius(self: *@This(), location: *Geopoint, radiusInMeters: f64) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocationAndRadius(@ptrCast(self), location, radiusInMeters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocationAndRadius(self: *@This(), location: *Geopoint, radiusInMeters: f64, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocationAndRadius(@ptrCast(self), location, radiusInMeters, headingInDegrees, pitchInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocations(self: *@This(), locations: *IIterable(Geopoint)) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocations(@ptrCast(self), locations, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromLocations(self: *@This(), locations: *IIterable(Geopoint), headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        var _r: *MapScene = undefined;
        const _c = self.vtable.CreateFromLocations(@ptrCast(self), locations, headingInDegrees, pitchInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapSceneStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e4ad6c-86ec-44d9-9597-fb75b7deba0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromBoundingBox: *const fn(self: *anyopaque, bounds: *GeoboundingBox, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromBoundingBox: *const fn(self: *anyopaque, bounds: *GeoboundingBox, headingInDegrees: f64, pitchInDegrees: f64, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromCamera: *const fn(self: *anyopaque, camera: *MapCamera, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocation: *const fn(self: *anyopaque, location: *Geopoint, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocation: *const fn(self: *anyopaque, location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocationAndRadius: *const fn(self: *anyopaque, location: *Geopoint, radiusInMeters: f64, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocationAndRadius: *const fn(self: *anyopaque, location: *Geopoint, radiusInMeters: f64, headingInDegrees: f64, pitchInDegrees: f64, _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocations: *const fn(self: *anyopaque, locations: *IIterable(Geopoint), _r: **MapScene) callconv(.winapi) HRESULT,
        CreateFromLocations: *const fn(self: *anyopaque, locations: *IIterable(Geopoint), headingInDegrees: f64, pitchInDegrees: f64, _r: **MapScene) callconv(.winapi) HRESULT,
    };
};
pub const IMapStyleSheet = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapStyleSheet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae54b2bf-8991-42ed-8d58-20473deede1d";
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
pub const IMapStyleSheetEntriesStatics = extern struct {
    vtable: *const VTable,
    pub fn getArea(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Area(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAirport(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Airport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCemetery(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Cemetery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContinent(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Continent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEducation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Education(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndigenousPeoplesReserve(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IndigenousPeoplesReserve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsland(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Island(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMedical(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Medical(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMilitary(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Military(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNautical(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Nautical(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNeighborhood(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Neighborhood(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRunway(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Runway(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSand(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Sand(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShoppingCenter(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ShoppingCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStadium(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Stadium(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVegetation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Vegetation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForest(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Forest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGolfCourse(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_GolfCourse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPark(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Park(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlayingField(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PlayingField(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReserve(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Reserve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NaturalPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeak(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Peak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVolcanicPeak(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VolcanicPeak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWaterPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WaterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointOfInterest(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PointOfInterest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBusiness(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Business(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFoodPoint(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FoodPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPopulatedPlace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PopulatedPlace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapital(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Capital(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdminDistrictCapital(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdminDistrictCapital(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCountryRegionCapital(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CountryRegionCapital(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoadShield(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoadShield(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoadExit(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RoadExit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransit(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Transit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPolitical(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Political(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCountryRegion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CountryRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdminDistrict(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AdminDistrict(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDistrict(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_District(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStructure(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Structure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuilding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Building(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEducationBuilding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EducationBuilding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMedicalBuilding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MedicalBuilding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransitBuilding(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransitBuilding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransportation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Transportation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRoad(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Road(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControlledAccessHighway(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ControlledAccessHighway(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighSpeedRamp(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HighSpeedRamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighway(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Highway(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMajorRoad(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MajorRoad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArterialRoad(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ArterialRoad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Street(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRamp(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Ramp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnpavedStreet(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnpavedStreet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTollRoad(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TollRoad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRailway(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Railway(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrail(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Trail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWaterRoute(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WaterRoute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWater(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Water(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRiver(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_River(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRouteLine(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RouteLine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWalkingRoute(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WalkingRoute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDrivingRoute(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DrivingRoute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapStyleSheetEntriesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9636345-ef1a-41a4-a757-bd4f43e1e4d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Area: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Airport: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Cemetery: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Continent: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Education: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IndigenousPeoplesReserve: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Island: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Medical: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Military: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Nautical: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Neighborhood: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Runway: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Sand: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ShoppingCenter: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Stadium: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Vegetation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Forest: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_GolfCourse: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Park: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PlayingField: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Reserve: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_NaturalPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Peak: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VolcanicPeak: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WaterPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PointOfInterest: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Business: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FoodPoint: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PopulatedPlace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capital: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AdminDistrictCapital: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CountryRegionCapital: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoadShield: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RoadExit: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Transit: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Political: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CountryRegion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AdminDistrict: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_District: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Structure: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Building: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EducationBuilding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MedicalBuilding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TransitBuilding: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Transportation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Road: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ControlledAccessHighway: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HighSpeedRamp: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Highway: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MajorRoad: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ArterialRoad: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Street: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Ramp: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UnpavedStreet: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TollRoad: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Railway: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Trail: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WaterRoute: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Water: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_River: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_RouteLine: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WalkingRoute: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DrivingRoute: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapStyleSheetEntryStatesStatics = extern struct {
    vtable: *const VTable,
    pub fn getDisabled(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Disabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHover(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Hover(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelected(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Selected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapStyleSheetEntryStatesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23ac5532-866d-4bfa-b481-39bea1de3506";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Disabled: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Hover: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Selected: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMapStyleSheetStatics = extern struct {
    vtable: *const VTable,
    pub fn Aerial(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.Aerial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AerialWithOverlay(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.AerialWithOverlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoadLight(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.RoadLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoadDark(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.RoadDark(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoadHighContrastLight(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.RoadHighContrastLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RoadHighContrastDark(self: *@This()) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.RoadHighContrastDark(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Combine(self: *@This(), styleSheets: *IIterable(MapStyleSheet)) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.Combine(@ptrCast(self), styleSheets, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ParseFromJson(self: *@This(), styleAsJson: HSTRING) core.HResult!*MapStyleSheet {
        var _r: *MapStyleSheet = undefined;
        const _c = self.vtable.ParseFromJson(@ptrCast(self), styleAsJson, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryParseFromJson(self: *@This(), styleAsJson: HSTRING, styleSheet: *MapStyleSheet) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryParseFromJson(@ptrCast(self), styleAsJson, styleSheet, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapStyleSheetStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "abbd00ad-0a1c-4335-82f4-61d936aa197d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Aerial: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        AerialWithOverlay: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        RoadLight: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        RoadDark: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        RoadHighContrastLight: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        RoadHighContrastDark: *const fn(self: *anyopaque, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        Combine: *const fn(self: *anyopaque, styleSheets: *IIterable(MapStyleSheet), _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        ParseFromJson: *const fn(self: *anyopaque, styleAsJson: HSTRING, _r: **MapStyleSheet) callconv(.winapi) HRESULT,
        TryParseFromJson: *const fn(self: *anyopaque, styleAsJson: HSTRING, styleSheet: *MapStyleSheet, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapTargetCameraChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        var _r: *MapCamera = undefined;
        const _c = self.vtable.get_Camera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbf00472-e953-4fa8-97d0-ea86359057cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Camera: *const fn(self: *anyopaque, _r: **MapCamera) callconv(.winapi) HRESULT,
    };
};
pub const IMapTargetCameraChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var _r: MapCameraChangeReason = undefined;
        const _c = self.vtable.get_ChangeReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTargetCameraChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97c0b332-f2b6-460b-8d91-ac020a2383dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChangeReason: *const fn(self: *anyopaque, _r: *MapCameraChangeReason) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileBitmapRequest = extern struct {
    vtable: *const VTable,
    pub fn getPixelData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_PixelData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPixelData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_PixelData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MapTileBitmapRequestDeferral {
        var _r: *MapTileBitmapRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46733fbc-d89d-472b-b5f6-d7066b0584f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelData: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_PixelData: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **MapTileBitmapRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileBitmapRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe370542-a4ac-4efa-9665-0490b0cafdd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileBitmapRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getX(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_X(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getY(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Y(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequest(self: *@This()) core.HResult!*MapTileBitmapRequest {
        var _r: *MapTileBitmapRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "337f691d-9b02-4aa2-8b1e-cc4d91719bf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_X: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Y: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ZoomLevel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MapTileBitmapRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileBitmapRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getFrameIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FrameIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileBitmapRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0261d114-246a-5296-bc85-590f53aa39c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileDataSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c03d9f5e-be1f-4c69-9969-79467a513c38";
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
pub const IMapTileDataSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileDataSource {
        var _r: *MapTileDataSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileDataSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3920fbd-e446-4648-a74d-fd2c5d557c06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileDataSource) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileSource = extern struct {
    vtable: *const VTable,
    pub fn getDataSource(self: *@This()) core.HResult!*MapTileDataSource {
        var _r: *MapTileDataSource = undefined;
        const _c = self.vtable.get_DataSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataSource(self: *@This(), value: *MapTileDataSource) core.HResult!void {
        const _c = self.vtable.put_DataSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLayer(self: *@This()) core.HResult!MapTileLayer {
        var _r: MapTileLayer = undefined;
        const _c = self.vtable.get_Layer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLayer(self: *@This(), value: MapTileLayer) core.HResult!void {
        const _c = self.vtable.put_Layer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZoomLevelRange(self: *@This()) core.HResult!MapZoomLevelRange {
        var _r: MapZoomLevelRange = undefined;
        const _c = self.vtable.get_ZoomLevelRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZoomLevelRange(self: *@This(), value: MapZoomLevelRange) core.HResult!void {
        const _c = self.vtable.put_ZoomLevelRange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounds(self: *@This()) core.HResult!*GeoboundingBox {
        var _r: *GeoboundingBox = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounds(self: *@This(), value: *GeoboundingBox) core.HResult!void {
        const _c = self.vtable.put_Bounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowOverstretch(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowOverstretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowOverstretch(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowOverstretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFadingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFadingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsFadingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsFadingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTransparencyEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransparencyEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTransparencyEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTransparencyEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRetryEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRetryEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRetryEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRetryEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ZIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTilePixelSize(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TilePixelSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTilePixelSize(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TilePixelSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Visible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88a76e4e-2fdf-4567-9255-1100519c8d62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataSource: *const fn(self: *anyopaque, _r: **MapTileDataSource) callconv(.winapi) HRESULT,
        put_DataSource: *const fn(self: *anyopaque, value: *MapTileDataSource) callconv(.winapi) HRESULT,
        get_Layer: *const fn(self: *anyopaque, _r: *MapTileLayer) callconv(.winapi) HRESULT,
        put_Layer: *const fn(self: *anyopaque, value: MapTileLayer) callconv(.winapi) HRESULT,
        get_ZoomLevelRange: *const fn(self: *anyopaque, _r: *MapZoomLevelRange) callconv(.winapi) HRESULT,
        put_ZoomLevelRange: *const fn(self: *anyopaque, value: MapZoomLevelRange) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: **GeoboundingBox) callconv(.winapi) HRESULT,
        put_Bounds: *const fn(self: *anyopaque, value: *GeoboundingBox) callconv(.winapi) HRESULT,
        get_AllowOverstretch: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowOverstretch: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsFadingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsFadingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsTransparencyEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTransparencyEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRetryEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRetryEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ZIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ZIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_TilePixelSize: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TilePixelSize: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Visible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileSource2 = extern struct {
    vtable: *const VTable,
    pub fn getAnimationState(self: *@This()) core.HResult!MapTileAnimationState {
        var _r: MapTileAnimationState = undefined;
        const _c = self.vtable.get_AnimationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoPlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoPlay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFrameCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FrameCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrameCount(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_FrameCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_FrameDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrameDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_FrameDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Play(self: *@This()) core.HResult!void {
        const _c = self.vtable.Play(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e65ebbd-4095-5c15-99f1-1260b4e8b0a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnimationState: *const fn(self: *anyopaque, _r: *MapTileAnimationState) callconv(.winapi) HRESULT,
        get_AutoPlay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoPlay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FrameCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_FrameCount: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_FrameDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_FrameDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Play: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        var _r: *MapTileSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDataSource(self: *@This(), dataSource: *MapTileDataSource, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        var _r: *MapTileSource = undefined;
        const _c = self.vtable.CreateInstanceWithDataSource(@ptrCast(self), dataSource, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDataSourceAndZoomRange(self: *@This(), dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        var _r: *MapTileSource = undefined;
        const _c = self.vtable.CreateInstanceWithDataSourceAndZoomRange(@ptrCast(self), dataSource, zoomLevelRange, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDataSourceZoomRangeAndBounds(self: *@This(), dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        var _r: *MapTileSource = undefined;
        const _c = self.vtable.CreateInstanceWithDataSourceZoomRangeAndBounds(@ptrCast(self), dataSource, zoomLevelRange, bounds, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize(self: *@This(), dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, tileSizeInPixels: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        var _r: *MapTileSource = undefined;
        const _c = self.vtable.CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize(@ptrCast(self), dataSource, zoomLevelRange, bounds, tileSizeInPixels, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd7f811f-77fa-482b-9d34-71d31d465c48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDataSource: *const fn(self: *anyopaque, dataSource: *MapTileDataSource, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDataSourceAndZoomRange: *const fn(self: *anyopaque, dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDataSourceZoomRangeAndBounds: *const fn(self: *anyopaque, dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileSource) callconv(.winapi) HRESULT,
        CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize: *const fn(self: *anyopaque, dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, tileSizeInPixels: i32, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MapTileSource) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn getDataSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DataSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLayerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LayerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevelRangeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZoomLevelRangeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BoundsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowOverstretchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowOverstretchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFadingEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsFadingEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTransparencyEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTransparencyEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRetryEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsRetryEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ZIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTilePixelSizeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TilePixelSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisibleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VisibleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93fcc93c-7035-4603-99b1-e659921b6093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LayerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ZoomLevelRangeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_BoundsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AllowOverstretchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsFadingEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsTransparencyEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsRetryEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ZIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TilePixelSizeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VisibleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileSourceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAnimationStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AnimationStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoPlayProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AutoPlayProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameCountProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FrameCountProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameDurationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FrameDurationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileSourceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75cdd47e-669c-50fd-ad85-5ea5174cf59b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnimationStateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AutoPlayProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FrameCountProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FrameDurationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileUriRequest = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Uri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MapTileUriRequestDeferral {
        var _r: *MapTileUriRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileUriRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17402335-3127-45b8-87a7-99f87d4e2745";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Uri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **MapTileUriRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileUriRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c117ade0-bf3e-4c51-8faa-4b593cf68eb2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileUriRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getX(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_X(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getY(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Y(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZoomLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequest(self: *@This()) core.HResult!*MapTileUriRequest {
        var _r: *MapTileUriRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2147b43-1bbf-4b98-8dd3-b7834e407e0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_X: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Y: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ZoomLevel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MapTileUriRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMapTileUriRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getFrameIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FrameIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IMapTileUriRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2302185d-33b5-5a55-92f5-74a86a22efa6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IStreetsideExperience = extern struct {
    vtable: *const VTable,
    pub fn getAddressTextVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AddressTextVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddressTextVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AddressTextVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCursorVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CursorVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCursorVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CursorVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOverviewMapVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_OverviewMapVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOverviewMapVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_OverviewMapVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStreetLabelsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StreetLabelsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStreetLabelsVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StreetLabelsVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitButtonVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExitButtonVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitButtonVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExitButtonVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZoomButtonsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ZoomButtonsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZoomButtonsVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ZoomButtonsVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IStreetsideExperience";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a558aec9-e30c-46c8-8116-484691675558";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AddressTextVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AddressTextVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CursorVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CursorVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_OverviewMapVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_OverviewMapVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StreetLabelsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StreetLabelsVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExitButtonVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ExitButtonVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ZoomButtonsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ZoomButtonsVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStreetsideExperienceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithPanorama(self: *@This(), panorama: *StreetsidePanorama) core.HResult!*StreetsideExperience {
        var _r: *StreetsideExperience = undefined;
        const _c = self.vtable.CreateInstanceWithPanorama(@ptrCast(self), panorama, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithPanoramaHeadingPitchAndFieldOfView(self: *@This(), panorama: *StreetsidePanorama, headingInDegrees: f64, pitchInDegrees: f64, fieldOfViewInDegrees: f64) core.HResult!*StreetsideExperience {
        var _r: *StreetsideExperience = undefined;
        const _c = self.vtable.CreateInstanceWithPanoramaHeadingPitchAndFieldOfView(@ptrCast(self), panorama, headingInDegrees, pitchInDegrees, fieldOfViewInDegrees, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IStreetsideExperienceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a5bcf3c-649e-4342-9995-68a6cf5961a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithPanorama: *const fn(self: *anyopaque, panorama: *StreetsidePanorama, _r: **StreetsideExperience) callconv(.winapi) HRESULT,
        CreateInstanceWithPanoramaHeadingPitchAndFieldOfView: *const fn(self: *anyopaque, panorama: *StreetsidePanorama, headingInDegrees: f64, pitchInDegrees: f64, fieldOfViewInDegrees: f64, _r: **StreetsideExperience) callconv(.winapi) HRESULT,
    };
};
pub const IStreetsidePanorama = extern struct {
    vtable: *const VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        var _r: *Geopoint = undefined;
        const _c = self.vtable.get_Location(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IStreetsidePanorama";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fe00fd8-ad60-4664-b539-b1069f16c5af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Location: *const fn(self: *anyopaque, _r: **Geopoint) callconv(.winapi) HRESULT,
    };
};
pub const IStreetsidePanoramaStatics = extern struct {
    vtable: *const VTable,
    pub fn FindNearbyAsync(self: *@This(), location: *Geopoint) core.HResult!*IAsyncOperation(StreetsidePanorama) {
        var _r: *IAsyncOperation(StreetsidePanorama) = undefined;
        const _c = self.vtable.FindNearbyAsync(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindNearbyAsync(self: *@This(), location: *Geopoint, radiusInMeters: f64) core.HResult!*IAsyncOperation(StreetsidePanorama) {
        var _r: *IAsyncOperation(StreetsidePanorama) = undefined;
        const _c = self.vtable.FindNearbyAsync(@ptrCast(self), location, radiusInMeters, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.IStreetsidePanoramaStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3b47f69-54b3-4ec5-b2a0-4f8204576507";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindNearbyAsync: *const fn(self: *anyopaque, location: *Geopoint, _r: **IAsyncOperation(StreetsidePanorama)) callconv(.winapi) HRESULT,
        FindNearbyAsync: *const fn(self: *anyopaque, location: *Geopoint, radiusInMeters: f64, _r: **IAsyncOperation(StreetsidePanorama)) callconv(.winapi) HRESULT,
    };
};
pub const LocalMapTileDataSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUriFormatString(self: *@This()) core.HResult!HSTRING {
        const this: *ILocalMapTileDataSource = @ptrCast(self);
        return try this.getUriFormatString();
    }
    pub fn putUriFormatString(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILocalMapTileDataSource = @ptrCast(self);
        return try this.putUriFormatString(value);
    }
    pub fn addUriRequested(self: *@This(), handler: *TypedEventHandler(LocalMapTileDataSource,MapTileUriRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILocalMapTileDataSource = @ptrCast(self);
        return try this.addUriRequested(handler);
    }
    pub fn removeUriRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILocalMapTileDataSource = @ptrCast(self);
        return try this.removeUriRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*LocalMapTileDataSource {
        const factory = @This().ILocalMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithUriFormatString(uriFormatString: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*LocalMapTileDataSource {
        const factory = @This().ILocalMapTileDataSourceFactoryCache.get();
        return try factory.CreateInstanceWithUriFormatString(uriFormatString, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.LocalMapTileDataSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILocalMapTileDataSource.GUID;
    pub const IID: Guid = ILocalMapTileDataSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILocalMapTileDataSource.SIGNATURE);
    var _ILocalMapTileDataSourceFactoryCache: FactoryCache(ILocalMapTileDataSourceFactory, RUNTIME_NAME) = .{};
};
pub const MapActualCameraChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        const this: *IMapActualCameraChangedEventArgs = @ptrCast(self);
        return try this.getCamera();
    }
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var this: ?*IMapActualCameraChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapActualCameraChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeReason();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapActualCameraChangedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapActualCameraChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapActualCameraChangedEventArgs.GUID;
    pub const IID: Guid = IMapActualCameraChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapActualCameraChangedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapActualCameraChangingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        const this: *IMapActualCameraChangingEventArgs = @ptrCast(self);
        return try this.getCamera();
    }
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var this: ?*IMapActualCameraChangingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapActualCameraChangingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeReason();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapActualCameraChangingEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapActualCameraChangingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapActualCameraChangingEventArgs.GUID;
    pub const IID: Guid = IMapActualCameraChangingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapActualCameraChangingEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapAnimationKind = enum(i32) {
    Default = 0,
    None = 1,
    Linear = 2,
    Bow = 3,
};
pub const MapElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        const this: *IMapElement = @ptrCast(self);
        return try this.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *IMapElement = @ptrCast(self);
        return try this.putZIndex(value);
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *IMapElement = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapElement = @ptrCast(self);
        return try this.putVisible(value);
    }
    pub fn getMapTabIndex(self: *@This()) core.HResult!i32 {
        var this: ?*IMapElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMapTabIndex();
    }
    pub fn putMapTabIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IMapElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMapTabIndex(value);
    }
    pub fn getMapStyleSheetEntry(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMapStyleSheetEntry();
    }
    pub fn putMapStyleSheetEntry(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMapStyleSheetEntry(value);
    }
    pub fn getMapStyleSheetEntryState(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMapStyleSheetEntryState();
    }
    pub fn putMapStyleSheetEntryState(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMapStyleSheetEntryState(value);
    }
    pub fn getTag(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn putTag(self: *@This(), value: *IInspectable) core.HResult!void {
        var this: ?*IMapElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTag(value);
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IMapElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMapStyleSheetEntryProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStatics3Cache.get();
        return try factory.getMapStyleSheetEntryProperty();
    }
    pub fn getMapStyleSheetEntryStateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStatics3Cache.get();
        return try factory.getMapStyleSheetEntryStateProperty();
    }
    pub fn getTagProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStatics3Cache.get();
        return try factory.getTagProperty();
    }
    pub fn getMapTabIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStatics2Cache.get();
        return try factory.getMapTabIndexProperty();
    }
    pub fn getIsEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStatics4Cache.get();
        return try factory.getIsEnabledProperty();
    }
    pub fn getZIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStaticsCache.get();
        return try factory.getZIndexProperty();
    }
    pub fn getVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementStaticsCache.get();
        return try factory.getVisibleProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapElement {
        const factory = @This().IMapElementFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElement.GUID;
    pub const IID: Guid = IMapElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElement.SIGNATURE);
    var _IMapElementStatics3Cache: FactoryCache(IMapElementStatics3, RUNTIME_NAME) = .{};
    var _IMapElementStatics2Cache: FactoryCache(IMapElementStatics2, RUNTIME_NAME) = .{};
    var _IMapElementStatics4Cache: FactoryCache(IMapElementStatics4, RUNTIME_NAME) = .{};
    var _IMapElementStaticsCache: FactoryCache(IMapElementStatics, RUNTIME_NAME) = .{};
    var _IMapElementFactoryCache: FactoryCache(IMapElementFactory, RUNTIME_NAME) = .{};
};
pub const MapBillboard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getNormalizedAnchorPoint(self: *@This()) core.HResult!Point {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.getNormalizedAnchorPoint();
    }
    pub fn putNormalizedAnchorPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.putNormalizedAnchorPoint(value);
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn getCollisionBehaviorDesired(self: *@This()) core.HResult!MapElementCollisionBehavior {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.getCollisionBehaviorDesired();
    }
    pub fn putCollisionBehaviorDesired(self: *@This(), value: MapElementCollisionBehavior) core.HResult!void {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.putCollisionBehaviorDesired(value);
    }
    pub fn getReferenceCamera(self: *@This()) core.HResult!*MapCamera {
        const this: *IMapBillboard = @ptrCast(self);
        return try this.getReferenceCamera();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceFromCamera(camera: *MapCamera) core.HResult!*MapBillboard {
        const factory = @This().IMapBillboardFactoryCache.get();
        return try factory.CreateInstanceFromCamera(camera);
    }
    pub fn getLocationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapBillboardStaticsCache.get();
        return try factory.getLocationProperty();
    }
    pub fn getNormalizedAnchorPointProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapBillboardStaticsCache.get();
        return try factory.getNormalizedAnchorPointProperty();
    }
    pub fn getCollisionBehaviorDesiredProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapBillboardStaticsCache.get();
        return try factory.getCollisionBehaviorDesiredProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapBillboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapBillboard.GUID;
    pub const IID: Guid = IMapBillboard.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapBillboard.SIGNATURE);
    var _IMapBillboardFactoryCache: FactoryCache(IMapBillboardFactory, RUNTIME_NAME) = .{};
    var _IMapBillboardStaticsCache: FactoryCache(IMapBillboardStatics, RUNTIME_NAME) = .{};
};
pub const MapCamera = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapCamera = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const this: *IMapCamera = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        const this: *IMapCamera = @ptrCast(self);
        return try this.getHeading();
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapCamera = @ptrCast(self);
        return try this.putHeading(value);
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        const this: *IMapCamera = @ptrCast(self);
        return try this.getPitch();
    }
    pub fn putPitch(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapCamera = @ptrCast(self);
        return try this.putPitch(value);
    }
    pub fn getRoll(self: *@This()) core.HResult!f64 {
        const this: *IMapCamera = @ptrCast(self);
        return try this.getRoll();
    }
    pub fn putRoll(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapCamera = @ptrCast(self);
        return try this.putRoll(value);
    }
    pub fn getFieldOfView(self: *@This()) core.HResult!f64 {
        const this: *IMapCamera = @ptrCast(self);
        return try this.getFieldOfView();
    }
    pub fn putFieldOfView(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapCamera = @ptrCast(self);
        return try this.putFieldOfView(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithLocation(location: *Geopoint) core.HResult!*MapCamera {
        const factory = @This().IMapCameraFactoryCache.get();
        return try factory.CreateInstanceWithLocation(location);
    }
    pub fn CreateInstanceWithLocationAndHeading(location: *Geopoint, headingInDegrees: f64) core.HResult!*MapCamera {
        const factory = @This().IMapCameraFactoryCache.get();
        return try factory.CreateInstanceWithLocationAndHeading(location, headingInDegrees);
    }
    pub fn CreateInstanceWithLocationHeadingAndPitch(location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapCamera {
        const factory = @This().IMapCameraFactoryCache.get();
        return try factory.CreateInstanceWithLocationHeadingAndPitch(location, headingInDegrees, pitchInDegrees);
    }
    pub fn CreateInstanceWithLocationHeadingPitchRollAndFieldOfView(location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64, rollInDegrees: f64, fieldOfViewInDegrees: f64) core.HResult!*MapCamera {
        const factory = @This().IMapCameraFactoryCache.get();
        return try factory.CreateInstanceWithLocationHeadingPitchRollAndFieldOfView(location, headingInDegrees, pitchInDegrees, rollInDegrees, fieldOfViewInDegrees);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapCamera";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapCamera.GUID;
    pub const IID: Guid = IMapCamera.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapCamera.SIGNATURE);
    var _IMapCameraFactoryCache: FactoryCache(IMapCameraFactory, RUNTIME_NAME) = .{};
};
pub const MapCameraChangeReason = enum(i32) {
    System = 0,
    UserInteraction = 1,
    Programmatic = 2,
};
pub const MapColorScheme = enum(i32) {
    Light = 0,
    Dark = 1,
};
pub const MapContextRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapContextRequestedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapContextRequestedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVectorView(MapElement) {
        const this: *IMapContextRequestedEventArgs = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapContextRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapContextRequestedEventArgs.GUID;
    pub const IID: Guid = IMapContextRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapContextRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapControl = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn putCenter(self: *@This(), value: *Geopoint) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putCenter(value);
    }
    pub fn getChildren(self: *@This()) core.HResult!*IVector(DependencyObject) {
        const this: *IMapControl = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn getColorScheme(self: *@This()) core.HResult!MapColorScheme {
        const this: *IMapControl = @ptrCast(self);
        return try this.getColorScheme();
    }
    pub fn putColorScheme(self: *@This(), value: MapColorScheme) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putColorScheme(value);
    }
    pub fn getDesiredPitch(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getDesiredPitch();
    }
    pub fn putDesiredPitch(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putDesiredPitch(value);
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getHeading();
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putHeading(value);
    }
    pub fn getLandmarksVisible(self: *@This()) core.HResult!bool {
        const this: *IMapControl = @ptrCast(self);
        return try this.getLandmarksVisible();
    }
    pub fn putLandmarksVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putLandmarksVisible(value);
    }
    pub fn getLoadingStatus(self: *@This()) core.HResult!MapLoadingStatus {
        const this: *IMapControl = @ptrCast(self);
        return try this.getLoadingStatus();
    }
    pub fn getMapServiceToken(self: *@This()) core.HResult!HSTRING {
        const this: *IMapControl = @ptrCast(self);
        return try this.getMapServiceToken();
    }
    pub fn putMapServiceToken(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putMapServiceToken(value);
    }
    pub fn getMaxZoomLevel(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getMaxZoomLevel();
    }
    pub fn getMinZoomLevel(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getMinZoomLevel();
    }
    pub fn getPedestrianFeaturesVisible(self: *@This()) core.HResult!bool {
        const this: *IMapControl = @ptrCast(self);
        return try this.getPedestrianFeaturesVisible();
    }
    pub fn putPedestrianFeaturesVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putPedestrianFeaturesVisible(value);
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getPitch();
    }
    pub fn getStyle(self: *@This()) core.HResult!MapStyle {
        const this: *IMapControl = @ptrCast(self);
        return try this.getStyle();
    }
    pub fn putStyle(self: *@This(), value: MapStyle) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putStyle(value);
    }
    pub fn getTrafficFlowVisible(self: *@This()) core.HResult!bool {
        const this: *IMapControl = @ptrCast(self);
        return try this.getTrafficFlowVisible();
    }
    pub fn putTrafficFlowVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putTrafficFlowVisible(value);
    }
    pub fn getTransformOrigin(self: *@This()) core.HResult!Point {
        const this: *IMapControl = @ptrCast(self);
        return try this.getTransformOrigin();
    }
    pub fn putTransformOrigin(self: *@This(), value: Point) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putTransformOrigin(value);
    }
    pub fn getWatermarkMode(self: *@This()) core.HResult!MapWatermarkMode {
        const this: *IMapControl = @ptrCast(self);
        return try this.getWatermarkMode();
    }
    pub fn putWatermarkMode(self: *@This(), value: MapWatermarkMode) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putWatermarkMode(value);
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!f64 {
        const this: *IMapControl = @ptrCast(self);
        return try this.getZoomLevel();
    }
    pub fn putZoomLevel(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.putZoomLevel(value);
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        const this: *IMapControl = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn getRoutes(self: *@This()) core.HResult!*IVector(MapRouteView) {
        const this: *IMapControl = @ptrCast(self);
        return try this.getRoutes();
    }
    pub fn getTileSources(self: *@This()) core.HResult!*IVector(MapTileSource) {
        const this: *IMapControl = @ptrCast(self);
        return try this.getTileSources();
    }
    pub fn addCenterChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addCenterChanged(handler);
    }
    pub fn removeCenterChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeCenterChanged(token);
    }
    pub fn addHeadingChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addHeadingChanged(handler);
    }
    pub fn removeHeadingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeHeadingChanged(token);
    }
    pub fn addLoadingStatusChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addLoadingStatusChanged(handler);
    }
    pub fn removeLoadingStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeLoadingStatusChanged(token);
    }
    pub fn addMapDoubleTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addMapDoubleTapped(handler);
    }
    pub fn removeMapDoubleTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeMapDoubleTapped(token);
    }
    pub fn addMapHolding(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addMapHolding(handler);
    }
    pub fn removeMapHolding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeMapHolding(token);
    }
    pub fn addMapTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapInputEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addMapTapped(handler);
    }
    pub fn removeMapTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeMapTapped(token);
    }
    pub fn addPitchChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addPitchChanged(handler);
    }
    pub fn removePitchChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removePitchChanged(token);
    }
    pub fn addTransformOriginChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addTransformOriginChanged(handler);
    }
    pub fn removeTransformOriginChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeTransformOriginChanged(token);
    }
    pub fn addZoomLevelChanged(self: *@This(), handler: *TypedEventHandler(MapControl,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMapControl = @ptrCast(self);
        return try this.addZoomLevelChanged(handler);
    }
    pub fn removeZoomLevelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.removeZoomLevelChanged(token);
    }
    pub fn FindMapElementsAtOffset(self: *@This(), offset: Point) core.HResult!*IVectorView(MapElement) {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindMapElementsAtOffset(offset);
    }
    pub fn GetLocationFromOffset(self: *@This(), offset: Point, location: *Geopoint) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLocationFromOffset(offset, location);
    }
    pub fn GetOffsetFromLocation(self: *@This(), location: *Geopoint, offset: Point) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.GetOffsetFromLocation(location, offset);
    }
    pub fn IsLocationInView(self: *@This(), location: *Geopoint, isInView: bool) core.HResult!void {
        const this: *IMapControl = @ptrCast(self);
        return try this.IsLocationInView(location, isInView);
    }
    pub fn TrySetViewBoundsAsync(self: *@This(), bounds: *GeoboundingBox, margin: *IReference(Thickness), animation: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        const this: *IMapControl = @ptrCast(self);
        return try this.TrySetViewBoundsAsync(bounds, margin, animation);
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint) core.HResult!*IAsyncOperation(bool) {
        const this: *IMapControl = @ptrCast(self);
        return try this.TrySetViewAsync(center);
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64)) core.HResult!*IAsyncOperation(bool) {
        const this: *IMapControl = @ptrCast(self);
        return try this.TrySetViewAsync(center, zoomLevel);
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64)) core.HResult!*IAsyncOperation(bool) {
        const this: *IMapControl = @ptrCast(self);
        return try this.TrySetViewAsync(center, zoomLevel, heading, desiredPitch);
    }
    pub fn TrySetViewAsync(self: *@This(), center: *Geopoint, zoomLevel: *IReference(f64), heading: *IReference(f64), desiredPitch: *IReference(f64), animation: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        const this: *IMapControl = @ptrCast(self);
        return try this.TrySetViewAsync(center, zoomLevel, heading, desiredPitch, animation);
    }
    pub fn getBusinessLandmarksVisible(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBusinessLandmarksVisible();
    }
    pub fn putBusinessLandmarksVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBusinessLandmarksVisible(value);
    }
    pub fn getTransitFeaturesVisible(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransitFeaturesVisible();
    }
    pub fn putTransitFeaturesVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransitFeaturesVisible(value);
    }
    pub fn getPanInteractionMode(self: *@This()) core.HResult!MapPanInteractionMode {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPanInteractionMode();
    }
    pub fn putPanInteractionMode(self: *@This(), value: MapPanInteractionMode) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPanInteractionMode(value);
    }
    pub fn getRotateInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotateInteractionMode();
    }
    pub fn putRotateInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotateInteractionMode(value);
    }
    pub fn getTiltInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTiltInteractionMode();
    }
    pub fn putTiltInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTiltInteractionMode(value);
    }
    pub fn getZoomInteractionMode(self: *@This()) core.HResult!MapInteractionMode {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZoomInteractionMode();
    }
    pub fn putZoomInteractionMode(self: *@This(), value: MapInteractionMode) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putZoomInteractionMode(value);
    }
    pub fn getIs3DSupported(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIs3DSupported();
    }
    pub fn getIsStreetsideSupported(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStreetsideSupported();
    }
    pub fn getScene(self: *@This()) core.HResult!*MapScene {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScene();
    }
    pub fn putScene(self: *@This(), value: *MapScene) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScene(value);
    }
    pub fn getActualCamera(self: *@This()) core.HResult!*MapCamera {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualCamera();
    }
    pub fn getTargetCamera(self: *@This()) core.HResult!*MapCamera {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTargetCamera();
    }
    pub fn getCustomExperience(self: *@This()) core.HResult!*MapCustomExperience {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCustomExperience();
    }
    pub fn putCustomExperience(self: *@This(), value: *MapCustomExperience) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCustomExperience(value);
    }
    pub fn addMapElementClick(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementClickEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapElementClick(handler);
    }
    pub fn removeMapElementClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapElementClick(token);
    }
    pub fn addMapElementPointerEntered(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapElementPointerEntered(handler);
    }
    pub fn removeMapElementPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapElementPointerEntered(token);
    }
    pub fn addMapElementPointerExited(self: *@This(), handler: *TypedEventHandler(MapControl,MapElementPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapElementPointerExited(handler);
    }
    pub fn removeMapElementPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapElementPointerExited(token);
    }
    pub fn addActualCameraChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapActualCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addActualCameraChanged(handler);
    }
    pub fn removeActualCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeActualCameraChanged(token);
    }
    pub fn addActualCameraChanging(self: *@This(), handler: *TypedEventHandler(MapControl,MapActualCameraChangingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addActualCameraChanging(handler);
    }
    pub fn removeActualCameraChanging(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeActualCameraChanging(token);
    }
    pub fn addTargetCameraChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapTargetCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addTargetCameraChanged(handler);
    }
    pub fn removeTargetCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeTargetCameraChanged(token);
    }
    pub fn addCustomExperienceChanged(self: *@This(), handler: *TypedEventHandler(MapControl,MapCustomExperienceChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCustomExperienceChanged(handler);
    }
    pub fn removeCustomExperienceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCustomExperienceChanged(token);
    }
    pub fn StartContinuousRotate(self: *@This(), rateInDegreesPerSecond: f64) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartContinuousRotate(rateInDegreesPerSecond);
    }
    pub fn StopContinuousRotate(self: *@This()) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopContinuousRotate();
    }
    pub fn StartContinuousTilt(self: *@This(), rateInDegreesPerSecond: f64) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartContinuousTilt(rateInDegreesPerSecond);
    }
    pub fn StopContinuousTilt(self: *@This()) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopContinuousTilt();
    }
    pub fn StartContinuousZoom(self: *@This(), rateOfChangePerSecond: f64) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartContinuousZoom(rateOfChangePerSecond);
    }
    pub fn StopContinuousZoom(self: *@This()) core.HResult!void {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopContinuousZoom();
    }
    pub fn TryRotateAsync(self: *@This(), degrees: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRotateAsync(degrees);
    }
    pub fn TryRotateToAsync(self: *@This(), angleInDegrees: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryRotateToAsync(angleInDegrees);
    }
    pub fn TryTiltAsync(self: *@This(), degrees: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryTiltAsync(degrees);
    }
    pub fn TryTiltToAsync(self: *@This(), angleInDegrees: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryTiltToAsync(angleInDegrees);
    }
    pub fn TryZoomInAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryZoomInAsync();
    }
    pub fn TryZoomOutAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryZoomOutAsync();
    }
    pub fn TryZoomToAsync(self: *@This(), zoomLevel: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryZoomToAsync(zoomLevel);
    }
    pub fn TrySetSceneAsync(self: *@This(), scene: *MapScene) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySetSceneAsync(scene);
    }
    pub fn TrySetSceneAsync(self: *@This(), scene: *MapScene, animationKind: MapAnimationKind) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySetSceneAsync(scene, animationKind);
    }
    pub fn addMapRightTapped(self: *@This(), handler: *TypedEventHandler(MapControl,MapRightTappedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapRightTapped(handler);
    }
    pub fn removeMapRightTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapRightTapped(token);
    }
    pub fn getBusinessLandmarksEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBusinessLandmarksEnabled();
    }
    pub fn putBusinessLandmarksEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBusinessLandmarksEnabled(value);
    }
    pub fn getTransitFeaturesEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransitFeaturesEnabled();
    }
    pub fn putTransitFeaturesEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransitFeaturesEnabled(value);
    }
    pub fn GetVisibleRegion(self: *@This(), region: MapVisibleRegionKind) core.HResult!*Geopath {
        var this: ?*IMapControl4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetVisibleRegion(region);
    }
    pub fn getMapProjection(self: *@This()) core.HResult!MapProjection {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMapProjection();
    }
    pub fn putMapProjection(self: *@This(), value: MapProjection) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMapProjection(value);
    }
    pub fn getStyleSheet(self: *@This()) core.HResult!*MapStyleSheet {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStyleSheet();
    }
    pub fn putStyleSheet(self: *@This(), value: *MapStyleSheet) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStyleSheet(value);
    }
    pub fn getViewPadding(self: *@This()) core.HResult!Thickness {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewPadding();
    }
    pub fn putViewPadding(self: *@This(), value: Thickness) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putViewPadding(value);
    }
    pub fn addMapContextRequested(self: *@This(), handler: *TypedEventHandler(MapControl,MapContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMapContextRequested(handler);
    }
    pub fn removeMapContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMapContextRequested(token);
    }
    pub fn FindMapElementsAtOffset(self: *@This(), offset: Point, radius: f64) core.HResult!*IVectorView(MapElement) {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindMapElementsAtOffset(offset, radius);
    }
    pub fn GetLocationFromOffset(self: *@This(), offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLocationFromOffset(offset, desiredReferenceSystem, location);
    }
    pub fn StartContinuousPan(self: *@This(), horizontalPixelsPerSecond: f64, verticalPixelsPerSecond: f64) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartContinuousPan(horizontalPixelsPerSecond, verticalPixelsPerSecond);
    }
    pub fn StopContinuousPan(self: *@This()) core.HResult!void {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopContinuousPan();
    }
    pub fn TryPanAsync(self: *@This(), horizontalPixels: f64, verticalPixels: f64) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPanAsync(horizontalPixels, verticalPixels);
    }
    pub fn TryPanToAsync(self: *@This(), location: *Geopoint) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IMapControl5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryPanToAsync(location);
    }
    pub fn getLayers(self: *@This()) core.HResult!*IVector(MapLayer) {
        var this: ?*IMapControl6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLayers();
    }
    pub fn putLayers(self: *@This(), value: *IVector(MapLayer)) core.HResult!void {
        var this: ?*IMapControl6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLayers(value);
    }
    pub fn TryGetLocationFromOffset(self: *@This(), offset: Point, location: *Geopoint) core.HResult!bool {
        var this: ?*IMapControl6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetLocationFromOffset(offset, location);
    }
    pub fn TryGetLocationFromOffset(self: *@This(), offset: Point, desiredReferenceSystem: AltitudeReferenceSystem, location: *Geopoint) core.HResult!bool {
        var this: ?*IMapControl6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetLocationFromOffset(offset, desiredReferenceSystem, location);
    }
    pub fn getRegion(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMapControl7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRegion();
    }
    pub fn putRegion(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMapControl7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRegion(value);
    }
    pub fn getCanTiltDown(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanTiltDown();
    }
    pub fn getCanTiltUp(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanTiltUp();
    }
    pub fn getCanZoomIn(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanZoomIn();
    }
    pub fn getCanZoomOut(self: *@This()) core.HResult!bool {
        var this: ?*IMapControl8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapControl8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanZoomOut();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapControl.IID)));
    }
    pub fn getLayersProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics6Cache.get();
        return try factory.getLayersProperty();
    }
    pub fn getCanTiltDownProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics8Cache.get();
        return try factory.getCanTiltDownProperty();
    }
    pub fn getCanTiltUpProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics8Cache.get();
        return try factory.getCanTiltUpProperty();
    }
    pub fn getCanZoomInProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics8Cache.get();
        return try factory.getCanZoomInProperty();
    }
    pub fn getCanZoomOutProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics8Cache.get();
        return try factory.getCanZoomOutProperty();
    }
    pub fn getCenterProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getCenterProperty();
    }
    pub fn getChildrenProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getChildrenProperty();
    }
    pub fn getColorSchemeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getColorSchemeProperty();
    }
    pub fn getDesiredPitchProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getDesiredPitchProperty();
    }
    pub fn getHeadingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getHeadingProperty();
    }
    pub fn getLandmarksVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getLandmarksVisibleProperty();
    }
    pub fn getLoadingStatusProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getLoadingStatusProperty();
    }
    pub fn getMapServiceTokenProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getMapServiceTokenProperty();
    }
    pub fn getPedestrianFeaturesVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getPedestrianFeaturesVisibleProperty();
    }
    pub fn getPitchProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getPitchProperty();
    }
    pub fn getStyleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getStyleProperty();
    }
    pub fn getTrafficFlowVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getTrafficFlowVisibleProperty();
    }
    pub fn getTransformOriginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getTransformOriginProperty();
    }
    pub fn getWatermarkModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getWatermarkModeProperty();
    }
    pub fn getZoomLevelProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getZoomLevelProperty();
    }
    pub fn getMapElementsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getMapElementsProperty();
    }
    pub fn getRoutesProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getRoutesProperty();
    }
    pub fn getTileSourcesProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getTileSourcesProperty();
    }
    pub fn getLocationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getLocationProperty();
    }
    pub fn GetLocation(element: *DependencyObject) core.HResult!*Geopoint {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.GetLocation(element);
    }
    pub fn SetLocation(element: *DependencyObject, value: *Geopoint) core.HResult!void {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.SetLocation(element, value);
    }
    pub fn getNormalizedAnchorPointProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.getNormalizedAnchorPointProperty();
    }
    pub fn GetNormalizedAnchorPoint(element: *DependencyObject) core.HResult!Point {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.GetNormalizedAnchorPoint(element);
    }
    pub fn SetNormalizedAnchorPoint(element: *DependencyObject, value: Point) core.HResult!void {
        const factory = @This().IMapControlStaticsCache.get();
        return try factory.SetNormalizedAnchorPoint(element, value);
    }
    pub fn getMapProjectionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics5Cache.get();
        return try factory.getMapProjectionProperty();
    }
    pub fn getStyleSheetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics5Cache.get();
        return try factory.getStyleSheetProperty();
    }
    pub fn getViewPaddingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics5Cache.get();
        return try factory.getViewPaddingProperty();
    }
    pub fn getRegionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics7Cache.get();
        return try factory.getRegionProperty();
    }
    pub fn getBusinessLandmarksVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getBusinessLandmarksVisibleProperty();
    }
    pub fn getTransitFeaturesVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getTransitFeaturesVisibleProperty();
    }
    pub fn getPanInteractionModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getPanInteractionModeProperty();
    }
    pub fn getRotateInteractionModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getRotateInteractionModeProperty();
    }
    pub fn getTiltInteractionModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getTiltInteractionModeProperty();
    }
    pub fn getZoomInteractionModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getZoomInteractionModeProperty();
    }
    pub fn getIs3DSupportedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getIs3DSupportedProperty();
    }
    pub fn getIsStreetsideSupportedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getIsStreetsideSupportedProperty();
    }
    pub fn getSceneProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics2Cache.get();
        return try factory.getSceneProperty();
    }
    pub fn getBusinessLandmarksEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics4Cache.get();
        return try factory.getBusinessLandmarksEnabledProperty();
    }
    pub fn getTransitFeaturesEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapControlStatics4Cache.get();
        return try factory.getTransitFeaturesEnabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControl.GUID;
    pub const IID: Guid = IMapControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControl.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapControlStatics6Cache: FactoryCache(IMapControlStatics6, RUNTIME_NAME) = .{};
    var _IMapControlStatics8Cache: FactoryCache(IMapControlStatics8, RUNTIME_NAME) = .{};
    var _IMapControlStaticsCache: FactoryCache(IMapControlStatics, RUNTIME_NAME) = .{};
    var _IMapControlStatics5Cache: FactoryCache(IMapControlStatics5, RUNTIME_NAME) = .{};
    var _IMapControlStatics7Cache: FactoryCache(IMapControlStatics7, RUNTIME_NAME) = .{};
    var _IMapControlStatics2Cache: FactoryCache(IMapControlStatics2, RUNTIME_NAME) = .{};
    var _IMapControlStatics4Cache: FactoryCache(IMapControlStatics4, RUNTIME_NAME) = .{};
};
pub const MapCustomExperience = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapCustomExperience {
        const factory = @This().IMapCustomExperienceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapCustomExperience";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapCustomExperience.GUID;
    pub const IID: Guid = IMapCustomExperience.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapCustomExperience.SIGNATURE);
    var _IMapCustomExperienceFactoryCache: FactoryCache(IMapCustomExperienceFactory, RUNTIME_NAME) = .{};
};
pub const MapCustomExperienceChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapCustomExperienceChangedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapCustomExperienceChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapCustomExperienceChangedEventArgs.GUID;
    pub const IID: Guid = IMapCustomExperienceChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapCustomExperienceChangedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElement3D = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getModel(self: *@This()) core.HResult!*MapModel3D {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getModel();
    }
    pub fn putModel(self: *@This(), value: *MapModel3D) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putModel(value);
    }
    pub fn getHeading(self: *@This()) core.HResult!f64 {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getHeading();
    }
    pub fn putHeading(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putHeading(value);
    }
    pub fn getPitch(self: *@This()) core.HResult!f64 {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getPitch();
    }
    pub fn putPitch(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putPitch(value);
    }
    pub fn getRoll(self: *@This()) core.HResult!f64 {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getRoll();
    }
    pub fn putRoll(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putRoll(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IMapElement3D = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElement3D.IID)));
    }
    pub fn getLocationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElement3DStaticsCache.get();
        return try factory.getLocationProperty();
    }
    pub fn getHeadingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElement3DStaticsCache.get();
        return try factory.getHeadingProperty();
    }
    pub fn getPitchProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElement3DStaticsCache.get();
        return try factory.getPitchProperty();
    }
    pub fn getRollProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElement3DStaticsCache.get();
        return try factory.getRollProperty();
    }
    pub fn getScaleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElement3DStaticsCache.get();
        return try factory.getScaleProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElement3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElement3D.GUID;
    pub const IID: Guid = IMapElement3D.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElement3D.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapElement3DStaticsCache: FactoryCache(IMapElement3DStatics, RUNTIME_NAME) = .{};
};
pub const MapElementClickEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementClickEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementClickEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        const this: *IMapElementClickEventArgs = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementClickEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementClickEventArgs.GUID;
    pub const IID: Guid = IMapElementClickEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementClickEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElementCollisionBehavior = enum(i32) {
    Hide = 0,
    RemainVisible = 1,
};
pub const MapElementPointerEnteredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementPointerEnteredEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementPointerEnteredEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        const this: *IMapElementPointerEnteredEventArgs = @ptrCast(self);
        return try this.getMapElement();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementPointerEnteredEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementPointerEnteredEventArgs.GUID;
    pub const IID: Guid = IMapElementPointerEnteredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementPointerEnteredEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElementPointerExitedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementPointerExitedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementPointerExitedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        const this: *IMapElementPointerExitedEventArgs = @ptrCast(self);
        return try this.getMapElement();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementPointerExitedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementPointerExitedEventArgs.GUID;
    pub const IID: Guid = IMapElementPointerExitedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementPointerExitedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapLayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMapTabIndex(self: *@This()) core.HResult!i32 {
        const this: *IMapLayer = @ptrCast(self);
        return try this.getMapTabIndex();
    }
    pub fn putMapTabIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *IMapLayer = @ptrCast(self);
        return try this.putMapTabIndex(value);
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *IMapLayer = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapLayer = @ptrCast(self);
        return try this.putVisible(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        const this: *IMapLayer = @ptrCast(self);
        return try this.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *IMapLayer = @ptrCast(self);
        return try this.putZIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMapTabIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapLayerStaticsCache.get();
        return try factory.getMapTabIndexProperty();
    }
    pub fn getVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapLayerStaticsCache.get();
        return try factory.getVisibleProperty();
    }
    pub fn getZIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapLayerStaticsCache.get();
        return try factory.getZIndexProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapLayer {
        const factory = @This().IMapLayerFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapLayer.GUID;
    pub const IID: Guid = IMapLayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapLayer.SIGNATURE);
    var _IMapLayerStaticsCache: FactoryCache(IMapLayerStatics, RUNTIME_NAME) = .{};
    var _IMapLayerFactoryCache: FactoryCache(IMapLayerFactory, RUNTIME_NAME) = .{};
};
pub const MapElementsLayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn putMapElements(self: *@This(), value: *IVector(MapElement)) core.HResult!void {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.putMapElements(value);
    }
    pub fn addMapElementClick(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerClickEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.addMapElementClick(handler);
    }
    pub fn removeMapElementClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.removeMapElementClick(token);
    }
    pub fn addMapElementPointerEntered(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerEnteredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.addMapElementPointerEntered(handler);
    }
    pub fn removeMapElementPointerEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.removeMapElementPointerEntered(token);
    }
    pub fn addMapElementPointerExited(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerPointerExitedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.addMapElementPointerExited(handler);
    }
    pub fn removeMapElementPointerExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.removeMapElementPointerExited(token);
    }
    pub fn addMapContextRequested(self: *@This(), handler: *TypedEventHandler(MapElementsLayer,MapElementsLayerContextRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.addMapContextRequested(handler);
    }
    pub fn removeMapContextRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapElementsLayer = @ptrCast(self);
        return try this.removeMapContextRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementsLayer.IID)));
    }
    pub fn getMapElementsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapElementsLayerStaticsCache.get();
        return try factory.getMapElementsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementsLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementsLayer.GUID;
    pub const IID: Guid = IMapElementsLayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementsLayer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapElementsLayerStaticsCache: FactoryCache(IMapElementsLayerStatics, RUNTIME_NAME) = .{};
};
pub const MapElementsLayerClickEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementsLayerClickEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementsLayerClickEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVector(MapElement) {
        const this: *IMapElementsLayerClickEventArgs = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementsLayerClickEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementsLayerClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementsLayerClickEventArgs.GUID;
    pub const IID: Guid = IMapElementsLayerClickEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementsLayerClickEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElementsLayerContextRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementsLayerContextRequestedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementsLayerContextRequestedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElements(self: *@This()) core.HResult!*IVectorView(MapElement) {
        const this: *IMapElementsLayerContextRequestedEventArgs = @ptrCast(self);
        return try this.getMapElements();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementsLayerContextRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementsLayerContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementsLayerContextRequestedEventArgs.GUID;
    pub const IID: Guid = IMapElementsLayerContextRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementsLayerContextRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElementsLayerPointerEnteredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementsLayerPointerEnteredEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementsLayerPointerEnteredEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        const this: *IMapElementsLayerPointerEnteredEventArgs = @ptrCast(self);
        return try this.getMapElement();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementsLayerPointerEnteredEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementsLayerPointerEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementsLayerPointerEnteredEventArgs.GUID;
    pub const IID: Guid = IMapElementsLayerPointerEnteredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementsLayerPointerEnteredEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapElementsLayerPointerExitedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapElementsLayerPointerExitedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapElementsLayerPointerExitedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn getMapElement(self: *@This()) core.HResult!*MapElement {
        const this: *IMapElementsLayerPointerExitedEventArgs = @ptrCast(self);
        return try this.getMapElement();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapElementsLayerPointerExitedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapElementsLayerPointerExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapElementsLayerPointerExitedEventArgs.GUID;
    pub const IID: Guid = IMapElementsLayerPointerExitedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapElementsLayerPointerExitedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapIcon = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapIcon = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn putLocation(self: *@This(), value: *Geopoint) core.HResult!void {
        const this: *IMapIcon = @ptrCast(self);
        return try this.putLocation(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMapIcon = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMapIcon = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getNormalizedAnchorPoint(self: *@This()) core.HResult!Point {
        const this: *IMapIcon = @ptrCast(self);
        return try this.getNormalizedAnchorPoint();
    }
    pub fn putNormalizedAnchorPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *IMapIcon = @ptrCast(self);
        return try this.putNormalizedAnchorPoint(value);
    }
    pub fn getImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IMapIcon = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IMapIcon = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn getCollisionBehaviorDesired(self: *@This()) core.HResult!MapElementCollisionBehavior {
        var this: ?*IMapIcon2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapIcon2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCollisionBehaviorDesired();
    }
    pub fn putCollisionBehaviorDesired(self: *@This(), value: MapElementCollisionBehavior) core.HResult!void {
        var this: ?*IMapIcon2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapIcon2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCollisionBehaviorDesired(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapIcon.IID)));
    }
    pub fn getLocationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapIconStaticsCache.get();
        return try factory.getLocationProperty();
    }
    pub fn getTitleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapIconStaticsCache.get();
        return try factory.getTitleProperty();
    }
    pub fn getNormalizedAnchorPointProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapIconStaticsCache.get();
        return try factory.getNormalizedAnchorPointProperty();
    }
    pub fn getCollisionBehaviorDesiredProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapIconStatics2Cache.get();
        return try factory.getCollisionBehaviorDesiredProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapIcon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapIcon.GUID;
    pub const IID: Guid = IMapIcon.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapIcon.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapIconStaticsCache: FactoryCache(IMapIconStatics, RUNTIME_NAME) = .{};
    var _IMapIconStatics2Cache: FactoryCache(IMapIconStatics2, RUNTIME_NAME) = .{};
};
pub const MapInputEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapInputEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapInputEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapInputEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapInputEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapInputEventArgs.GUID;
    pub const IID: Guid = IMapInputEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapInputEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapInteractionMode = enum(i32) {
    Auto = 0,
    Disabled = 1,
    GestureOnly = 2,
    PointerAndKeyboard = 2,
    ControlOnly = 3,
    GestureAndControl = 4,
    PointerKeyboardAndControl = 4,
    PointerOnly = 5,
};
pub const MapItemsControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItemsSource(self: *@This()) core.HResult!*IInspectable {
        const this: *IMapItemsControl = @ptrCast(self);
        return try this.getItemsSource();
    }
    pub fn putItemsSource(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IMapItemsControl = @ptrCast(self);
        return try this.putItemsSource(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(DependencyObject) {
        const this: *IMapItemsControl = @ptrCast(self);
        return try this.getItems();
    }
    pub fn getItemTemplate(self: *@This()) core.HResult!*DataTemplate {
        const this: *IMapItemsControl = @ptrCast(self);
        return try this.getItemTemplate();
    }
    pub fn putItemTemplate(self: *@This(), value: *DataTemplate) core.HResult!void {
        const this: *IMapItemsControl = @ptrCast(self);
        return try this.putItemTemplate(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapItemsControl.IID)));
    }
    pub fn getItemsSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapItemsControlStaticsCache.get();
        return try factory.getItemsSourceProperty();
    }
    pub fn getItemsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapItemsControlStaticsCache.get();
        return try factory.getItemsProperty();
    }
    pub fn getItemTemplateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapItemsControlStaticsCache.get();
        return try factory.getItemTemplateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapItemsControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapItemsControl.GUID;
    pub const IID: Guid = IMapItemsControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapItemsControl.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapItemsControlStaticsCache: FactoryCache(IMapItemsControlStatics, RUNTIME_NAME) = .{};
};
pub const MapLoadingStatus = enum(i32) {
    Loading = 0,
    Loaded = 1,
    DataUnavailable = 2,
    DownloadedMapsManagerUnavailable = 3,
};
pub const MapModel3D = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFrom3MFAsync(source: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(MapModel3D) {
        const factory = @This().IMapModel3DStaticsCache.get();
        return try factory.CreateFrom3MFAsync(source);
    }
    pub fn CreateFrom3MFAsync(source: *IRandomAccessStreamReference, shadingOption: MapModel3DShadingOption) core.HResult!*IAsyncOperation(MapModel3D) {
        const factory = @This().IMapModel3DStaticsCache.get();
        return try factory.CreateFrom3MFAsync(source, shadingOption);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapModel3D {
        const factory = @This().IMapModel3DFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapModel3D";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapModel3D.GUID;
    pub const IID: Guid = IMapModel3D.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapModel3D.SIGNATURE);
    var _IMapModel3DStaticsCache: FactoryCache(IMapModel3DStatics, RUNTIME_NAME) = .{};
    var _IMapModel3DFactoryCache: FactoryCache(IMapModel3DFactory, RUNTIME_NAME) = .{};
};
pub const MapModel3DShadingOption = enum(i32) {
    Default = 0,
    Flat = 1,
    Smooth = 2,
};
pub const MapPanInteractionMode = enum(i32) {
    Auto = 0,
    Disabled = 1,
};
pub const MapPolygon = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *Geopath) core.HResult!void {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn getStrokeColor(self: *@This()) core.HResult!Color {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.getStrokeColor();
    }
    pub fn putStrokeColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.putStrokeColor(value);
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.getStrokeThickness();
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.putStrokeThickness(value);
    }
    pub fn getStrokeDashed(self: *@This()) core.HResult!bool {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.getStrokeDashed();
    }
    pub fn putStrokeDashed(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.putStrokeDashed(value);
    }
    pub fn getFillColor(self: *@This()) core.HResult!Color {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.getFillColor();
    }
    pub fn putFillColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IMapPolygon = @ptrCast(self);
        return try this.putFillColor(value);
    }
    pub fn getPaths(self: *@This()) core.HResult!*IVector(Geopath) {
        var this: ?*IMapPolygon2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapPolygon2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPaths();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapPolygon.IID)));
    }
    pub fn getPathProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapPolygonStaticsCache.get();
        return try factory.getPathProperty();
    }
    pub fn getStrokeThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapPolygonStaticsCache.get();
        return try factory.getStrokeThicknessProperty();
    }
    pub fn getStrokeDashedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapPolygonStaticsCache.get();
        return try factory.getStrokeDashedProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapPolygon";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapPolygon.GUID;
    pub const IID: Guid = IMapPolygon.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapPolygon.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapPolygonStaticsCache: FactoryCache(IMapPolygonStatics, RUNTIME_NAME) = .{};
};
pub const MapPolyline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!*Geopath {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *Geopath) core.HResult!void {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.putPath(value);
    }
    pub fn getStrokeColor(self: *@This()) core.HResult!Color {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.getStrokeColor();
    }
    pub fn putStrokeColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.putStrokeColor(value);
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f64 {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.getStrokeThickness();
    }
    pub fn putStrokeThickness(self: *@This(), value: f64) core.HResult!void {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.putStrokeThickness(value);
    }
    pub fn getStrokeDashed(self: *@This()) core.HResult!bool {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.getStrokeDashed();
    }
    pub fn putStrokeDashed(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapPolyline = @ptrCast(self);
        return try this.putStrokeDashed(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapPolyline.IID)));
    }
    pub fn getPathProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapPolylineStaticsCache.get();
        return try factory.getPathProperty();
    }
    pub fn getStrokeDashedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapPolylineStaticsCache.get();
        return try factory.getStrokeDashedProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapPolyline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapPolyline.GUID;
    pub const IID: Guid = IMapPolyline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapPolyline.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMapPolylineStaticsCache: FactoryCache(IMapPolylineStatics, RUNTIME_NAME) = .{};
};
pub const MapProjection = enum(i32) {
    WebMercator = 0,
    Globe = 1,
};
pub const MapRightTappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IMapRightTappedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IMapRightTappedEventArgs = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapRightTappedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapRightTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRightTappedEventArgs.GUID;
    pub const IID: Guid = IMapRightTappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRightTappedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapRouteView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRouteColor(self: *@This()) core.HResult!Color {
        const this: *IMapRouteView = @ptrCast(self);
        return try this.getRouteColor();
    }
    pub fn putRouteColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IMapRouteView = @ptrCast(self);
        return try this.putRouteColor(value);
    }
    pub fn getOutlineColor(self: *@This()) core.HResult!Color {
        const this: *IMapRouteView = @ptrCast(self);
        return try this.getOutlineColor();
    }
    pub fn putOutlineColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IMapRouteView = @ptrCast(self);
        return try this.putOutlineColor(value);
    }
    pub fn getRoute(self: *@This()) core.HResult!*MapRoute {
        const this: *IMapRouteView = @ptrCast(self);
        return try this.getRoute();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithMapRoute(route: *MapRoute, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapRouteView {
        const factory = @This().IMapRouteViewFactoryCache.get();
        return try factory.CreateInstanceWithMapRoute(route, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapRouteView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapRouteView.GUID;
    pub const IID: Guid = IMapRouteView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapRouteView.SIGNATURE);
    var _IMapRouteViewFactoryCache: FactoryCache(IMapRouteViewFactory, RUNTIME_NAME) = .{};
};
pub const MapScene = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetCamera(self: *@This()) core.HResult!*MapCamera {
        const this: *IMapScene = @ptrCast(self);
        return try this.getTargetCamera();
    }
    pub fn addTargetCameraChanged(self: *@This(), handler: *TypedEventHandler(MapScene,MapTargetCameraChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMapScene = @ptrCast(self);
        return try this.addTargetCameraChanged(handler);
    }
    pub fn removeTargetCameraChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMapScene = @ptrCast(self);
        return try this.removeTargetCameraChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromBoundingBox(bounds: *GeoboundingBox) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromBoundingBox(bounds);
    }
    pub fn CreateFromBoundingBox(bounds: *GeoboundingBox, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromBoundingBox(bounds, headingInDegrees, pitchInDegrees);
    }
    pub fn CreateFromCamera(camera: *MapCamera) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromCamera(camera);
    }
    pub fn CreateFromLocation(location: *Geopoint) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocation(location);
    }
    pub fn CreateFromLocation(location: *Geopoint, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocation(location, headingInDegrees, pitchInDegrees);
    }
    pub fn CreateFromLocationAndRadius(location: *Geopoint, radiusInMeters: f64) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocationAndRadius(location, radiusInMeters);
    }
    pub fn CreateFromLocationAndRadius(location: *Geopoint, radiusInMeters: f64, headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocationAndRadius(location, radiusInMeters, headingInDegrees, pitchInDegrees);
    }
    pub fn CreateFromLocations(locations: *IIterable(Geopoint)) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocations(locations);
    }
    pub fn CreateFromLocations(locations: *IIterable(Geopoint), headingInDegrees: f64, pitchInDegrees: f64) core.HResult!*MapScene {
        const factory = @This().IMapSceneStaticsCache.get();
        return try factory.CreateFromLocations(locations, headingInDegrees, pitchInDegrees);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapScene";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapScene.GUID;
    pub const IID: Guid = IMapScene.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapScene.SIGNATURE);
    var _IMapSceneStaticsCache: FactoryCache(IMapSceneStatics, RUNTIME_NAME) = .{};
};
pub const MapStyle = enum(i32) {
    None = 0,
    Road = 1,
    Aerial = 2,
    AerialWithRoads = 3,
    Terrain = 4,
    Aerial3D = 5,
    Aerial3DWithRoads = 6,
    Custom = 7,
};
pub const MapStyleSheet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Aerial() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.Aerial();
    }
    pub fn AerialWithOverlay() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.AerialWithOverlay();
    }
    pub fn RoadLight() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.RoadLight();
    }
    pub fn RoadDark() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.RoadDark();
    }
    pub fn RoadHighContrastLight() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.RoadHighContrastLight();
    }
    pub fn RoadHighContrastDark() core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.RoadHighContrastDark();
    }
    pub fn Combine(styleSheets: *IIterable(MapStyleSheet)) core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.Combine(styleSheets);
    }
    pub fn ParseFromJson(styleAsJson: HSTRING) core.HResult!*MapStyleSheet {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.ParseFromJson(styleAsJson);
    }
    pub fn TryParseFromJson(styleAsJson: HSTRING, styleSheet: *MapStyleSheet) core.HResult!bool {
        const factory = @This().IMapStyleSheetStaticsCache.get();
        return try factory.TryParseFromJson(styleAsJson, styleSheet);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapStyleSheet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapStyleSheet.GUID;
    pub const IID: Guid = IMapStyleSheet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapStyleSheet.SIGNATURE);
    var _IMapStyleSheetStaticsCache: FactoryCache(IMapStyleSheetStatics, RUNTIME_NAME) = .{};
};
pub const MapStyleSheetEntries = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getArea() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getArea();
    }
    pub fn getAirport() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getAirport();
    }
    pub fn getCemetery() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getCemetery();
    }
    pub fn getContinent() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getContinent();
    }
    pub fn getEducation() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getEducation();
    }
    pub fn getIndigenousPeoplesReserve() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getIndigenousPeoplesReserve();
    }
    pub fn getIsland() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getIsland();
    }
    pub fn getMedical() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getMedical();
    }
    pub fn getMilitary() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getMilitary();
    }
    pub fn getNautical() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getNautical();
    }
    pub fn getNeighborhood() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getNeighborhood();
    }
    pub fn getRunway() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRunway();
    }
    pub fn getSand() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getSand();
    }
    pub fn getShoppingCenter() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getShoppingCenter();
    }
    pub fn getStadium() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getStadium();
    }
    pub fn getVegetation() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getVegetation();
    }
    pub fn getForest() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getForest();
    }
    pub fn getGolfCourse() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getGolfCourse();
    }
    pub fn getPark() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPark();
    }
    pub fn getPlayingField() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPlayingField();
    }
    pub fn getReserve() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getReserve();
    }
    pub fn getPoint() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPoint();
    }
    pub fn getNaturalPoint() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getNaturalPoint();
    }
    pub fn getPeak() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPeak();
    }
    pub fn getVolcanicPeak() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getVolcanicPeak();
    }
    pub fn getWaterPoint() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getWaterPoint();
    }
    pub fn getPointOfInterest() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPointOfInterest();
    }
    pub fn getBusiness() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getBusiness();
    }
    pub fn getFoodPoint() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getFoodPoint();
    }
    pub fn getPopulatedPlace() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPopulatedPlace();
    }
    pub fn getCapital() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getCapital();
    }
    pub fn getAdminDistrictCapital() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getAdminDistrictCapital();
    }
    pub fn getCountryRegionCapital() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getCountryRegionCapital();
    }
    pub fn getRoadShield() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRoadShield();
    }
    pub fn getRoadExit() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRoadExit();
    }
    pub fn getTransit() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getTransit();
    }
    pub fn getPolitical() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getPolitical();
    }
    pub fn getCountryRegion() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getCountryRegion();
    }
    pub fn getAdminDistrict() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getAdminDistrict();
    }
    pub fn getDistrict() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getDistrict();
    }
    pub fn getStructure() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getStructure();
    }
    pub fn getBuilding() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getBuilding();
    }
    pub fn getEducationBuilding() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getEducationBuilding();
    }
    pub fn getMedicalBuilding() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getMedicalBuilding();
    }
    pub fn getTransitBuilding() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getTransitBuilding();
    }
    pub fn getTransportation() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getTransportation();
    }
    pub fn getRoad() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRoad();
    }
    pub fn getControlledAccessHighway() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getControlledAccessHighway();
    }
    pub fn getHighSpeedRamp() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getHighSpeedRamp();
    }
    pub fn getHighway() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getHighway();
    }
    pub fn getMajorRoad() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getMajorRoad();
    }
    pub fn getArterialRoad() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getArterialRoad();
    }
    pub fn getStreet() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getStreet();
    }
    pub fn getRamp() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRamp();
    }
    pub fn getUnpavedStreet() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getUnpavedStreet();
    }
    pub fn getTollRoad() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getTollRoad();
    }
    pub fn getRailway() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRailway();
    }
    pub fn getTrail() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getTrail();
    }
    pub fn getWaterRoute() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getWaterRoute();
    }
    pub fn getWater() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getWater();
    }
    pub fn getRiver() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRiver();
    }
    pub fn getRouteLine() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getRouteLine();
    }
    pub fn getWalkingRoute() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getWalkingRoute();
    }
    pub fn getDrivingRoute() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntriesStaticsCache.get();
        return try factory.getDrivingRoute();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapStyleSheetEntries";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapStyleSheetEntriesStaticsCache: FactoryCache(IMapStyleSheetEntriesStatics, RUNTIME_NAME) = .{};
};
pub const MapStyleSheetEntryStates = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDisabled() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntryStatesStaticsCache.get();
        return try factory.getDisabled();
    }
    pub fn getHover() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntryStatesStaticsCache.get();
        return try factory.getHover();
    }
    pub fn getSelected() core.HResult!HSTRING {
        const factory = @This().IMapStyleSheetEntryStatesStaticsCache.get();
        return try factory.getSelected();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapStyleSheetEntryStates";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMapStyleSheetEntryStatesStaticsCache: FactoryCache(IMapStyleSheetEntryStatesStatics, RUNTIME_NAME) = .{};
};
pub const MapTargetCameraChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCamera(self: *@This()) core.HResult!*MapCamera {
        const this: *IMapTargetCameraChangedEventArgs = @ptrCast(self);
        return try this.getCamera();
    }
    pub fn getChangeReason(self: *@This()) core.HResult!MapCameraChangeReason {
        var this: ?*IMapTargetCameraChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTargetCameraChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getChangeReason();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTargetCameraChangedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTargetCameraChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTargetCameraChangedEventArgs.GUID;
    pub const IID: Guid = IMapTargetCameraChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTargetCameraChangedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileAnimationState = enum(i32) {
    Stopped = 0,
    Paused = 1,
    Playing = 2,
};
pub const MapTileBitmapRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPixelData(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IMapTileBitmapRequest = @ptrCast(self);
        return try this.getPixelData();
    }
    pub fn putPixelData(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IMapTileBitmapRequest = @ptrCast(self);
        return try this.putPixelData(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MapTileBitmapRequestDeferral {
        const this: *IMapTileBitmapRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileBitmapRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileBitmapRequest.GUID;
    pub const IID: Guid = IMapTileBitmapRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileBitmapRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileBitmapRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IMapTileBitmapRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileBitmapRequestDeferral.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileBitmapRequestDeferral.GUID;
    pub const IID: Guid = IMapTileBitmapRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileBitmapRequestDeferral.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileBitmapRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getX(self: *@This()) core.HResult!i32 {
        const this: *IMapTileBitmapRequestedEventArgs = @ptrCast(self);
        return try this.getX();
    }
    pub fn getY(self: *@This()) core.HResult!i32 {
        const this: *IMapTileBitmapRequestedEventArgs = @ptrCast(self);
        return try this.getY();
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!i32 {
        const this: *IMapTileBitmapRequestedEventArgs = @ptrCast(self);
        return try this.getZoomLevel();
    }
    pub fn getRequest(self: *@This()) core.HResult!*MapTileBitmapRequest {
        const this: *IMapTileBitmapRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn getFrameIndex(self: *@This()) core.HResult!i32 {
        var this: ?*IMapTileBitmapRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileBitmapRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameIndex();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileBitmapRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileBitmapRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileBitmapRequestedEventArgs.GUID;
    pub const IID: Guid = IMapTileBitmapRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileBitmapRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileLayer = enum(i32) {
    LabelOverlay = 0,
    RoadOverlay = 1,
    AreaOverlay = 2,
    BackgroundOverlay = 3,
    BackgroundReplacement = 4,
};
pub const MapTileSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDataSource(self: *@This()) core.HResult!*MapTileDataSource {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getDataSource();
    }
    pub fn putDataSource(self: *@This(), value: *MapTileDataSource) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putDataSource(value);
    }
    pub fn getLayer(self: *@This()) core.HResult!MapTileLayer {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getLayer();
    }
    pub fn putLayer(self: *@This(), value: MapTileLayer) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putLayer(value);
    }
    pub fn getZoomLevelRange(self: *@This()) core.HResult!MapZoomLevelRange {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getZoomLevelRange();
    }
    pub fn putZoomLevelRange(self: *@This(), value: MapZoomLevelRange) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putZoomLevelRange(value);
    }
    pub fn getBounds(self: *@This()) core.HResult!*GeoboundingBox {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn putBounds(self: *@This(), value: *GeoboundingBox) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putBounds(value);
    }
    pub fn getAllowOverstretch(self: *@This()) core.HResult!bool {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getAllowOverstretch();
    }
    pub fn putAllowOverstretch(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putAllowOverstretch(value);
    }
    pub fn getIsFadingEnabled(self: *@This()) core.HResult!bool {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getIsFadingEnabled();
    }
    pub fn putIsFadingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putIsFadingEnabled(value);
    }
    pub fn getIsTransparencyEnabled(self: *@This()) core.HResult!bool {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getIsTransparencyEnabled();
    }
    pub fn putIsTransparencyEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putIsTransparencyEnabled(value);
    }
    pub fn getIsRetryEnabled(self: *@This()) core.HResult!bool {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getIsRetryEnabled();
    }
    pub fn putIsRetryEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putIsRetryEnabled(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putZIndex(value);
    }
    pub fn getTilePixelSize(self: *@This()) core.HResult!i32 {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getTilePixelSize();
    }
    pub fn putTilePixelSize(self: *@This(), value: i32) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putTilePixelSize(value);
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.getVisible();
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IMapTileSource = @ptrCast(self);
        return try this.putVisible(value);
    }
    pub fn getAnimationState(self: *@This()) core.HResult!MapTileAnimationState {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAnimationState();
    }
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoPlay();
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoPlay(value);
    }
    pub fn getFrameCount(self: *@This()) core.HResult!i32 {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameCount();
    }
    pub fn putFrameCount(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFrameCount(value);
    }
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameDuration();
    }
    pub fn putFrameDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFrameDuration(value);
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Pause();
    }
    pub fn Play(self: *@This()) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Play();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        var this: ?*IMapTileSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Stop();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAnimationStateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStatics2Cache.get();
        return try factory.getAnimationStateProperty();
    }
    pub fn getAutoPlayProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStatics2Cache.get();
        return try factory.getAutoPlayProperty();
    }
    pub fn getFrameCountProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStatics2Cache.get();
        return try factory.getFrameCountProperty();
    }
    pub fn getFrameDurationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStatics2Cache.get();
        return try factory.getFrameDurationProperty();
    }
    pub fn getDataSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getDataSourceProperty();
    }
    pub fn getLayerProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getLayerProperty();
    }
    pub fn getZoomLevelRangeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getZoomLevelRangeProperty();
    }
    pub fn getBoundsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getBoundsProperty();
    }
    pub fn getAllowOverstretchProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getAllowOverstretchProperty();
    }
    pub fn getIsFadingEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getIsFadingEnabledProperty();
    }
    pub fn getIsTransparencyEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getIsTransparencyEnabledProperty();
    }
    pub fn getIsRetryEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getIsRetryEnabledProperty();
    }
    pub fn getZIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getZIndexProperty();
    }
    pub fn getTilePixelSizeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getTilePixelSizeProperty();
    }
    pub fn getVisibleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IMapTileSourceStaticsCache.get();
        return try factory.getVisibleProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        const factory = @This().IMapTileSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDataSource(dataSource: *MapTileDataSource, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        const factory = @This().IMapTileSourceFactoryCache.get();
        return try factory.CreateInstanceWithDataSource(dataSource, baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDataSourceAndZoomRange(dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        const factory = @This().IMapTileSourceFactoryCache.get();
        return try factory.CreateInstanceWithDataSourceAndZoomRange(dataSource, zoomLevelRange, baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDataSourceZoomRangeAndBounds(dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        const factory = @This().IMapTileSourceFactoryCache.get();
        return try factory.CreateInstanceWithDataSourceZoomRangeAndBounds(dataSource, zoomLevelRange, bounds, baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize(dataSource: *MapTileDataSource, zoomLevelRange: MapZoomLevelRange, bounds: *GeoboundingBox, tileSizeInPixels: i32, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MapTileSource {
        const factory = @This().IMapTileSourceFactoryCache.get();
        return try factory.CreateInstanceWithDataSourceZoomRangeBoundsAndTileSize(dataSource, zoomLevelRange, bounds, tileSizeInPixels, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileSource.GUID;
    pub const IID: Guid = IMapTileSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileSource.SIGNATURE);
    var _IMapTileSourceStatics2Cache: FactoryCache(IMapTileSourceStatics2, RUNTIME_NAME) = .{};
    var _IMapTileSourceStaticsCache: FactoryCache(IMapTileSourceStatics, RUNTIME_NAME) = .{};
    var _IMapTileSourceFactoryCache: FactoryCache(IMapTileSourceFactory, RUNTIME_NAME) = .{};
};
pub const MapTileUriRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IMapTileUriRequest = @ptrCast(self);
        return try this.getUri();
    }
    pub fn putUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IMapTileUriRequest = @ptrCast(self);
        return try this.putUri(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MapTileUriRequestDeferral {
        const this: *IMapTileUriRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileUriRequest.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileUriRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileUriRequest.GUID;
    pub const IID: Guid = IMapTileUriRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileUriRequest.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileUriRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IMapTileUriRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileUriRequestDeferral.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileUriRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileUriRequestDeferral.GUID;
    pub const IID: Guid = IMapTileUriRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileUriRequestDeferral.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapTileUriRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getX(self: *@This()) core.HResult!i32 {
        const this: *IMapTileUriRequestedEventArgs = @ptrCast(self);
        return try this.getX();
    }
    pub fn getY(self: *@This()) core.HResult!i32 {
        const this: *IMapTileUriRequestedEventArgs = @ptrCast(self);
        return try this.getY();
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!i32 {
        const this: *IMapTileUriRequestedEventArgs = @ptrCast(self);
        return try this.getZoomLevel();
    }
    pub fn getRequest(self: *@This()) core.HResult!*MapTileUriRequest {
        const this: *IMapTileUriRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn getFrameIndex(self: *@This()) core.HResult!i32 {
        var this: ?*IMapTileUriRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMapTileUriRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameIndex();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMapTileUriRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.MapTileUriRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapTileUriRequestedEventArgs.GUID;
    pub const IID: Guid = IMapTileUriRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapTileUriRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MapVisibleRegionKind = enum(i32) {
    Near = 0,
    Full = 1,
};
pub const MapWatermarkMode = enum(i32) {
    Automatic = 0,
    On = 1,
};
pub const MapZoomLevelRange = extern struct {
    Min: f64,
    Max: f64,
};
pub const StreetsideExperience = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddressTextVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getAddressTextVisible();
    }
    pub fn putAddressTextVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putAddressTextVisible(value);
    }
    pub fn getCursorVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getCursorVisible();
    }
    pub fn putCursorVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putCursorVisible(value);
    }
    pub fn getOverviewMapVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getOverviewMapVisible();
    }
    pub fn putOverviewMapVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putOverviewMapVisible(value);
    }
    pub fn getStreetLabelsVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getStreetLabelsVisible();
    }
    pub fn putStreetLabelsVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putStreetLabelsVisible(value);
    }
    pub fn getExitButtonVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getExitButtonVisible();
    }
    pub fn putExitButtonVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putExitButtonVisible(value);
    }
    pub fn getZoomButtonsVisible(self: *@This()) core.HResult!bool {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.getZoomButtonsVisible();
    }
    pub fn putZoomButtonsVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IStreetsideExperience = @ptrCast(self);
        return try this.putZoomButtonsVisible(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithPanorama(panorama: *StreetsidePanorama) core.HResult!*StreetsideExperience {
        const factory = @This().IStreetsideExperienceFactoryCache.get();
        return try factory.CreateInstanceWithPanorama(panorama);
    }
    pub fn CreateInstanceWithPanoramaHeadingPitchAndFieldOfView(panorama: *StreetsidePanorama, headingInDegrees: f64, pitchInDegrees: f64, fieldOfViewInDegrees: f64) core.HResult!*StreetsideExperience {
        const factory = @This().IStreetsideExperienceFactoryCache.get();
        return try factory.CreateInstanceWithPanoramaHeadingPitchAndFieldOfView(panorama, headingInDegrees, pitchInDegrees, fieldOfViewInDegrees);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.StreetsideExperience";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreetsideExperience.GUID;
    pub const IID: Guid = IStreetsideExperience.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreetsideExperience.SIGNATURE);
    var _IStreetsideExperienceFactoryCache: FactoryCache(IStreetsideExperienceFactory, RUNTIME_NAME) = .{};
};
pub const StreetsidePanorama = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocation(self: *@This()) core.HResult!*Geopoint {
        const this: *IStreetsidePanorama = @ptrCast(self);
        return try this.getLocation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindNearbyAsync(location: *Geopoint) core.HResult!*IAsyncOperation(StreetsidePanorama) {
        const factory = @This().IStreetsidePanoramaStaticsCache.get();
        return try factory.FindNearbyAsync(location);
    }
    pub fn FindNearbyAsync(location: *Geopoint, radiusInMeters: f64) core.HResult!*IAsyncOperation(StreetsidePanorama) {
        const factory = @This().IStreetsidePanoramaStaticsCache.get();
        return try factory.FindNearbyAsync(location, radiusInMeters);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Maps.StreetsidePanorama";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStreetsidePanorama.GUID;
    pub const IID: Guid = IStreetsidePanorama.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStreetsidePanorama.SIGNATURE);
    var _IStreetsidePanoramaStaticsCache: FactoryCache(IStreetsidePanoramaStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const IMapView = @import("../../../Foundation/Collections.zig").IMapView;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const Uri = @import("../../../Foundation.zig").Uri;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../../Foundation.zig").IReference;
const Point = @import("../../../Foundation.zig").Point;
const IRandomAccessStreamReference = @import("../../../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const Vector3 = @import("../../../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../../../Foundation.zig").TimeSpan;
const LocalLocation = @import("../../../Services/Maps/LocalSearch.zig").LocalLocation;
const Geopoint = @import("../../../Devices/Geolocation.zig").Geopoint;
const Thickness = @import("../../Xaml.zig").Thickness;
const Geopath = @import("../../../Devices/Geolocation.zig").Geopath;
const DataTemplate = @import("../../Xaml.zig").DataTemplate;
const Guid = @import("../../../root.zig").Guid;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const DependencyObject = @import("../../Xaml.zig").DependencyObject;
const HRESULT = @import("../../../root.zig").HRESULT;
const GeoboundingBox = @import("../../../Devices/Geolocation.zig").GeoboundingBox;
const MapRoute = @import("../../../Services/Maps.zig").MapRoute;
const AltitudeReferenceSystem = @import("../../../Devices/Geolocation.zig").AltitudeReferenceSystem;
const IMap = @import("../../../Foundation/Collections.zig").IMap;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
const Color = @import("../../../UI.zig").Color;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
