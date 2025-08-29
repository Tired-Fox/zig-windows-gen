pub const IKeyboardCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardPresent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_KeyboardPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IKeyboardCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a3f9b56-6798-4bbc-833e-0f34b17c65ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardPresent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IMouseCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getMousePresent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MousePresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalWheelPresent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_VerticalWheelPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalWheelPresent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_HorizontalWheelPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSwapButtons(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SwapButtons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNumberOfButtons(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NumberOfButtons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IMouseCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bca5e023-7dd9-4b6b-9a92-55d43cb38f73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MousePresent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_VerticalWheelPresent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_HorizontalWheelPresent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_SwapButtons: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_NumberOfButtons: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMouseDevice = extern struct {
    vtable: *const VTable,
    pub fn addMouseMoved(self: *@This(), handler: *TypedEventHandler(MouseDevice,MouseEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MouseMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMouseMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MouseMoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IMouseDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88edf458-f2c8-49f4-be1f-c256b388bc11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MouseMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(MouseDevice,MouseEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MouseMoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMouseDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*MouseDevice {
        var _r: *MouseDevice = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IMouseDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "484a9045-6d70-49db-8e68-46ffbd17d38d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **MouseDevice) callconv(.winapi) HRESULT,
    };
};
pub const IMouseEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMouseDelta(self: *@This()) core.HResult!MouseDelta {
        var _r: MouseDelta = undefined;
        const _c = self.vtable.get_MouseDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IMouseEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f625aa5d-2354-4cc7-9230-96941c969fde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MouseDelta: *const fn(self: *anyopaque, _r: *MouseDelta) callconv(.winapi) HRESULT,
    };
};
pub const IPenButtonListener = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(PenButtonListener,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsSupportedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsSupportedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTailButtonClicked(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TailButtonClicked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTailButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TailButtonClicked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTailButtonDoubleClicked(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonDoubleClickedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TailButtonDoubleClicked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTailButtonDoubleClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TailButtonDoubleClicked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTailButtonLongPressed(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonLongPressedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TailButtonLongPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTailButtonLongPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TailButtonLongPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenButtonListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8245c376-1ee3-53f7-b1f7-8334a16f2815";
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
        add_IsSupportedChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenButtonListener,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsSupportedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TailButtonClicked: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenButtonListener,PenTailButtonClickedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TailButtonClicked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TailButtonDoubleClicked: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenButtonListener,PenTailButtonDoubleClickedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TailButtonDoubleClicked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TailButtonLongPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenButtonListener,PenTailButtonLongPressedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TailButtonLongPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPenButtonListenerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PenButtonListener {
        var _r: *PenButtonListener = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenButtonListenerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19a8a584-862f-5f69-bfea-05f6584f133f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PenButtonListener) callconv(.winapi) HRESULT,
    };
};
pub const IPenDevice = extern struct {
    vtable: *const VTable,
    pub fn getPenId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_PenId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31856eba-a738-5a8c-b8f6-f97ef68d18ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PenId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPenDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0207d327-7fb8-5566-8c34-f8342037b7f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IPenDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetFromPointerId(self: *@This(), pointerId: u32) core.HResult!*PenDevice {
        var _r: *PenDevice = undefined;
        const _c = self.vtable.GetFromPointerId(@ptrCast(self), pointerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9dfbbe01-0966-5180-bcb4-b85060e39479";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFromPointerId: *const fn(self: *anyopaque, pointerId: u32, _r: **PenDevice) callconv(.winapi) HRESULT,
    };
};
pub const IPenDockListener = extern struct {
    vtable: *const VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(PenDockListener,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsSupportedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsSupportedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDocked(self: *@This(), handler: *TypedEventHandler(PenDockListener,PenDockedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Docked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDocked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Docked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUndocked(self: *@This(), handler: *TypedEventHandler(PenDockListener,PenUndockedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Undocked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUndocked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Undocked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDockListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "759f4d90-1dc0-55cb-ad18-b9101456f592";
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
        add_IsSupportedChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenDockListener,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsSupportedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Docked: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenDockListener,PenDockedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Docked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Undocked: *const fn(self: *anyopaque, handler: *TypedEventHandler(PenDockListener,PenUndockedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Undocked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPenDockListenerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*PenDockListener {
        var _r: *PenDockListener = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDockListenerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cab75e9a-0016-5c72-969e-a97e11992a93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **PenDockListener) callconv(.winapi) HRESULT,
    };
};
pub const IPenDockedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenDockedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd4277c6-ca63-5d4e-9ed3-a28a54521c8c";
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
pub const IPenTailButtonClickedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenTailButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d2fb7b6-6ad3-5d3e-ab29-05ea2410e390";
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
pub const IPenTailButtonDoubleClickedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenTailButtonDoubleClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "846321a2-618a-5478-b04c-b358231da4a7";
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
pub const IPenTailButtonLongPressedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenTailButtonLongPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f37c606e-c60a-5f42-b818-a53112406c13";
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
pub const IPenUndockedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.IPenUndockedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccd09150-261b-59e6-a5d4-c1964cd03feb";
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
pub const IPointerDevice = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIntegrated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIntegrated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxContacts(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxContacts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_PhysicalDeviceRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScreenRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ScreenRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedUsages(self: *@This()) core.HResult!*IVectorView(PointerDeviceUsage) {
        var _r: *IVectorView(PointerDeviceUsage) = undefined;
        const _c = self.vtable.get_SupportedUsages(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPointerDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93c9bafc-ebcb-467e-82c6-276feae36b5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_IsIntegrated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxContacts: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PhysicalDeviceRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_ScreenRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_SupportedUsages: *const fn(self: *anyopaque, _r: **IVectorView(PointerDeviceUsage)) callconv(.winapi) HRESULT,
    };
};
pub const IPointerDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getMaxPointersWithZDistance(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxPointersWithZDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPointerDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8a6d2a0-c484-489f-ae3e-30d2ee1ffd3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPointersWithZDistance: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPointerDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetPointerDevice(self: *@This(), pointerId: u32) core.HResult!*PointerDevice {
        var _r: *PointerDevice = undefined;
        const _c = self.vtable.GetPointerDevice(@ptrCast(self), pointerId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPointerDevices(self: *@This()) core.HResult!*IVectorView(PointerDevice) {
        var _r: *IVectorView(PointerDevice) = undefined;
        const _c = self.vtable.GetPointerDevices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.IPointerDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8b89aa1-d1c6-416e-bd8d-5790914dc563";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPointerDevice: *const fn(self: *anyopaque, pointerId: u32, _r: **PointerDevice) callconv(.winapi) HRESULT,
        GetPointerDevices: *const fn(self: *anyopaque, _r: **IVectorView(PointerDevice)) callconv(.winapi) HRESULT,
    };
};
pub const ITouchCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getTouchPresent(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TouchPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContacts(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Contacts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.ITouchCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20dd55f9-13f1-46c8-9285-2c05fa3eda6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TouchPresent: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Contacts: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const KeyboardCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyboardPresent(self: *@This()) core.HResult!i32 {
        const this: *IKeyboardCapabilities = @ptrCast(self);
        return try this.getKeyboardPresent();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IKeyboardCapabilities.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.KeyboardCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyboardCapabilities.GUID;
    pub const IID: Guid = IKeyboardCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyboardCapabilities.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MouseCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMousePresent(self: *@This()) core.HResult!i32 {
        const this: *IMouseCapabilities = @ptrCast(self);
        return try this.getMousePresent();
    }
    pub fn getVerticalWheelPresent(self: *@This()) core.HResult!i32 {
        const this: *IMouseCapabilities = @ptrCast(self);
        return try this.getVerticalWheelPresent();
    }
    pub fn getHorizontalWheelPresent(self: *@This()) core.HResult!i32 {
        const this: *IMouseCapabilities = @ptrCast(self);
        return try this.getHorizontalWheelPresent();
    }
    pub fn getSwapButtons(self: *@This()) core.HResult!i32 {
        const this: *IMouseCapabilities = @ptrCast(self);
        return try this.getSwapButtons();
    }
    pub fn getNumberOfButtons(self: *@This()) core.HResult!u32 {
        const this: *IMouseCapabilities = @ptrCast(self);
        return try this.getNumberOfButtons();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMouseCapabilities.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.MouseCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMouseCapabilities.GUID;
    pub const IID: Guid = IMouseCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMouseCapabilities.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MouseDelta = extern struct {
    X: i32,
    Y: i32,
};
pub const MouseDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMouseMoved(self: *@This(), handler: *TypedEventHandler(MouseDevice,MouseEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMouseDevice = @ptrCast(self);
        return try this.addMouseMoved(handler);
    }
    pub fn removeMouseMoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IMouseDevice = @ptrCast(self);
        return try this.removeMouseMoved(cookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*MouseDevice {
        const factory = @This().IMouseDeviceStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.MouseDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMouseDevice.GUID;
    pub const IID: Guid = IMouseDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMouseDevice.SIGNATURE);
    var _IMouseDeviceStaticsCache: FactoryCache(IMouseDeviceStatics, RUNTIME_NAME) = .{};
};
pub const MouseEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMouseDelta(self: *@This()) core.HResult!MouseDelta {
        const this: *IMouseEventArgs = @ptrCast(self);
        return try this.getMouseDelta();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.MouseEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMouseEventArgs.GUID;
    pub const IID: Guid = IMouseEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMouseEventArgs.SIGNATURE);
};
pub const PenButtonListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.IsSupported();
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(PenButtonListener,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.addIsSupportedChanged(handler);
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.removeIsSupportedChanged(token);
    }
    pub fn addTailButtonClicked(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonClickedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.addTailButtonClicked(handler);
    }
    pub fn removeTailButtonClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.removeTailButtonClicked(token);
    }
    pub fn addTailButtonDoubleClicked(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonDoubleClickedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.addTailButtonDoubleClicked(handler);
    }
    pub fn removeTailButtonDoubleClicked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.removeTailButtonDoubleClicked(token);
    }
    pub fn addTailButtonLongPressed(self: *@This(), handler: *TypedEventHandler(PenButtonListener,PenTailButtonLongPressedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.addTailButtonLongPressed(handler);
    }
    pub fn removeTailButtonLongPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenButtonListener = @ptrCast(self);
        return try this.removeTailButtonLongPressed(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PenButtonListener {
        const factory = @This().IPenButtonListenerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.PenButtonListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenButtonListener.GUID;
    pub const IID: Guid = IPenButtonListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenButtonListener.SIGNATURE);
    var _IPenButtonListenerStaticsCache: FactoryCache(IPenButtonListenerStatics, RUNTIME_NAME) = .{};
};
pub const PenDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPenId(self: *@This()) core.HResult!*Guid {
        const this: *IPenDevice = @ptrCast(self);
        return try this.getPenId();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var this: ?*IPenDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPenDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSimpleHapticsController();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFromPointerId(pointerId: u32) core.HResult!*PenDevice {
        const factory = @This().IPenDeviceStaticsCache.get();
        return try factory.GetFromPointerId(pointerId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.PenDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenDevice.GUID;
    pub const IID: Guid = IPenDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenDevice.SIGNATURE);
    var _IPenDeviceStaticsCache: FactoryCache(IPenDeviceStatics, RUNTIME_NAME) = .{};
};
pub const PenDockListener = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsSupported(self: *@This()) core.HResult!bool {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.IsSupported();
    }
    pub fn addIsSupportedChanged(self: *@This(), handler: *TypedEventHandler(PenDockListener,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.addIsSupportedChanged(handler);
    }
    pub fn removeIsSupportedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.removeIsSupportedChanged(token);
    }
    pub fn addDocked(self: *@This(), handler: *TypedEventHandler(PenDockListener,PenDockedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.addDocked(handler);
    }
    pub fn removeDocked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.removeDocked(token);
    }
    pub fn addUndocked(self: *@This(), handler: *TypedEventHandler(PenDockListener,PenUndockedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.addUndocked(handler);
    }
    pub fn removeUndocked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPenDockListener = @ptrCast(self);
        return try this.removeUndocked(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*PenDockListener {
        const factory = @This().IPenDockListenerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.PenDockListener";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenDockListener.GUID;
    pub const IID: Guid = IPenDockListener.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenDockListener.SIGNATURE);
    var _IPenDockListenerStaticsCache: FactoryCache(IPenDockListenerStatics, RUNTIME_NAME) = .{};
};
pub const PenDockedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.PenDockedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenDockedEventArgs.GUID;
    pub const IID: Guid = IPenDockedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenDockedEventArgs.SIGNATURE);
};
pub const PenTailButtonClickedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.PenTailButtonClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenTailButtonClickedEventArgs.GUID;
    pub const IID: Guid = IPenTailButtonClickedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenTailButtonClickedEventArgs.SIGNATURE);
};
pub const PenTailButtonDoubleClickedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.PenTailButtonDoubleClickedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenTailButtonDoubleClickedEventArgs.GUID;
    pub const IID: Guid = IPenTailButtonDoubleClickedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenTailButtonDoubleClickedEventArgs.SIGNATURE);
};
pub const PenTailButtonLongPressedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.PenTailButtonLongPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenTailButtonLongPressedEventArgs.GUID;
    pub const IID: Guid = IPenTailButtonLongPressedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenTailButtonLongPressedEventArgs.SIGNATURE);
};
pub const PenUndockedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Input.PenUndockedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPenUndockedEventArgs.GUID;
    pub const IID: Guid = IPenUndockedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPenUndockedEventArgs.SIGNATURE);
};
pub const PointerDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getIsIntegrated(self: *@This()) core.HResult!bool {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getIsIntegrated();
    }
    pub fn getMaxContacts(self: *@This()) core.HResult!u32 {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getMaxContacts();
    }
    pub fn getPhysicalDeviceRect(self: *@This()) core.HResult!Rect {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getPhysicalDeviceRect();
    }
    pub fn getScreenRect(self: *@This()) core.HResult!Rect {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getScreenRect();
    }
    pub fn getSupportedUsages(self: *@This()) core.HResult!*IVectorView(PointerDeviceUsage) {
        const this: *IPointerDevice = @ptrCast(self);
        return try this.getSupportedUsages();
    }
    pub fn getMaxPointersWithZDistance(self: *@This()) core.HResult!u32 {
        var this: ?*IPointerDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointerDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxPointersWithZDistance();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetPointerDevice(pointerId: u32) core.HResult!*PointerDevice {
        const factory = @This().IPointerDeviceStaticsCache.get();
        return try factory.GetPointerDevice(pointerId);
    }
    pub fn GetPointerDevices() core.HResult!*IVectorView(PointerDevice) {
        const factory = @This().IPointerDeviceStaticsCache.get();
        return try factory.GetPointerDevices();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.PointerDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerDevice.GUID;
    pub const IID: Guid = IPointerDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerDevice.SIGNATURE);
    var _IPointerDeviceStaticsCache: FactoryCache(IPointerDeviceStatics, RUNTIME_NAME) = .{};
};
pub const PointerDeviceType = enum(i32) {
    Touch = 0,
    Pen = 1,
    Mouse = 2,
    Touchpad = 3,
};
pub const PointerDeviceUsage = extern struct {
    UsagePage: u32,
    Usage: u32,
    MinLogical: i32,
    MaxLogical: i32,
    MinPhysical: i32,
    MaxPhysical: i32,
    Unit: u32,
    PhysicalMultiplier: f32,
};
pub const TouchCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTouchPresent(self: *@This()) core.HResult!i32 {
        const this: *ITouchCapabilities = @ptrCast(self);
        return try this.getTouchPresent();
    }
    pub fn getContacts(self: *@This()) core.HResult!u32 {
        const this: *ITouchCapabilities = @ptrCast(self);
        return try this.getContacts();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITouchCapabilities.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.TouchCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITouchCapabilities.GUID;
    pub const IID: Guid = ITouchCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITouchCapabilities.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SimpleHapticsController = @import("./Haptics.zig").SimpleHapticsController;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
pub const Preview = @import("./Input/Preview.zig");
