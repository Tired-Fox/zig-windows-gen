pub const IInjectedInputGamepadInfo = extern struct {
    vtable: *const VTable,
    pub fn getButtons(self: *@This()) core.HResult!GamepadButtons {
        var _r: GamepadButtons = undefined;
        const _c = self.vtable.get_Buttons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtons(self: *@This(), value: GamepadButtons) core.HResult!void {
        const _c = self.vtable.put_Buttons(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftThumbstickX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LeftThumbstickX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftThumbstickX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LeftThumbstickX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftThumbstickY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LeftThumbstickY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftThumbstickY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LeftThumbstickY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftTrigger(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LeftTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftTrigger(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LeftTrigger(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightThumbstickX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RightThumbstickX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightThumbstickX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RightThumbstickX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightThumbstickY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RightThumbstickY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightThumbstickY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RightThumbstickY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightTrigger(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RightTrigger(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightTrigger(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RightTrigger(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20ae9a3f-df11-4572-a9ab-d75b8a5e48ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Buttons: *const fn(self: *anyopaque, _r: *GamepadButtons) callconv(.winapi) HRESULT,
        put_Buttons: *const fn(self: *anyopaque, value: GamepadButtons) callconv(.winapi) HRESULT,
        get_LeftThumbstickX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LeftThumbstickX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LeftThumbstickY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LeftThumbstickY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LeftTrigger: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LeftTrigger: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RightThumbstickX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RightThumbstickX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RightThumbstickY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RightThumbstickY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RightTrigger: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RightTrigger: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInjectedInputGamepadInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), reading: GamepadReading) core.HResult!*InjectedInputGamepadInfo {
        var _r: *InjectedInputGamepadInfo = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), reading, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputGamepadInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59596876-6c39-4ec4-8b2a-29ef7de18aca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, reading: GamepadReading, _r: **InjectedInputGamepadInfo) callconv(.winapi) HRESULT,
    };
};
pub const IInjectedInputKeyboardInfo = extern struct {
    vtable: *const VTable,
    pub fn getKeyOptions(self: *@This()) core.HResult!InjectedInputKeyOptions {
        var _r: InjectedInputKeyOptions = undefined;
        const _c = self.vtable.get_KeyOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyOptions(self: *@This(), value: InjectedInputKeyOptions) core.HResult!void {
        const _c = self.vtable.put_KeyOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScanCode(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ScanCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScanCode(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_ScanCode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_VirtualKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVirtualKey(self: *@This(), value: u16) core.HResult!void {
        const _c = self.vtable.put_VirtualKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputKeyboardInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b46d140-2b6a-5ffa-7eae-bd077b052acd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyOptions: *const fn(self: *anyopaque, _r: *InjectedInputKeyOptions) callconv(.winapi) HRESULT,
        put_KeyOptions: *const fn(self: *anyopaque, value: InjectedInputKeyOptions) callconv(.winapi) HRESULT,
        get_ScanCode: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_ScanCode: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
        get_VirtualKey: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        put_VirtualKey: *const fn(self: *anyopaque, value: u16) callconv(.winapi) HRESULT,
    };
};
pub const IInjectedInputMouseInfo = extern struct {
    vtable: *const VTable,
    pub fn getMouseOptions(self: *@This()) core.HResult!InjectedInputMouseOptions {
        var _r: InjectedInputMouseOptions = undefined;
        const _c = self.vtable.get_MouseOptions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMouseOptions(self: *@This(), value: InjectedInputMouseOptions) core.HResult!void {
        const _c = self.vtable.put_MouseOptions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMouseData(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MouseData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMouseData(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_MouseData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeltaY(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DeltaY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeltaY(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DeltaY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeltaX(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DeltaX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeltaX(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_DeltaX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimeOffsetInMilliseconds(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TimeOffsetInMilliseconds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimeOffsetInMilliseconds(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TimeOffsetInMilliseconds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputMouseInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96f56e6b-e47a-5cf4-418d-8a5fb9670c7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MouseOptions: *const fn(self: *anyopaque, _r: *InjectedInputMouseOptions) callconv(.winapi) HRESULT,
        put_MouseOptions: *const fn(self: *anyopaque, value: InjectedInputMouseOptions) callconv(.winapi) HRESULT,
        get_MouseData: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_MouseData: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DeltaY: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DeltaY: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_DeltaX: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_DeltaX: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_TimeOffsetInMilliseconds: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TimeOffsetInMilliseconds: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IInjectedInputPenInfo = extern struct {
    vtable: *const VTable,
    pub fn getPointerInfo(self: *@This()) core.HResult!InjectedInputPointerInfo {
        var _r: InjectedInputPointerInfo = undefined;
        const _c = self.vtable.get_PointerInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerInfo(self: *@This(), value: InjectedInputPointerInfo) core.HResult!void {
        const _c = self.vtable.put_PointerInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPenButtons(self: *@This()) core.HResult!InjectedInputPenButtons {
        var _r: InjectedInputPenButtons = undefined;
        const _c = self.vtable.get_PenButtons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPenButtons(self: *@This(), value: InjectedInputPenButtons) core.HResult!void {
        const _c = self.vtable.put_PenButtons(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPenParameters(self: *@This()) core.HResult!InjectedInputPenParameters {
        var _r: InjectedInputPenParameters = undefined;
        const _c = self.vtable.get_PenParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPenParameters(self: *@This(), value: InjectedInputPenParameters) core.HResult!void {
        const _c = self.vtable.put_PenParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPressure(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPressure(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Pressure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTiltX(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TiltX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTiltX(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TiltX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTiltY(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TiltY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTiltY(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TiltY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputPenInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b40ad03-ca1e-5527-7e02-2828540bb1d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerInfo: *const fn(self: *anyopaque, _r: *InjectedInputPointerInfo) callconv(.winapi) HRESULT,
        put_PointerInfo: *const fn(self: *anyopaque, value: InjectedInputPointerInfo) callconv(.winapi) HRESULT,
        get_PenButtons: *const fn(self: *anyopaque, _r: *InjectedInputPenButtons) callconv(.winapi) HRESULT,
        put_PenButtons: *const fn(self: *anyopaque, value: InjectedInputPenButtons) callconv(.winapi) HRESULT,
        get_PenParameters: *const fn(self: *anyopaque, _r: *InjectedInputPenParameters) callconv(.winapi) HRESULT,
        put_PenParameters: *const fn(self: *anyopaque, value: InjectedInputPenParameters) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Pressure: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TiltX: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TiltX: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_TiltY: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TiltY: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IInjectedInputTouchInfo = extern struct {
    vtable: *const VTable,
    pub fn getContact(self: *@This()) core.HResult!InjectedInputRectangle {
        var _r: InjectedInputRectangle = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContact(self: *@This(), value: InjectedInputRectangle) core.HResult!void {
        const _c = self.vtable.put_Contact(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerInfo(self: *@This()) core.HResult!InjectedInputPointerInfo {
        var _r: InjectedInputPointerInfo = undefined;
        const _c = self.vtable.get_PointerInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerInfo(self: *@This(), value: InjectedInputPointerInfo) core.HResult!void {
        const _c = self.vtable.put_PointerInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPressure(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPressure(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Pressure(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTouchParameters(self: *@This()) core.HResult!InjectedInputTouchParameters {
        var _r: InjectedInputTouchParameters = undefined;
        const _c = self.vtable.get_TouchParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTouchParameters(self: *@This(), value: InjectedInputTouchParameters) core.HResult!void {
        const _c = self.vtable.put_TouchParameters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInjectedInputTouchInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "224fd1df-43e8-5ef5-510a-69ca8c9b4c28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: *InjectedInputRectangle) callconv(.winapi) HRESULT,
        put_Contact: *const fn(self: *anyopaque, value: InjectedInputRectangle) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_PointerInfo: *const fn(self: *anyopaque, _r: *InjectedInputPointerInfo) callconv(.winapi) HRESULT,
        put_PointerInfo: *const fn(self: *anyopaque, value: InjectedInputPointerInfo) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Pressure: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TouchParameters: *const fn(self: *anyopaque, _r: *InjectedInputTouchParameters) callconv(.winapi) HRESULT,
        put_TouchParameters: *const fn(self: *anyopaque, value: InjectedInputTouchParameters) callconv(.winapi) HRESULT,
    };
};
pub const IInputInjector = extern struct {
    vtable: *const VTable,
    pub fn InjectKeyboardInput(self: *@This(), input: *IIterable(InjectedInputKeyboardInfo)) core.HResult!void {
        const _c = self.vtable.InjectKeyboardInput(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InjectMouseInput(self: *@This(), input: *IIterable(InjectedInputMouseInfo)) core.HResult!void {
        const _c = self.vtable.InjectMouseInput(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InitializeTouchInjection(self: *@This(), visualMode: InjectedInputVisualizationMode) core.HResult!void {
        const _c = self.vtable.InitializeTouchInjection(@ptrCast(self), visualMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InjectTouchInput(self: *@This(), input: *IIterable(InjectedInputTouchInfo)) core.HResult!void {
        const _c = self.vtable.InjectTouchInput(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UninitializeTouchInjection(self: *@This()) core.HResult!void {
        const _c = self.vtable.UninitializeTouchInjection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InitializePenInjection(self: *@This(), visualMode: InjectedInputVisualizationMode) core.HResult!void {
        const _c = self.vtable.InitializePenInjection(@ptrCast(self), visualMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InjectPenInput(self: *@This(), input: *InjectedInputPenInfo) core.HResult!void {
        const _c = self.vtable.InjectPenInput(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UninitializePenInjection(self: *@This()) core.HResult!void {
        const _c = self.vtable.UninitializePenInjection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InjectShortcut(self: *@This(), shortcut: InjectedInputShortcut) core.HResult!void {
        const _c = self.vtable.InjectShortcut(@ptrCast(self), shortcut);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInputInjector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ec26f84-0b02-4bd2-ad7a-3d4658be3e18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InjectKeyboardInput: *const fn(self: *anyopaque, input: *IIterable(InjectedInputKeyboardInfo)) callconv(.winapi) HRESULT,
        InjectMouseInput: *const fn(self: *anyopaque, input: *IIterable(InjectedInputMouseInfo)) callconv(.winapi) HRESULT,
        InitializeTouchInjection: *const fn(self: *anyopaque, visualMode: InjectedInputVisualizationMode) callconv(.winapi) HRESULT,
        InjectTouchInput: *const fn(self: *anyopaque, input: *IIterable(InjectedInputTouchInfo)) callconv(.winapi) HRESULT,
        UninitializeTouchInjection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        InitializePenInjection: *const fn(self: *anyopaque, visualMode: InjectedInputVisualizationMode) callconv(.winapi) HRESULT,
        InjectPenInput: *const fn(self: *anyopaque, input: *InjectedInputPenInfo) callconv(.winapi) HRESULT,
        UninitializePenInjection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        InjectShortcut: *const fn(self: *anyopaque, shortcut: InjectedInputShortcut) callconv(.winapi) HRESULT,
    };
};
pub const IInputInjector2 = extern struct {
    vtable: *const VTable,
    pub fn InitializeGamepadInjection(self: *@This()) core.HResult!void {
        const _c = self.vtable.InitializeGamepadInjection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InjectGamepadInput(self: *@This(), input: *InjectedInputGamepadInfo) core.HResult!void {
        const _c = self.vtable.InjectGamepadInput(@ptrCast(self), input);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UninitializeGamepadInjection(self: *@This()) core.HResult!void {
        const _c = self.vtable.UninitializeGamepadInjection(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInputInjector2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e7a905d-1453-43a7-9bcb-06d6d7b305f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InitializeGamepadInjection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        InjectGamepadInput: *const fn(self: *anyopaque, input: *InjectedInputGamepadInfo) callconv(.winapi) HRESULT,
        UninitializeGamepadInjection: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IInputInjectorStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCreate(self: *@This()) core.HResult!*InputInjector {
        var _r: *InputInjector = undefined;
        const _c = self.vtable.TryCreate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInputInjectorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "deae6943-7402-4141-a5c6-0c01aa57b16a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreate: *const fn(self: *anyopaque, _r: **InputInjector) callconv(.winapi) HRESULT,
    };
};
pub const IInputInjectorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryCreateForAppBroadcastOnly(self: *@This()) core.HResult!*InputInjector {
        var _r: *InputInjector = undefined;
        const _c = self.vtable.TryCreateForAppBroadcastOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.IInputInjectorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4db38fb-dd8c-414f-95ea-f87ef4c0ae6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateForAppBroadcastOnly: *const fn(self: *anyopaque, _r: **InputInjector) callconv(.winapi) HRESULT,
    };
};
pub const InjectedInputButtonChangeKind = enum(i32) {
    None = 0,
    FirstButtonDown = 1,
    FirstButtonUp = 2,
    SecondButtonDown = 3,
    SecondButtonUp = 4,
    ThirdButtonDown = 5,
    ThirdButtonUp = 6,
    FourthButtonDown = 7,
    FourthButtonUp = 8,
    FifthButtonDown = 9,
    FifthButtonUp = 10,
};
pub const InjectedInputGamepadInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getButtons(self: *@This()) core.HResult!GamepadButtons {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getButtons();
    }
    pub fn putButtons(self: *@This(), value: GamepadButtons) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putButtons(value);
    }
    pub fn getLeftThumbstickX(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getLeftThumbstickX();
    }
    pub fn putLeftThumbstickX(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putLeftThumbstickX(value);
    }
    pub fn getLeftThumbstickY(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getLeftThumbstickY();
    }
    pub fn putLeftThumbstickY(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putLeftThumbstickY(value);
    }
    pub fn getLeftTrigger(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getLeftTrigger();
    }
    pub fn putLeftTrigger(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putLeftTrigger(value);
    }
    pub fn getRightThumbstickX(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getRightThumbstickX();
    }
    pub fn putRightThumbstickX(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putRightThumbstickX(value);
    }
    pub fn getRightThumbstickY(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getRightThumbstickY();
    }
    pub fn putRightThumbstickY(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putRightThumbstickY(value);
    }
    pub fn getRightTrigger(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.getRightTrigger();
    }
    pub fn putRightTrigger(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputGamepadInfo = @ptrCast(self);
        return try this.putRightTrigger(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInjectedInputGamepadInfo.IID)));
    }
    pub fn CreateInstance(reading: GamepadReading) core.HResult!*InjectedInputGamepadInfo {
        const factory = @This().IInjectedInputGamepadInfoFactoryCache.get();
        return try factory.CreateInstance(reading);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InjectedInputGamepadInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInjectedInputGamepadInfo.GUID;
    pub const IID: Guid = IInjectedInputGamepadInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInjectedInputGamepadInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IInjectedInputGamepadInfoFactoryCache: FactoryCache(IInjectedInputGamepadInfoFactory, RUNTIME_NAME) = .{};
};
pub const InjectedInputKeyOptions = enum(i32) {
    None = 0,
    ExtendedKey = 1,
    KeyUp = 2,
    ScanCode = 8,
    Unicode = 4,
};
pub const InjectedInputKeyboardInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyOptions(self: *@This()) core.HResult!InjectedInputKeyOptions {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.getKeyOptions();
    }
    pub fn putKeyOptions(self: *@This(), value: InjectedInputKeyOptions) core.HResult!void {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.putKeyOptions(value);
    }
    pub fn getScanCode(self: *@This()) core.HResult!u16 {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.getScanCode();
    }
    pub fn putScanCode(self: *@This(), value: u16) core.HResult!void {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.putScanCode(value);
    }
    pub fn getVirtualKey(self: *@This()) core.HResult!u16 {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.getVirtualKey();
    }
    pub fn putVirtualKey(self: *@This(), value: u16) core.HResult!void {
        const this: *IInjectedInputKeyboardInfo = @ptrCast(self);
        return try this.putVirtualKey(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInjectedInputKeyboardInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InjectedInputKeyboardInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInjectedInputKeyboardInfo.GUID;
    pub const IID: Guid = IInjectedInputKeyboardInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInjectedInputKeyboardInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InjectedInputMouseInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMouseOptions(self: *@This()) core.HResult!InjectedInputMouseOptions {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.getMouseOptions();
    }
    pub fn putMouseOptions(self: *@This(), value: InjectedInputMouseOptions) core.HResult!void {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.putMouseOptions(value);
    }
    pub fn getMouseData(self: *@This()) core.HResult!u32 {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.getMouseData();
    }
    pub fn putMouseData(self: *@This(), value: u32) core.HResult!void {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.putMouseData(value);
    }
    pub fn getDeltaY(self: *@This()) core.HResult!i32 {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.getDeltaY();
    }
    pub fn putDeltaY(self: *@This(), value: i32) core.HResult!void {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.putDeltaY(value);
    }
    pub fn getDeltaX(self: *@This()) core.HResult!i32 {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.getDeltaX();
    }
    pub fn putDeltaX(self: *@This(), value: i32) core.HResult!void {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.putDeltaX(value);
    }
    pub fn getTimeOffsetInMilliseconds(self: *@This()) core.HResult!u32 {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.getTimeOffsetInMilliseconds();
    }
    pub fn putTimeOffsetInMilliseconds(self: *@This(), value: u32) core.HResult!void {
        const this: *IInjectedInputMouseInfo = @ptrCast(self);
        return try this.putTimeOffsetInMilliseconds(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInjectedInputMouseInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InjectedInputMouseInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInjectedInputMouseInfo.GUID;
    pub const IID: Guid = IInjectedInputMouseInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInjectedInputMouseInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InjectedInputMouseOptions = enum(i32) {
    None = 0,
    Move = 1,
    LeftDown = 2,
    LeftUp = 4,
    RightDown = 8,
    RightUp = 16,
    MiddleDown = 32,
    MiddleUp = 64,
    XDown = 128,
    XUp = 256,
    Wheel = 2048,
    HWheel = 4096,
    MoveNoCoalesce = 8192,
    VirtualDesk = 16384,
    Absolute = 32768,
};
pub const InjectedInputPenButtons = enum(i32) {
    None = 0,
    Barrel = 1,
    Inverted = 2,
    Eraser = 4,
};
pub const InjectedInputPenInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerInfo(self: *@This()) core.HResult!InjectedInputPointerInfo {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getPointerInfo();
    }
    pub fn putPointerInfo(self: *@This(), value: InjectedInputPointerInfo) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putPointerInfo(value);
    }
    pub fn getPenButtons(self: *@This()) core.HResult!InjectedInputPenButtons {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getPenButtons();
    }
    pub fn putPenButtons(self: *@This(), value: InjectedInputPenButtons) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putPenButtons(value);
    }
    pub fn getPenParameters(self: *@This()) core.HResult!InjectedInputPenParameters {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getPenParameters();
    }
    pub fn putPenParameters(self: *@This(), value: InjectedInputPenParameters) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putPenParameters(value);
    }
    pub fn getPressure(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn putPressure(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putPressure(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getRotation();
    }
    pub fn putRotation(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putRotation(value);
    }
    pub fn getTiltX(self: *@This()) core.HResult!i32 {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getTiltX();
    }
    pub fn putTiltX(self: *@This(), value: i32) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putTiltX(value);
    }
    pub fn getTiltY(self: *@This()) core.HResult!i32 {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.getTiltY();
    }
    pub fn putTiltY(self: *@This(), value: i32) core.HResult!void {
        const this: *IInjectedInputPenInfo = @ptrCast(self);
        return try this.putTiltY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInjectedInputPenInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InjectedInputPenInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInjectedInputPenInfo.GUID;
    pub const IID: Guid = IInjectedInputPenInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInjectedInputPenInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InjectedInputPenParameters = enum(i32) {
    None = 0,
    Pressure = 1,
    Rotation = 2,
    TiltX = 4,
    TiltY = 8,
};
pub const InjectedInputPoint = extern struct {
    PositionX: i32,
    PositionY: i32,
};
pub const InjectedInputPointerInfo = extern struct {
    PointerId: u32,
    PointerOptions: InjectedInputPointerOptions,
    PixelLocation: InjectedInputPoint,
    TimeOffsetInMilliseconds: u32,
    PerformanceCount: u64,
};
pub const InjectedInputPointerOptions = enum(i32) {
    None = 0,
    New = 1,
    InRange = 2,
    InContact = 4,
    FirstButton = 16,
    SecondButton = 32,
    Primary = 8192,
    Confidence = 16384,
    Canceled = 32768,
    PointerDown = 65536,
    Update = 131072,
    PointerUp = 262144,
    CaptureChanged = 2097152,
};
pub const InjectedInputRectangle = extern struct {
    Left: i32,
    Top: i32,
    Bottom: i32,
    Right: i32,
};
pub const InjectedInputShortcut = enum(i32) {
    Back = 0,
    Start = 1,
    Search = 2,
};
pub const InjectedInputTouchInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContact(self: *@This()) core.HResult!InjectedInputRectangle {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.getContact();
    }
    pub fn putContact(self: *@This(), value: InjectedInputRectangle) core.HResult!void {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.putContact(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!i32 {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn putOrientation(self: *@This(), value: i32) core.HResult!void {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getPointerInfo(self: *@This()) core.HResult!InjectedInputPointerInfo {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.getPointerInfo();
    }
    pub fn putPointerInfo(self: *@This(), value: InjectedInputPointerInfo) core.HResult!void {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.putPointerInfo(value);
    }
    pub fn getPressure(self: *@This()) core.HResult!f64 {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn putPressure(self: *@This(), value: f64) core.HResult!void {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.putPressure(value);
    }
    pub fn getTouchParameters(self: *@This()) core.HResult!InjectedInputTouchParameters {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.getTouchParameters();
    }
    pub fn putTouchParameters(self: *@This(), value: InjectedInputTouchParameters) core.HResult!void {
        const this: *IInjectedInputTouchInfo = @ptrCast(self);
        return try this.putTouchParameters(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInjectedInputTouchInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InjectedInputTouchInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInjectedInputTouchInfo.GUID;
    pub const IID: Guid = IInjectedInputTouchInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInjectedInputTouchInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InjectedInputTouchParameters = enum(i32) {
    None = 0,
    Contact = 1,
    Orientation = 2,
    Pressure = 4,
};
pub const InjectedInputVisualizationMode = enum(i32) {
    None = 0,
    Default = 1,
    Indirect = 2,
};
pub const InputInjector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InjectKeyboardInput(self: *@This(), input: *IIterable(InjectedInputKeyboardInfo)) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InjectKeyboardInput(input);
    }
    pub fn InjectMouseInput(self: *@This(), input: *IIterable(InjectedInputMouseInfo)) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InjectMouseInput(input);
    }
    pub fn InitializeTouchInjection(self: *@This(), visualMode: InjectedInputVisualizationMode) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InitializeTouchInjection(visualMode);
    }
    pub fn InjectTouchInput(self: *@This(), input: *IIterable(InjectedInputTouchInfo)) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InjectTouchInput(input);
    }
    pub fn UninitializeTouchInjection(self: *@This()) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.UninitializeTouchInjection();
    }
    pub fn InitializePenInjection(self: *@This(), visualMode: InjectedInputVisualizationMode) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InitializePenInjection(visualMode);
    }
    pub fn InjectPenInput(self: *@This(), input: *InjectedInputPenInfo) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InjectPenInput(input);
    }
    pub fn UninitializePenInjection(self: *@This()) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.UninitializePenInjection();
    }
    pub fn InjectShortcut(self: *@This(), shortcut: InjectedInputShortcut) core.HResult!void {
        const this: *IInputInjector = @ptrCast(self);
        return try this.InjectShortcut(shortcut);
    }
    pub fn InitializeGamepadInjection(self: *@This()) core.HResult!void {
        var this: ?*IInputInjector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputInjector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InitializeGamepadInjection();
    }
    pub fn InjectGamepadInput(self: *@This(), input: *InjectedInputGamepadInfo) core.HResult!void {
        var this: ?*IInputInjector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputInjector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InjectGamepadInput(input);
    }
    pub fn UninitializeGamepadInjection(self: *@This()) core.HResult!void {
        var this: ?*IInputInjector2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputInjector2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UninitializeGamepadInjection();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreate() core.HResult!*InputInjector {
        const factory = @This().IInputInjectorStaticsCache.get();
        return try factory.TryCreate();
    }
    pub fn TryCreateForAppBroadcastOnly() core.HResult!*InputInjector {
        const factory = @This().IInputInjectorStatics2Cache.get();
        return try factory.TryCreateForAppBroadcastOnly();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Injection.InputInjector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputInjector.GUID;
    pub const IID: Guid = IInputInjector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputInjector.SIGNATURE);
    var _IInputInjectorStaticsCache: FactoryCache(IInputInjectorStatics, RUNTIME_NAME) = .{};
    var _IInputInjectorStatics2Cache: FactoryCache(IInputInjectorStatics2, RUNTIME_NAME) = .{};
};
const HSTRING = @import("../../../root.zig").HSTRING;
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const Guid = @import("../../../root.zig").Guid;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const GamepadReading = @import("../../../Gaming/Input.zig").GamepadReading;
const HRESULT = @import("../../../root.zig").HRESULT;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const core = @import("../../../root.zig").core;
const GamepadButtons = @import("../../../Gaming/Input.zig").GamepadButtons;
const TrustLevel = @import("../../../root.zig").TrustLevel;
