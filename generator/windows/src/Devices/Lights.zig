pub const ILamp = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BrightnessLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrightnessLevel(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BrightnessLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsColorSettable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsColorSettable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(Lamp,LampAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailabilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailabilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILamp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "047d5b9a-ea45-4b2b-b1a2-14dff00bde7b";
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
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BrightnessLevel: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BrightnessLevel: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_IsColorSettable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        add_AvailabilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(Lamp,LampAvailabilityChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailabilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILampArray = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareVendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareVersion(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_HardwareVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLampArrayKind(self: *@This()) core.HResult!LampArrayKind {
        var _r: LampArrayKind = undefined;
        const _c = self.vtable.get_LampArrayKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLampCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_LampCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinUpdateInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_BoundingBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BrightnessLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrightnessLevel(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_BrightnessLevel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsVirtualKeys(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsVirtualKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLampInfo(self: *@This(), lampIndex: i32) core.HResult!*LampInfo {
        var _r: *LampInfo = undefined;
        const _c = self.vtable.GetLampInfo(@ptrCast(self), lampIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIndicesForKey(self: *@This(), key: VirtualKey) core.HResult![*]i32 {
        var _r: [*]i32 = undefined;
        const _c = self.vtable.GetIndicesForKey(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIndicesForPurposes(self: *@This(), purposes: LampPurposes) core.HResult![*]i32 {
        var _r: [*]i32 = undefined;
        const _c = self.vtable.GetIndicesForPurposes(@ptrCast(self), purposes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetColor(self: *@This(), desiredColor: Color) core.HResult!void {
        const _c = self.vtable.SetColor(@ptrCast(self), desiredColor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorForIndex(self: *@This(), lampIndex: i32, desiredColor: Color) core.HResult!void {
        const _c = self.vtable.SetColorForIndex(@ptrCast(self), lampIndex, desiredColor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSingleColorForIndices(self: *@This(), desiredColor: Color, lampIndexes: [*]i32) core.HResult!void {
        const _c = self.vtable.SetSingleColorForIndices(@ptrCast(self), desiredColor, lampIndexes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorsForIndices(self: *@This(), desiredColors: [*]Color, lampIndexes: [*]i32) core.HResult!void {
        const _c = self.vtable.SetColorsForIndices(@ptrCast(self), desiredColors, lampIndexes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorsForKey(self: *@This(), desiredColor: Color, key: VirtualKey) core.HResult!void {
        const _c = self.vtable.SetColorsForKey(@ptrCast(self), desiredColor, key);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorsForKeys(self: *@This(), desiredColors: [*]Color, keys: [*]VirtualKey) core.HResult!void {
        const _c = self.vtable.SetColorsForKeys(@ptrCast(self), desiredColors, keys);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorsForPurposes(self: *@This(), desiredColor: Color, purposes: LampPurposes) core.HResult!void {
        const _c = self.vtable.SetColorsForPurposes(@ptrCast(self), desiredColor, purposes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendMessageAsync(self: *@This(), messageId: i32, message: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SendMessageAsync(@ptrCast(self), messageId, message, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestMessageAsync(self: *@This(), messageId: i32) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.RequestMessageAsync(@ptrCast(self), messageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ace9787-c8a0-4e95-a1e0-d58676538649";
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
        get_HardwareVendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HardwareProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_HardwareVersion: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_LampArrayKind: *const fn(self: *anyopaque, _r: *LampArrayKind) callconv(.winapi) HRESULT,
        get_LampCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_MinUpdateInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_BoundingBox: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BrightnessLevel: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_BrightnessLevel: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IsConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportsVirtualKeys: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetLampInfo: *const fn(self: *anyopaque, lampIndex: i32, _r: **LampInfo) callconv(.winapi) HRESULT,
        GetIndicesForKey: *const fn(self: *anyopaque, key: VirtualKey, _r: *[*]i32) callconv(.winapi) HRESULT,
        GetIndicesForPurposes: *const fn(self: *anyopaque, purposes: LampPurposes, _r: *[*]i32) callconv(.winapi) HRESULT,
        SetColor: *const fn(self: *anyopaque, desiredColor: Color) callconv(.winapi) HRESULT,
        SetColorForIndex: *const fn(self: *anyopaque, lampIndex: i32, desiredColor: Color) callconv(.winapi) HRESULT,
        SetSingleColorForIndices: *const fn(self: *anyopaque, desiredColor: Color, lampIndexes: [*]i32) callconv(.winapi) HRESULT,
        SetColorsForIndices: *const fn(self: *anyopaque, desiredColors: [*]Color, lampIndexes: [*]i32) callconv(.winapi) HRESULT,
        SetColorsForKey: *const fn(self: *anyopaque, desiredColor: Color, key: VirtualKey) callconv(.winapi) HRESULT,
        SetColorsForKeys: *const fn(self: *anyopaque, desiredColors: [*]Color, keys: [*]VirtualKey) callconv(.winapi) HRESULT,
        SetColorsForPurposes: *const fn(self: *anyopaque, desiredColor: Color, purposes: LampPurposes) callconv(.winapi) HRESULT,
        SendMessageAsync: *const fn(self: *anyopaque, messageId: i32, message: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestMessageAsync: *const fn(self: *anyopaque, messageId: i32, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const ILampArray2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(LampArray,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AvailabilityChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AvailabilityChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampArray2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "050c181f-60a8-4711-a1af-1b1b4c658ea2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_AvailabilityChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(LampArray,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AvailabilityChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILampArrayStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(LampArray) {
        var _r: *IAsyncOperation(LampArray) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampArrayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bb8c98d-5fc1-452d-bb1f-4ad410d398ff";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(LampArray)) callconv(.winapi) HRESULT,
    };
};
pub const ILampAvailabilityChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f6e3ded-07a2-499d-9260-67e304532ba4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILampInfo = extern struct {
    vtable: *const VTable,
    pub fn getIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Index(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPurposes(self: *@This()) core.HResult!LampPurposes {
        var _r: LampPurposes = undefined;
        const _c = self.vtable.get_Purposes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedLevelCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RedLevelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGreenLevelCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_GreenLevelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBlueLevelCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_BlueLevelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGainLevelCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_GainLevelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFixedColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_FixedColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNearestSupportedColor(self: *@This(), desiredColor: Color) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.GetNearestSupportedColor(@ptrCast(self), desiredColor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateLatency(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_UpdateLatency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30bb521c-0acf-49da-8c10-150b9cf62713";
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
        get_Purposes: *const fn(self: *anyopaque, _r: *LampPurposes) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_RedLevelCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_GreenLevelCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_BlueLevelCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_GainLevelCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_FixedColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        GetNearestSupportedColor: *const fn(self: *anyopaque, desiredColor: Color, _r: *Color) callconv(.winapi) HRESULT,
        get_UpdateLatency: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ILampStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(Lamp) {
        var _r: *IAsyncOperation(Lamp) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(Lamp) {
        var _r: *IAsyncOperation(Lamp) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.ILampStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a822416c-8885-401e-b821-8e8b38a8e8ec";
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
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(Lamp)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Lamp)) callconv(.winapi) HRESULT,
    };
};
pub const Lamp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ILamp = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *ILamp = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILamp = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f32 {
        const this: *ILamp = @ptrCast(self);
        return try this.getBrightnessLevel();
    }
    pub fn putBrightnessLevel(self: *@This(), value: f32) core.HResult!void {
        const this: *ILamp = @ptrCast(self);
        return try this.putBrightnessLevel(value);
    }
    pub fn getIsColorSettable(self: *@This()) core.HResult!bool {
        const this: *ILamp = @ptrCast(self);
        return try this.getIsColorSettable();
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ILamp = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ILamp = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(Lamp,LampAvailabilityChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILamp = @ptrCast(self);
        return try this.addAvailabilityChanged(handler);
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILamp = @ptrCast(self);
        return try this.removeAvailabilityChanged(token);
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ILampStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(Lamp) {
        const factory = @This().ILampStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(Lamp) {
        const factory = @This().ILampStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.Lamp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILamp.GUID;
    pub const IID: Guid = ILamp.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILamp.SIGNATURE);
    var _ILampStaticsCache: FactoryCache(ILampStatics, RUNTIME_NAME) = .{};
};
pub const LampArray = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ILampArray = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getHardwareVendorId(self: *@This()) core.HResult!u16 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getHardwareVendorId();
    }
    pub fn getHardwareProductId(self: *@This()) core.HResult!u16 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getHardwareProductId();
    }
    pub fn getHardwareVersion(self: *@This()) core.HResult!u16 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getHardwareVersion();
    }
    pub fn getLampArrayKind(self: *@This()) core.HResult!LampArrayKind {
        const this: *ILampArray = @ptrCast(self);
        return try this.getLampArrayKind();
    }
    pub fn getLampCount(self: *@This()) core.HResult!i32 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getLampCount();
    }
    pub fn getMinUpdateInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampArray = @ptrCast(self);
        return try this.getMinUpdateInterval();
    }
    pub fn getBoundingBox(self: *@This()) core.HResult!Vector3 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getBoundingBox();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *ILampArray = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getBrightnessLevel(self: *@This()) core.HResult!f64 {
        const this: *ILampArray = @ptrCast(self);
        return try this.getBrightnessLevel();
    }
    pub fn putBrightnessLevel(self: *@This(), value: f64) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.putBrightnessLevel(value);
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        const this: *ILampArray = @ptrCast(self);
        return try this.getIsConnected();
    }
    pub fn getSupportsVirtualKeys(self: *@This()) core.HResult!bool {
        const this: *ILampArray = @ptrCast(self);
        return try this.getSupportsVirtualKeys();
    }
    pub fn GetLampInfo(self: *@This(), lampIndex: i32) core.HResult!*LampInfo {
        const this: *ILampArray = @ptrCast(self);
        return try this.GetLampInfo(lampIndex);
    }
    pub fn GetIndicesForKey(self: *@This(), key: VirtualKey) core.HResult![*]i32 {
        const this: *ILampArray = @ptrCast(self);
        return try this.GetIndicesForKey(key);
    }
    pub fn GetIndicesForPurposes(self: *@This(), purposes: LampPurposes) core.HResult![*]i32 {
        const this: *ILampArray = @ptrCast(self);
        return try this.GetIndicesForPurposes(purposes);
    }
    pub fn SetColor(self: *@This(), desiredColor: Color) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColor(desiredColor);
    }
    pub fn SetColorForIndex(self: *@This(), lampIndex: i32, desiredColor: Color) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColorForIndex(lampIndex, desiredColor);
    }
    pub fn SetSingleColorForIndices(self: *@This(), desiredColor: Color, lampIndexes: [*]i32) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetSingleColorForIndices(desiredColor, lampIndexes);
    }
    pub fn SetColorsForIndices(self: *@This(), desiredColors: [*]Color, lampIndexes: [*]i32) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColorsForIndices(desiredColors, lampIndexes);
    }
    pub fn SetColorsForKey(self: *@This(), desiredColor: Color, key: VirtualKey) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColorsForKey(desiredColor, key);
    }
    pub fn SetColorsForKeys(self: *@This(), desiredColors: [*]Color, keys: [*]VirtualKey) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColorsForKeys(desiredColors, keys);
    }
    pub fn SetColorsForPurposes(self: *@This(), desiredColor: Color, purposes: LampPurposes) core.HResult!void {
        const this: *ILampArray = @ptrCast(self);
        return try this.SetColorsForPurposes(desiredColor, purposes);
    }
    pub fn SendMessageAsync(self: *@This(), messageId: i32, message: *IBuffer) core.HResult!*IAsyncAction {
        const this: *ILampArray = @ptrCast(self);
        return try this.SendMessageAsync(messageId, message);
    }
    pub fn RequestMessageAsync(self: *@This(), messageId: i32) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *ILampArray = @ptrCast(self);
        return try this.RequestMessageAsync(messageId);
    }
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var this: ?*ILampArray2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArray2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAvailable();
    }
    pub fn addAvailabilityChanged(self: *@This(), handler: *TypedEventHandler(LampArray,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ILampArray2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArray2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAvailabilityChanged(handler);
    }
    pub fn removeAvailabilityChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ILampArray2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILampArray2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAvailabilityChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ILampArrayStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(LampArray) {
        const factory = @This().ILampArrayStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.LampArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampArray.GUID;
    pub const IID: Guid = ILampArray.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampArray.SIGNATURE);
    var _ILampArrayStaticsCache: FactoryCache(ILampArrayStatics, RUNTIME_NAME) = .{};
};
pub const LampArrayKind = enum(i32) {
    Undefined = 0,
    Keyboard = 1,
    Mouse = 2,
    GameController = 3,
    Peripheral = 4,
    Scene = 5,
    Notification = 6,
    Chassis = 7,
    Wearable = 8,
    Furniture = 9,
    Art = 10,
    Headset = 11,
    Microphone = 12,
    Speaker = 13,
};
pub const LampAvailabilityChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        const this: *ILampAvailabilityChangedEventArgs = @ptrCast(self);
        return try this.getIsAvailable();
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.LampAvailabilityChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampAvailabilityChangedEventArgs.GUID;
    pub const IID: Guid = ILampAvailabilityChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampAvailabilityChangedEventArgs.SIGNATURE);
};
pub const LampInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIndex(self: *@This()) core.HResult!i32 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getIndex();
    }
    pub fn getPurposes(self: *@This()) core.HResult!LampPurposes {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getPurposes();
    }
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getRedLevelCount(self: *@This()) core.HResult!i32 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getRedLevelCount();
    }
    pub fn getGreenLevelCount(self: *@This()) core.HResult!i32 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getGreenLevelCount();
    }
    pub fn getBlueLevelCount(self: *@This()) core.HResult!i32 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getBlueLevelCount();
    }
    pub fn getGainLevelCount(self: *@This()) core.HResult!i32 {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getGainLevelCount();
    }
    pub fn getFixedColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getFixedColor();
    }
    pub fn GetNearestSupportedColor(self: *@This(), desiredColor: Color) core.HResult!Color {
        const this: *ILampInfo = @ptrCast(self);
        return try this.GetNearestSupportedColor(desiredColor);
    }
    pub fn getUpdateLatency(self: *@This()) core.HResult!TimeSpan {
        const this: *ILampInfo = @ptrCast(self);
        return try this.getUpdateLatency();
    }
    pub const NAME: []const u8 = "Windows.Devices.Lights.LampInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILampInfo.GUID;
    pub const IID: Guid = ILampInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILampInfo.SIGNATURE);
};
pub const LampPurposes = enum(i32) {
    Undefined = 0,
    Control = 1,
    Accent = 2,
    Branding = 4,
    Status = 8,
    Illumination = 16,
    Presentation = 32,
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IReference = @import("../Foundation.zig").IReference;
const VirtualKey = @import("../System.zig").VirtualKey;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const HSTRING = @import("../root.zig").HSTRING;
pub const Effects = @import("./Lights/Effects.zig");
