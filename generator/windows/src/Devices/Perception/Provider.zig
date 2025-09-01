pub const IKnownPerceptionFrameKindStatics = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDepth(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Depth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInfrared(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Infrared(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IKnownPerceptionFrameKindStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ae651d6-9669-4106-9fae-4835c1b96104";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Depth: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Infrared: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionControlGroup = extern struct {
    vtable: *const VTable,
    pub fn getFrameProviderIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_FrameProviderIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionControlGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "172c4882-2fd9-4c4e-ba34-fdf20a73dde5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameProviderIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionControlGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), ids: *IIterable(HSTRING)) core.HResult!*PerceptionControlGroup {
        var _r: *PerceptionControlGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), ids, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionControlGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f1af2e0-baf1-453b-bed4-cd9d4619154c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, ids: *IIterable(HSTRING), _r: **PerceptionControlGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionCorrelation = extern struct {
    vtable: *const VTable,
    pub fn getTargetId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionCorrelation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4131a82-dff5-4047-8a19-3b4d805f7176";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionCorrelationFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), targetId: HSTRING, position: Vector3, orientation: Quaternion) core.HResult!*PerceptionCorrelation {
        var _r: *PerceptionCorrelation = undefined;
        const _c = self.vtable.Create(@ptrCast(self), targetId, position, orientation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionCorrelationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4a6c425-2884-4a8f-8134-2835d7286cbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, targetId: HSTRING, position: Vector3, orientation: Quaternion, _r: **PerceptionCorrelation) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionCorrelationGroup = extern struct {
    vtable: *const VTable,
    pub fn getRelativeLocations(self: *@This()) core.HResult!*IVectorView(PerceptionCorrelation) {
        var _r: *IVectorView(PerceptionCorrelation) = undefined;
        const _c = self.vtable.get_RelativeLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionCorrelationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "752a0906-36a7-47bb-9b79-56cc6b746770";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativeLocations: *const fn(self: *anyopaque, _r: **IVectorView(PerceptionCorrelation)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionCorrelationGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), relativeLocations: *IIterable(PerceptionCorrelation)) core.HResult!*PerceptionCorrelationGroup {
        var _r: *PerceptionCorrelationGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), relativeLocations, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionCorrelationGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7dfe2088-63df-48ed-83b1-4ab829132995";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, relativeLocations: *IIterable(PerceptionCorrelation), _r: **PerceptionCorrelationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFaceAuthenticationGroup = extern struct {
    vtable: *const VTable,
    pub fn getFrameProviderIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_FrameProviderIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8019814-4a91-41b0-83a6-881a1775353e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameProviderIds: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFaceAuthenticationGroupFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), ids: *IIterable(HSTRING), startHandler: *PerceptionStartFaceAuthenticationHandler, stopHandler: *PerceptionStopFaceAuthenticationHandler) core.HResult!*PerceptionFaceAuthenticationGroup {
        var _r: *PerceptionFaceAuthenticationGroup = undefined;
        const _c = self.vtable.Create(@ptrCast(self), ids, startHandler, stopHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFaceAuthenticationGroupFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e68a05d4-b60c-40f4-bcb9-f24d46467320";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, ids: *IIterable(HSTRING), startHandler: *PerceptionStartFaceAuthenticationHandler, stopHandler: *PerceptionStopFaceAuthenticationHandler, _r: **PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrame = extern struct {
    vtable: *const VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_RelativeTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameData(self: *@This()) core.HResult!*IMemoryBuffer {
        var _r: *IMemoryBuffer = undefined;
        const _c = self.vtable.get_FrameData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cfe7825-54bb-4d9d-bec5-8ef66151d2ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativeTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_RelativeTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_FrameData: *const fn(self: *anyopaque, _r: **IMemoryBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameProvider = extern struct {
    vtable: *const VTable,
    pub fn getFrameProviderInfo(self: *@This()) core.HResult!*PerceptionFrameProviderInfo {
        var _r: *PerceptionFrameProviderInfo = undefined;
        const _c = self.vtable.get_FrameProviderInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Available(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
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
    pub fn SetProperty(self: *@This(), value: *PerceptionPropertyChangeRequest) core.HResult!void {
        const _c = self.vtable.SetProperty(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFrameProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "794f7ab9-b37d-3b33-a10d-30626419ce65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameProviderInfo: *const fn(self: *anyopaque, _r: **PerceptionFrameProviderInfo) callconv(.winapi) HRESULT,
        get_Available: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetProperty: *const fn(self: *anyopaque, value: *PerceptionPropertyChangeRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameProviderInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeviceKind(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DeviceKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFrameKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FrameKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrameKind(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FrameKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHidden(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Hidden(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHidden(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Hidden(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFrameProviderInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cca959e8-797e-4e83-9b87-036a74142fc4";
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
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DeviceKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DeviceKind: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FrameKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FrameKind: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Hidden: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Hidden: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameProviderManager = extern struct {
    vtable: *const VTable,
    pub fn GetFrameProvider(self: *@This(), frameProviderInfo: *PerceptionFrameProviderInfo) core.HResult!*IPerceptionFrameProvider {
        var _r: *IPerceptionFrameProvider = undefined;
        const _c = self.vtable.GetFrameProvider(@ptrCast(self), frameProviderInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFrameProviderManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a959ce07-ead3-33df-8ec1-b924abe019c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFrameProvider: *const fn(self: *anyopaque, frameProviderInfo: *PerceptionFrameProviderInfo, _r: **IPerceptionFrameProvider) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionFrameProviderManagerServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn RegisterFrameProviderInfo(self: *@This(), manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) core.HResult!void {
        const _c = self.vtable.RegisterFrameProviderInfo(@ptrCast(self), manager, frameProviderInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterFrameProviderInfo(self: *@This(), manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) core.HResult!void {
        const _c = self.vtable.UnregisterFrameProviderInfo(@ptrCast(self), manager, frameProviderInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterFaceAuthenticationGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) core.HResult!void {
        const _c = self.vtable.RegisterFaceAuthenticationGroup(@ptrCast(self), manager, faceAuthenticationGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterFaceAuthenticationGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) core.HResult!void {
        const _c = self.vtable.UnregisterFaceAuthenticationGroup(@ptrCast(self), manager, faceAuthenticationGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterControlGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) core.HResult!void {
        const _c = self.vtable.RegisterControlGroup(@ptrCast(self), manager, controlGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterControlGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) core.HResult!void {
        const _c = self.vtable.UnregisterControlGroup(@ptrCast(self), manager, controlGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterCorrelationGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) core.HResult!void {
        const _c = self.vtable.RegisterCorrelationGroup(@ptrCast(self), manager, correlationGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterCorrelationGroup(self: *@This(), manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) core.HResult!void {
        const _c = self.vtable.UnregisterCorrelationGroup(@ptrCast(self), manager, correlationGroup);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateAvailabilityForProvider(self: *@This(), provider: *IPerceptionFrameProvider, available: bool) core.HResult!void {
        const _c = self.vtable.UpdateAvailabilityForProvider(@ptrCast(self), provider, available);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PublishFrameForProvider(self: *@This(), provider: *IPerceptionFrameProvider, frame: *PerceptionFrame) core.HResult!void {
        const _c = self.vtable.PublishFrameForProvider(@ptrCast(self), provider, frame);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionFrameProviderManagerServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae8386e6-cad9-4359-8f96-8eae51810526";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterFrameProviderInfo: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) callconv(.winapi) HRESULT,
        UnregisterFrameProviderInfo: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) callconv(.winapi) HRESULT,
        RegisterFaceAuthenticationGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT,
        UnregisterFaceAuthenticationGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT,
        RegisterControlGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) callconv(.winapi) HRESULT,
        UnregisterControlGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) callconv(.winapi) HRESULT,
        RegisterCorrelationGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) callconv(.winapi) HRESULT,
        UnregisterCorrelationGroup: *const fn(self: *anyopaque, manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) callconv(.winapi) HRESULT,
        UpdateAvailabilityForProvider: *const fn(self: *anyopaque, provider: *IPerceptionFrameProvider, available: bool) callconv(.winapi) HRESULT,
        PublishFrameForProvider: *const fn(self: *anyopaque, provider: *IPerceptionFrameProvider, frame: *PerceptionFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionPropertyChangeRequest = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!PerceptionFrameSourcePropertyChangeStatus {
        var _r: PerceptionFrameSourcePropertyChangeStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStatus(self: *@This(), value: PerceptionFrameSourcePropertyChangeStatus) core.HResult!void {
        const _c = self.vtable.put_Status(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionPropertyChangeRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c5aeb51-350b-4df8-9414-59e09815510b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PerceptionFrameSourcePropertyChangeStatus) callconv(.winapi) HRESULT,
        put_Status: *const fn(self: *anyopaque, value: PerceptionFrameSourcePropertyChangeStatus) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionVideoFrameAllocator = extern struct {
    vtable: *const VTable,
    pub fn AllocateFrame(self: *@This()) core.HResult!*PerceptionFrame {
        var _r: *PerceptionFrame = undefined;
        const _c = self.vtable.AllocateFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyFromVideoFrame(self: *@This(), frame: *VideoFrame) core.HResult!*PerceptionFrame {
        var _r: *PerceptionFrame = undefined;
        const _c = self.vtable.CopyFromVideoFrame(@ptrCast(self), frame, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c38a7da-fdd8-4ed4-a039-2a6f9b235038";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AllocateFrame: *const fn(self: *anyopaque, _r: **PerceptionFrame) callconv(.winapi) HRESULT,
        CopyFromVideoFrame: *const fn(self: *anyopaque, frame: *VideoFrame, _r: **PerceptionFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPerceptionVideoFrameAllocatorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), maxOutstandingFrameCountForWrite: u32, format: BitmapPixelFormat, resolution: Size, alpha: BitmapAlphaMode) core.HResult!*PerceptionVideoFrameAllocator {
        var _r: *PerceptionVideoFrameAllocator = undefined;
        const _c = self.vtable.Create(@ptrCast(self), maxOutstandingFrameCountForWrite, format, resolution, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.IPerceptionVideoFrameAllocatorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a58b0e1-e91a-481e-b876-a89e2bbc6b33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, maxOutstandingFrameCountForWrite: u32, format: BitmapPixelFormat, resolution: Size, alpha: BitmapAlphaMode, _r: **PerceptionVideoFrameAllocator) callconv(.winapi) HRESULT,
    };
};
pub const KnownPerceptionFrameKind = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getColor() core.HResult!HSTRING {
        const _f = @This().IKnownPerceptionFrameKindStaticsCache.get();
        return try _f.getColor();
    }
    pub fn getDepth() core.HResult!HSTRING {
        const _f = @This().IKnownPerceptionFrameKindStaticsCache.get();
        return try _f.getDepth();
    }
    pub fn getInfrared() core.HResult!HSTRING {
        const _f = @This().IKnownPerceptionFrameKindStaticsCache.get();
        return try _f.getInfrared();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.KnownPerceptionFrameKind";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownPerceptionFrameKindStaticsCache: FactoryCache(IKnownPerceptionFrameKindStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionControlGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameProviderIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPerceptionControlGroup = @ptrCast(self);
        return try this.getFrameProviderIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(ids: *IIterable(HSTRING)) core.HResult!*PerceptionControlGroup {
        const _f = @This().IPerceptionControlGroupFactoryCache.get();
        return try _f.Create(ids);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionControlGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionControlGroup.GUID;
    pub const IID: Guid = IPerceptionControlGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionControlGroup.SIGNATURE);
    var _IPerceptionControlGroupFactoryCache: FactoryCache(IPerceptionControlGroupFactory, RUNTIME_NAME) = .{};
};
pub const PerceptionCorrelation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetId(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionCorrelation = @ptrCast(self);
        return try this.getTargetId();
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *IPerceptionCorrelation = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *IPerceptionCorrelation = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(targetId: HSTRING, position: Vector3, orientation: Quaternion) core.HResult!*PerceptionCorrelation {
        const _f = @This().IPerceptionCorrelationFactoryCache.get();
        return try _f.Create(targetId, position, orientation);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionCorrelation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionCorrelation.GUID;
    pub const IID: Guid = IPerceptionCorrelation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionCorrelation.SIGNATURE);
    var _IPerceptionCorrelationFactoryCache: FactoryCache(IPerceptionCorrelationFactory, RUNTIME_NAME) = .{};
};
pub const PerceptionCorrelationGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativeLocations(self: *@This()) core.HResult!*IVectorView(PerceptionCorrelation) {
        const this: *IPerceptionCorrelationGroup = @ptrCast(self);
        return try this.getRelativeLocations();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(relativeLocations: *IIterable(PerceptionCorrelation)) core.HResult!*PerceptionCorrelationGroup {
        const _f = @This().IPerceptionCorrelationGroupFactoryCache.get();
        return try _f.Create(relativeLocations);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionCorrelationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionCorrelationGroup.GUID;
    pub const IID: Guid = IPerceptionCorrelationGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionCorrelationGroup.SIGNATURE);
    var _IPerceptionCorrelationGroupFactoryCache: FactoryCache(IPerceptionCorrelationGroupFactory, RUNTIME_NAME) = .{};
};
pub const PerceptionFaceAuthenticationGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameProviderIds(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPerceptionFaceAuthenticationGroup = @ptrCast(self);
        return try this.getFrameProviderIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(ids: *IIterable(HSTRING), startHandler: *PerceptionStartFaceAuthenticationHandler, stopHandler: *PerceptionStopFaceAuthenticationHandler) core.HResult!*PerceptionFaceAuthenticationGroup {
        const _f = @This().IPerceptionFaceAuthenticationGroupFactoryCache.get();
        return try _f.Create(ids, startHandler, stopHandler);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionFaceAuthenticationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionFaceAuthenticationGroup.GUID;
    pub const IID: Guid = IPerceptionFaceAuthenticationGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionFaceAuthenticationGroup.SIGNATURE);
    var _IPerceptionFaceAuthenticationGroupFactoryCache: FactoryCache(IPerceptionFaceAuthenticationGroupFactory, RUNTIME_NAME) = .{};
};
pub const PerceptionFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativeTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IPerceptionFrame = @ptrCast(self);
        return try this.getRelativeTime();
    }
    pub fn putRelativeTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IPerceptionFrame = @ptrCast(self);
        return try this.putRelativeTime(value);
    }
    pub fn getProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IPerceptionFrame = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getFrameData(self: *@This()) core.HResult!*IMemoryBuffer {
        const this: *IPerceptionFrame = @ptrCast(self);
        return try this.getFrameData();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionFrame.GUID;
    pub const IID: Guid = IPerceptionFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionFrame.SIGNATURE);
};
pub const PerceptionFrameProviderInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.putId(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getDeviceKind(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.getDeviceKind();
    }
    pub fn putDeviceKind(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.putDeviceKind(value);
    }
    pub fn getFrameKind(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.getFrameKind();
    }
    pub fn putFrameKind(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.putFrameKind(value);
    }
    pub fn getHidden(self: *@This()) core.HResult!bool {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.getHidden();
    }
    pub fn putHidden(self: *@This(), value: bool) core.HResult!void {
        const this: *IPerceptionFrameProviderInfo = @ptrCast(self);
        return try this.putHidden(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPerceptionFrameProviderInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionFrameProviderInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionFrameProviderInfo.GUID;
    pub const IID: Guid = IPerceptionFrameProviderInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionFrameProviderInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PerceptionFrameProviderManagerService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RegisterFrameProviderInfo(manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.RegisterFrameProviderInfo(manager, frameProviderInfo);
    }
    pub fn UnregisterFrameProviderInfo(manager: *IPerceptionFrameProviderManager, frameProviderInfo: *PerceptionFrameProviderInfo) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.UnregisterFrameProviderInfo(manager, frameProviderInfo);
    }
    pub fn RegisterFaceAuthenticationGroup(manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.RegisterFaceAuthenticationGroup(manager, faceAuthenticationGroup);
    }
    pub fn UnregisterFaceAuthenticationGroup(manager: *IPerceptionFrameProviderManager, faceAuthenticationGroup: *PerceptionFaceAuthenticationGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.UnregisterFaceAuthenticationGroup(manager, faceAuthenticationGroup);
    }
    pub fn RegisterControlGroup(manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.RegisterControlGroup(manager, controlGroup);
    }
    pub fn UnregisterControlGroup(manager: *IPerceptionFrameProviderManager, controlGroup: *PerceptionControlGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.UnregisterControlGroup(manager, controlGroup);
    }
    pub fn RegisterCorrelationGroup(manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.RegisterCorrelationGroup(manager, correlationGroup);
    }
    pub fn UnregisterCorrelationGroup(manager: *IPerceptionFrameProviderManager, correlationGroup: *PerceptionCorrelationGroup) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.UnregisterCorrelationGroup(manager, correlationGroup);
    }
    pub fn UpdateAvailabilityForProvider(provider: *IPerceptionFrameProvider, available: bool) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.UpdateAvailabilityForProvider(provider, available);
    }
    pub fn PublishFrameForProvider(provider: *IPerceptionFrameProvider, frame: *PerceptionFrame) core.HResult!void {
        const _f = @This().IPerceptionFrameProviderManagerServiceStaticsCache.get();
        return try _f.PublishFrameForProvider(provider, frame);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionFrameProviderManagerService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPerceptionFrameProviderManagerServiceStaticsCache: FactoryCache(IPerceptionFrameProviderManagerServiceStatics, RUNTIME_NAME) = .{};
};
pub const PerceptionPropertyChangeRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IPerceptionPropertyChangeRequest = @ptrCast(self);
        return try this.getName();
    }
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IPerceptionPropertyChangeRequest = @ptrCast(self);
        return try this.getValue();
    }
    pub fn getStatus(self: *@This()) core.HResult!PerceptionFrameSourcePropertyChangeStatus {
        const this: *IPerceptionPropertyChangeRequest = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn putStatus(self: *@This(), value: PerceptionFrameSourcePropertyChangeStatus) core.HResult!void {
        const this: *IPerceptionPropertyChangeRequest = @ptrCast(self);
        return try this.putStatus(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IPerceptionPropertyChangeRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionPropertyChangeRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionPropertyChangeRequest.GUID;
    pub const IID: Guid = IPerceptionPropertyChangeRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionPropertyChangeRequest.SIGNATURE);
};
pub const PerceptionStartFaceAuthenticationHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionStartFaceAuthenticationHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74816d2a-2090-4670-8c48-ef39e7ff7c26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *PerceptionFaceAuthenticationGroup, _r: *bool) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PerceptionStopFaceAuthenticationHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionStopFaceAuthenticationHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "387ee6aa-89cd-481e-aade-dd92f70b2ad7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *PerceptionFaceAuthenticationGroup) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PerceptionVideoFrameAllocator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AllocateFrame(self: *@This()) core.HResult!*PerceptionFrame {
        const this: *IPerceptionVideoFrameAllocator = @ptrCast(self);
        return try this.AllocateFrame();
    }
    pub fn CopyFromVideoFrame(self: *@This(), frame: *VideoFrame) core.HResult!*PerceptionFrame {
        const this: *IPerceptionVideoFrameAllocator = @ptrCast(self);
        return try this.CopyFromVideoFrame(frame);
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
    pub fn Create(maxOutstandingFrameCountForWrite: u32, format: BitmapPixelFormat, resolution: Size, alpha: BitmapAlphaMode) core.HResult!*PerceptionVideoFrameAllocator {
        const _f = @This().IPerceptionVideoFrameAllocatorFactoryCache.get();
        return try _f.Create(maxOutstandingFrameCountForWrite, format, resolution, alpha);
    }
    pub const NAME: []const u8 = "Windows.Devices.Perception.Provider.PerceptionVideoFrameAllocator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPerceptionVideoFrameAllocator.GUID;
    pub const IID: Guid = IPerceptionVideoFrameAllocator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPerceptionVideoFrameAllocator.SIGNATURE);
    var _IPerceptionVideoFrameAllocatorFactoryCache: FactoryCache(IPerceptionVideoFrameAllocatorFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../../Foundation.zig").Deferral;
const VideoFrame = @import("../../Media.zig").VideoFrame;
const Size = @import("../../Foundation.zig").Size;
const IMemoryBuffer = @import("../../Foundation.zig").IMemoryBuffer;
const FactoryCache = @import("../../core.zig").FactoryCache;
const ValueSet = @import("../../Foundation/Collections.zig").ValueSet;
const TrustLevel = @import("../../root.zig").TrustLevel;
const BitmapPixelFormat = @import("../../Graphics/Imaging.zig").BitmapPixelFormat;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IAgileObject = @import("../../root.zig").IAgileObject;
const PerceptionFrameSourcePropertyChangeStatus = @import("../Perception.zig").PerceptionFrameSourcePropertyChangeStatus;
const Quaternion = @import("../../Foundation/Numerics.zig").Quaternion;
const BitmapAlphaMode = @import("../../Graphics/Imaging.zig").BitmapAlphaMode;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IPropertySet = @import("../../Foundation/Collections.zig").IPropertySet;
