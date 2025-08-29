pub const ConversionModeChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewConversionMode(self: *@This()) core.HResult!TextConversionMode {
        const this: *IConversionModeChangedEventArgs = @ptrCast(self);
        return try this.getNewConversionMode();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ConversionModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConversionModeChangedEventArgs.GUID;
    pub const IID: Guid = IConversionModeChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConversionModeChangedEventArgs.SIGNATURE);
};
pub const FocusEnteredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        const this: *IFocusEnteredEventArgs = @ptrCast(self);
        return try this.getFocusedTextBoxInfo();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.FocusEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusEnteredEventArgs.GUID;
    pub const IID: Guid = IFocusEnteredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusEnteredEventArgs.SIGNATURE);
};
pub const IConversionModeChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewConversionMode(self: *@This()) core.HResult!TextConversionMode {
        var _r: TextConversionMode = undefined;
        const _c = self.vtable.get_NewConversionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IConversionModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b49761f9-5b21-513c-b6c0-78f27d26b010";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewConversionMode: *const fn(self: *anyopaque, _r: *TextConversionMode) callconv(.winapi) HRESULT,
    };
};
pub const IFocusEnteredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        var _r: *TextBoxInfo = undefined;
        const _c = self.vtable.get_FocusedTextBoxInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IFocusEnteredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca4dc200-875f-501d-af14-413a0aa1ed5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusedTextBoxInfo: *const fn(self: *anyopaque, _r: **TextBoxInfo) callconv(.winapi) HRESULT,
    };
};
pub const IInputDelegationModeChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDelegationOn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DelegationOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IInputDelegationModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bb448b2-67ba-5215-8783-b444bd28eed3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DelegationOn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IKeyEventReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_VirtualKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnicode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Unicode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!KeyEventDeviceType {
        var _r: KeyEventDeviceType = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsKeyPressed(self: *@This(), vkey: VirtualKey) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsKeyPressed(@ptrCast(self), vkey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsToggleKeyOn(self: *@This(), vkey: VirtualKey) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsToggleKeyOn(@ptrCast(self), vkey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEditSession(self: *@This()) core.HResult!*TextEditSession {
        var _r: *TextEditSession = undefined;
        const _c = self.vtable.get_EditSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IKeyEventReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c30f686-a058-5ecc-abd2-9cc861c1185b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VirtualKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
        get_Unicode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *KeyEventDeviceType) callconv(.winapi) HRESULT,
        IsKeyPressed: *const fn(self: *anyopaque, vkey: VirtualKey, _r: *bool) callconv(.winapi) HRESULT,
        IsToggleKeyOn: *const fn(self: *anyopaque, vkey: VirtualKey, _r: *bool) callconv(.winapi) HRESULT,
        get_EditSession: *const fn(self: *anyopaque, _r: **TextEditSession) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardInputProcessor = extern struct {
    vtable: *const VTable,
    pub fn getInputProfile(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InputProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasFocusedTextBox(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasFocusedTextBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxId(self: *@This()) core.HResult!TextBoxId {
        var _r: TextBoxId = undefined;
        const _c = self.vtable.get_FocusedTextBoxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        var _r: *TextBoxInfo = undefined;
        const _c = self.vtable.get_FocusedTextBoxInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxBounds(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_FocusedTextBoxBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_SelectionBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConversionMode(self: *@This()) core.HResult!TextConversionMode {
        var _r: TextConversionMode = undefined;
        const _c = self.vtable.get_ConversionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConversionMode(self: *@This(), value: TextConversionMode) core.HResult!void {
        const _c = self.vtable.put_ConversionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateEditSession(self: *@This()) core.HResult!*TextEditSession {
        var _r: *TextEditSession = undefined;
        const _c = self.vtable.CreateEditSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDeactivated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Deactivated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDeactivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Deactivated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addKeyEventReceived(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,KeyEventReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_KeyEventReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeKeyEventReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_KeyEventReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFocusEntered(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,FocusEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addConversionModeChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,ConversionModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConversionModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConversionModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConversionModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextBoxInfoChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextBoxInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextBoxInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextBoxInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextBoxContentChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextBoxContentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextBoxContentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextBoxContentChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompositionTerminated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CompositionTerminated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompositionTerminated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CompositionTerminated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReconversionRequested(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,ReconversionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReconversionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReconversionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReconversionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IKeyboardInputProcessor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2afe79b6-5818-50e0-8fa8-81bc96428c46";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputProfile: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasFocusedTextBox: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FocusedTextBoxId: *const fn(self: *anyopaque, _r: *TextBoxId) callconv(.winapi) HRESULT,
        get_FocusedTextBoxInfo: *const fn(self: *anyopaque, _r: **TextBoxInfo) callconv(.winapi) HRESULT,
        get_FocusedTextBoxBounds: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        get_SelectionBounds: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        get_ConversionMode: *const fn(self: *anyopaque, _r: *TextConversionMode) callconv(.winapi) HRESULT,
        put_ConversionMode: *const fn(self: *anyopaque, value: TextConversionMode) callconv(.winapi) HRESULT,
        CreateEditSession: *const fn(self: *anyopaque, _r: **TextEditSession) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Deactivated: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Deactivated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_KeyEventReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,KeyEventReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_KeyEventReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FocusEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,FocusEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FocusRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ConversionModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,ConversionModeChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConversionModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TextBoxInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxInfoChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextBoxInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TextBoxContentChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxContentChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextBoxContentChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CompositionTerminated: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CompositionTerminated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReconversionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardInputProcessor,ReconversionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReconversionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IReconversionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.IReconversionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73852244-d202-55fe-9edf-beb7ec19f937";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
    };
};
pub const ITextBoxContentChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTextBoxId(self: *@This()) core.HResult!TextBoxId {
        var _r: TextBoxId = undefined;
        const _c = self.vtable.get_TextBoxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSource(self: *@This()) core.HResult!TextChangeSource {
        var _r: TextChangeSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_SelectionBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsContentAttributeChanged(self: *@This(), value: TextBoxContentAttribute) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContentAttributeChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextBoxContentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cb70a41-5aed-58c5-b4c1-8ee4e1492f9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextBoxId: *const fn(self: *anyopaque, _r: *TextBoxId) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *TextChangeSource) callconv(.winapi) HRESULT,
        get_SelectionBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        IsContentAttributeChanged: *const fn(self: *anyopaque, value: TextBoxContentAttribute, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ITextBoxInfo = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!TextBoxId {
        var _r: TextBoxId = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        var _r: CoreTextInputScope = undefined;
        const _c = self.vtable.get_InputScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUrl(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Url(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSettings(self: *@This()) core.HResult!TextBoxSettings {
        var _r: TextBoxSettings = undefined;
        const _c = self.vtable.get_Settings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabledFeatures(self: *@This()) core.HResult!TextBoxFeatures {
        var _r: TextBoxFeatures = undefined;
        const _c = self.vtable.get_DisabledFeatures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextBoxInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b122443d-e8f7-5f8b-813d-aaa0941d5fa0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *TextBoxId) callconv(.winapi) HRESULT,
        get_InputScope: *const fn(self: *anyopaque, _r: *CoreTextInputScope) callconv(.winapi) HRESULT,
        get_AppName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Url: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Settings: *const fn(self: *anyopaque, _r: *TextBoxSettings) callconv(.winapi) HRESULT,
        get_DisabledFeatures: *const fn(self: *anyopaque, _r: *TextBoxFeatures) callconv(.winapi) HRESULT,
    };
};
pub const ITextBoxInfoChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        var _r: *TextBoxInfo = undefined;
        const _c = self.vtable.get_TextBoxInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextBoxInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac1275af-648c-5bac-b29f-d1ea17e9e6d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextBoxInfo: *const fn(self: *anyopaque, _r: **TextBoxInfo) callconv(.winapi) HRESULT,
    };
};
pub const ITextComposition = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstSegment(self: *@This()) core.HResult!*TextCompositionSegment {
        var _r: *TextCompositionSegment = undefined;
        const _c = self.vtable.get_FirstSegment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedSegment(self: *@This()) core.HResult!*TextCompositionSegment {
        var _r: *TextCompositionSegment = undefined;
        const _c = self.vtable.get_SelectedSegment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaretPosition(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CaretPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCaretPosition(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CaretPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertText(self: *@This(), text: HSTRING) core.HResult!*TextCompositionSegment {
        var _r: *TextCompositionSegment = undefined;
        const _c = self.vtable.InsertText(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompleteUnconverted(self: *@This()) core.HResult!void {
        const _c = self.vtable.CompleteUnconverted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CompleteFirstSegment(self: *@This()) core.HResult!void {
        const _c = self.vtable.CompleteFirstSegment(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextComposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5cea9aea-524d-50a4-b08a-c83d8d25ec6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstSegment: *const fn(self: *anyopaque, _r: **TextCompositionSegment) callconv(.winapi) HRESULT,
        get_SelectedSegment: *const fn(self: *anyopaque, _r: **TextCompositionSegment) callconv(.winapi) HRESULT,
        get_CaretPosition: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CaretPosition: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        InsertText: *const fn(self: *anyopaque, text: HSTRING, _r: **TextCompositionSegment) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CompleteUnconverted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CompleteFirstSegment: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITextCompositionSegment = extern struct {
    vtable: *const VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConvertedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ConvertedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConvertedText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ConvertedText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUnconvertedText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnconvertedText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnconvertedText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UnconvertedText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_Range(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConversionState(self: *@This()) core.HResult!CoreTextFormatUpdatingReason {
        var _r: CoreTextFormatUpdatingReason = undefined;
        const _c = self.vtable.get_ConversionState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConversionState(self: *@This(), value: CoreTextFormatUpdatingReason) core.HResult!void {
        const _c = self.vtable.put_ConversionState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNext(self: *@This()) core.HResult!*TextCompositionSegment {
        var _r: *TextCompositionSegment = undefined;
        const _c = self.vtable.get_Next(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrevious(self: *@This()) core.HResult!*TextCompositionSegment {
        var _r: *TextCompositionSegment = undefined;
        const _c = self.vtable.get_Previous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTextStyle(self: *@This()) core.HResult!TextStyle {
        var _r: TextStyle = undefined;
        const _c = self.vtable.GetTextStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTextStyle(self: *@This(), value: TextStyle) core.HResult!void {
        const _c = self.vtable.SetTextStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextCompositionSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0543f6c6-eb98-56d6-8808-2eca6d02f6a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ConvertedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ConvertedText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UnconvertedText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UnconvertedText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Range: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_ConversionState: *const fn(self: *anyopaque, _r: *CoreTextFormatUpdatingReason) callconv(.winapi) HRESULT,
        put_ConversionState: *const fn(self: *anyopaque, value: CoreTextFormatUpdatingReason) callconv(.winapi) HRESULT,
        get_Next: *const fn(self: *anyopaque, _r: **TextCompositionSegment) callconv(.winapi) HRESULT,
        get_Previous: *const fn(self: *anyopaque, _r: **TextCompositionSegment) callconv(.winapi) HRESULT,
        GetTextStyle: *const fn(self: *anyopaque, _r: *TextStyle) callconv(.winapi) HRESULT,
        SetTextStyle: *const fn(self: *anyopaque, value: TextStyle) callconv(.winapi) HRESULT,
    };
};
pub const ITextEditSession = extern struct {
    vtable: *const VTable,
    pub fn getTextBoxId(self: *@This()) core.HResult!TextBoxId {
        var _r: TextBoxId = undefined;
        const _c = self.vtable.get_TextBoxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TextLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPopulatedRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.get_PopulatedRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PopulateAsync(self: *@This(), range: CoreTextRange) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PopulateAsync(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetText(self: *@This(), range: CoreTextRange) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetText(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSelectedRange(self: *@This()) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.GetSelectedRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSelectedRange(self: *@This(), value: CoreTextRange) core.HResult!void {
        const _c = self.vtable.SetSelectedRange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReplaceText(self: *@This(), replaceRange: CoreTextRange, text: HSTRING) core.HResult!CoreTextRange {
        var _r: CoreTextRange = undefined;
        const _c = self.vtable.ReplaceText(@ptrCast(self), replaceRange, text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComposition(self: *@This()) core.HResult!*TextComposition {
        var _r: *TextComposition = undefined;
        const _c = self.vtable.get_Composition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartComposition(self: *@This()) core.HResult!*TextComposition {
        var _r: *TextComposition = undefined;
        const _c = self.vtable.StartComposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartReconversion(self: *@This(), range: CoreTextRange) core.HResult!*TextComposition {
        var _r: *TextComposition = undefined;
        const _c = self.vtable.StartReconversion(@ptrCast(self), range, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitPayload(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SubmitPayload(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SubmitPayloadAsync(self: *@This()) core.HResult!*IAsyncOperation(PayloadResult) {
        var _r: *IAsyncOperation(PayloadResult) = undefined;
        const _c = self.vtable.SubmitPayloadAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextEditSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bcad18a-d31b-5787-aff9-995ee743aea8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextBoxId: *const fn(self: *anyopaque, _r: *TextBoxId) callconv(.winapi) HRESULT,
        get_TextLength: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PopulatedRange: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        PopulateAsync: *const fn(self: *anyopaque, range: CoreTextRange, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetText: *const fn(self: *anyopaque, range: CoreTextRange, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetSelectedRange: *const fn(self: *anyopaque, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        SetSelectedRange: *const fn(self: *anyopaque, value: CoreTextRange) callconv(.winapi) HRESULT,
        ReplaceText: *const fn(self: *anyopaque, replaceRange: CoreTextRange, text: HSTRING, _r: *CoreTextRange) callconv(.winapi) HRESULT,
        get_Composition: *const fn(self: *anyopaque, _r: **TextComposition) callconv(.winapi) HRESULT,
        StartComposition: *const fn(self: *anyopaque, _r: **TextComposition) callconv(.winapi) HRESULT,
        StartReconversion: *const fn(self: *anyopaque, range: CoreTextRange, _r: **TextComposition) callconv(.winapi) HRESULT,
        SubmitPayload: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SubmitPayloadAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PayloadResult)) callconv(.winapi) HRESULT,
    };
};
pub const ITextInputProvider = extern struct {
    vtable: *const VTable,
    pub fn GetSubscription(self: *@This()) core.HResult!TextInputServiceSubscription {
        var _r: TextInputServiceSubscription = undefined;
        const _c = self.vtable.GetSubscription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSubscription(self: *@This(), subscription: TextInputServiceSubscription) core.HResult!void {
        const _c = self.vtable.SetSubscription(@ptrCast(self), subscription);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasFocusedTextBox(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasFocusedTextBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxId(self: *@This()) core.HResult!TextBoxId {
        var _r: TextBoxId = undefined;
        const _c = self.vtable.get_FocusedTextBoxId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        var _r: *TextBoxInfo = undefined;
        const _c = self.vtable.get_FocusedTextBoxInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusedTextBoxBounds(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_FocusedTextBoxBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_SelectionBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEditSession(self: *@This()) core.HResult!*TextEditSession {
        var _r: *TextEditSession = undefined;
        const _c = self.vtable.CreateEditSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStartDelegation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryStartDelegation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopDelegation(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopDelegation(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFocusEntered(self: *@This(), handler: *TypedEventHandler(TextInputProvider,FocusEnteredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(TextInputProvider,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextBoxInfoChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,TextBoxInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextBoxInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextBoxInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextBoxInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTextBoxContentChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,TextBoxContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextBoxContentChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextBoxContentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextBoxContentChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompositionTerminated(self: *@This(), handler: *TypedEventHandler(TextInputProvider,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CompositionTerminated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompositionTerminated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CompositionTerminated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReconversionRequested(self: *@This(), handler: *TypedEventHandler(TextInputProvider,ReconversionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReconversionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReconversionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReconversionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInputDelegationModeChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,InputDelegationModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InputDelegationModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInputDelegationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InputDelegationModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextInputProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0885fb7-e9f8-5849-b0ef-f8155ecf60d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSubscription: *const fn(self: *anyopaque, _r: *TextInputServiceSubscription) callconv(.winapi) HRESULT,
        SetSubscription: *const fn(self: *anyopaque, subscription: TextInputServiceSubscription) callconv(.winapi) HRESULT,
        get_HasFocusedTextBox: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FocusedTextBoxId: *const fn(self: *anyopaque, _r: *TextBoxId) callconv(.winapi) HRESULT,
        get_FocusedTextBoxInfo: *const fn(self: *anyopaque, _r: **TextBoxInfo) callconv(.winapi) HRESULT,
        get_FocusedTextBoxBounds: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        get_SelectionBounds: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        CreateEditSession: *const fn(self: *anyopaque, _r: **TextEditSession) callconv(.winapi) HRESULT,
        TryStartDelegation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        StopDelegation: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_FocusEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,FocusEnteredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FocusRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TextBoxInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,TextBoxInfoChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextBoxInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TextBoxContentChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,TextBoxContentChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextBoxContentChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CompositionTerminated: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CompositionTerminated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReconversionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,ReconversionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReconversionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_InputDelegationModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextInputProvider,InputDelegationModeChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InputDelegationModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITextInputService = extern struct {
    vtable: *const VTable,
    pub fn CreateKeyboardInputProcessor(self: *@This(), inputProfile: HSTRING) core.HResult!*KeyboardInputProcessor {
        var _r: *KeyboardInputProcessor = undefined;
        const _c = self.vtable.CreateKeyboardInputProcessor(@ptrCast(self), inputProfile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTextInputProvider(self: *@This(), inputProfile: HSTRING) core.HResult!*TextInputProvider {
        var _r: *TextInputProvider = undefined;
        const _c = self.vtable.CreateTextInputProvider(@ptrCast(self), inputProfile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextInputService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e23f89c-ab1f-551a-8751-7d4f29e34d88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateKeyboardInputProcessor: *const fn(self: *anyopaque, inputProfile: HSTRING, _r: **KeyboardInputProcessor) callconv(.winapi) HRESULT,
        CreateTextInputProvider: *const fn(self: *anyopaque, inputProfile: HSTRING, _r: **TextInputProvider) callconv(.winapi) HRESULT,
    };
};
pub const ITextInputServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentThread(self: *@This()) core.HResult!*TextInputService {
        var _r: *TextInputService = undefined;
        const _c = self.vtable.GetForCurrentThread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ITextInputServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91b68f5e-02ed-4e09-ae89-dfd735cf10bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentThread: *const fn(self: *anyopaque, _r: **TextInputService) callconv(.winapi) HRESULT,
    };
};
pub const InputDelegationModeChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDelegationOn(self: *@This()) core.HResult!bool {
        const this: *IInputDelegationModeChangedEventArgs = @ptrCast(self);
        return try this.getDelegationOn();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.InputDelegationModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputDelegationModeChangedEventArgs.GUID;
    pub const IID: Guid = IInputDelegationModeChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputDelegationModeChangedEventArgs.SIGNATURE);
};
pub const KeyEventDeviceType = enum(i32) {
    Undefined = 0,
    HardwareKeyboard = 1,
    SoftwareKeyboard = 2,
    Gamepad = 3,
    Injection = 4,
};
pub const KeyEventReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVirtualKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getVirtualKey();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getUnicode(self: *@This()) core.HResult!HSTRING {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getUnicode();
    }
    pub fn getSource(self: *@This()) core.HResult!KeyEventDeviceType {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getSource();
    }
    pub fn IsKeyPressed(self: *@This(), vkey: VirtualKey) core.HResult!bool {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.IsKeyPressed(vkey);
    }
    pub fn IsToggleKeyOn(self: *@This(), vkey: VirtualKey) core.HResult!bool {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.IsToggleKeyOn(vkey);
    }
    pub fn getEditSession(self: *@This()) core.HResult!*TextEditSession {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getEditSession();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IKeyEventReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.KeyEventReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyEventReceivedEventArgs.GUID;
    pub const IID: Guid = IKeyEventReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyEventReceivedEventArgs.SIGNATURE);
};
pub const KeyboardInputProcessor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputProfile(self: *@This()) core.HResult!HSTRING {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getInputProfile();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getHasFocusedTextBox(self: *@This()) core.HResult!bool {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getHasFocusedTextBox();
    }
    pub fn getFocusedTextBoxId(self: *@This()) core.HResult!TextBoxId {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getFocusedTextBoxId();
    }
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getFocusedTextBoxInfo();
    }
    pub fn getFocusedTextBoxBounds(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getFocusedTextBoxBounds();
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getSelectionBounds();
    }
    pub fn getConversionMode(self: *@This()) core.HResult!TextConversionMode {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.getConversionMode();
    }
    pub fn putConversionMode(self: *@This(), value: TextConversionMode) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.putConversionMode(value);
    }
    pub fn CreateEditSession(self: *@This()) core.HResult!*TextEditSession {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.CreateEditSession();
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeActivated(token);
    }
    pub fn addDeactivated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addDeactivated(handler);
    }
    pub fn removeDeactivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeDeactivated(token);
    }
    pub fn addKeyEventReceived(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,KeyEventReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addKeyEventReceived(handler);
    }
    pub fn removeKeyEventReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeKeyEventReceived(token);
    }
    pub fn addFocusEntered(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,FocusEnteredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addFocusEntered(handler);
    }
    pub fn removeFocusEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeFocusEntered(token);
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addFocusRemoved(handler);
    }
    pub fn removeFocusRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeFocusRemoved(token);
    }
    pub fn addConversionModeChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,ConversionModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addConversionModeChanged(handler);
    }
    pub fn removeConversionModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeConversionModeChanged(token);
    }
    pub fn addTextBoxInfoChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addTextBoxInfoChanged(handler);
    }
    pub fn removeTextBoxInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeTextBoxInfoChanged(token);
    }
    pub fn addTextBoxContentChanged(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,TextBoxContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addTextBoxContentChanged(handler);
    }
    pub fn removeTextBoxContentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeTextBoxContentChanged(token);
    }
    pub fn addCompositionTerminated(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addCompositionTerminated(handler);
    }
    pub fn removeCompositionTerminated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeCompositionTerminated(token);
    }
    pub fn addReconversionRequested(self: *@This(), handler: *TypedEventHandler(KeyboardInputProcessor,ReconversionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.addReconversionRequested(handler);
    }
    pub fn removeReconversionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardInputProcessor = @ptrCast(self);
        return try this.removeReconversionRequested(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.KeyboardInputProcessor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyboardInputProcessor.GUID;
    pub const IID: Guid = IKeyboardInputProcessor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyboardInputProcessor.SIGNATURE);
};
pub const PayloadResult = enum(i32) {
    InEditing = 0,
    Pending = 1,
    Completed = 2,
    Overridden = 3,
    Outrun = 4,
    Rejected = 5,
    Canceled = 6,
};
pub const ReconversionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *IReconversionRequestedEventArgs = @ptrCast(self);
        return try this.getRange();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.ReconversionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReconversionRequestedEventArgs.GUID;
    pub const IID: Guid = IReconversionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReconversionRequestedEventArgs.SIGNATURE);
};
pub const TextBoxContentAttribute = enum(i32) {
    None = 0,
    Selection = 1,
    Text = 2,
    Property = 3,
    Layout = 4,
};
pub const TextBoxContentChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextBoxId(self: *@This()) core.HResult!TextBoxId {
        const this: *ITextBoxContentChangedEventArgs = @ptrCast(self);
        return try this.getTextBoxId();
    }
    pub fn getSource(self: *@This()) core.HResult!TextChangeSource {
        const this: *ITextBoxContentChangedEventArgs = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!Rect {
        const this: *ITextBoxContentChangedEventArgs = @ptrCast(self);
        return try this.getSelectionBounds();
    }
    pub fn IsContentAttributeChanged(self: *@This(), value: TextBoxContentAttribute) core.HResult!bool {
        const this: *ITextBoxContentChangedEventArgs = @ptrCast(self);
        return try this.IsContentAttributeChanged(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextBoxContentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextBoxContentChangedEventArgs.GUID;
    pub const IID: Guid = ITextBoxContentChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextBoxContentChangedEventArgs.SIGNATURE);
};
pub const TextBoxFeatures = enum(i32) {
    None = 0,
    ReadText = 1,
    WriteText = 2,
    AugmentText = 4,
};
pub const TextBoxId = extern struct {
    Value: u32,
};
pub const TextBoxInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!TextBoxId {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getId();
    }
    pub fn getInputScope(self: *@This()) core.HResult!CoreTextInputScope {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getInputScope();
    }
    pub fn getAppName(self: *@This()) core.HResult!HSTRING {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getAppName();
    }
    pub fn getUrl(self: *@This()) core.HResult!HSTRING {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getUrl();
    }
    pub fn getSettings(self: *@This()) core.HResult!TextBoxSettings {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getSettings();
    }
    pub fn getDisabledFeatures(self: *@This()) core.HResult!TextBoxFeatures {
        const this: *ITextBoxInfo = @ptrCast(self);
        return try this.getDisabledFeatures();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextBoxInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextBoxInfo.GUID;
    pub const IID: Guid = ITextBoxInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextBoxInfo.SIGNATURE);
};
pub const TextBoxInfoChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        const this: *ITextBoxInfoChangedEventArgs = @ptrCast(self);
        return try this.getTextBoxInfo();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextBoxInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextBoxInfoChangedEventArgs.GUID;
    pub const IID: Guid = ITextBoxInfoChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextBoxInfoChangedEventArgs.SIGNATURE);
};
pub const TextBoxSettings = enum(i32) {
    None = 0,
    Private = 1,
    Multiline = 2,
    VerticalWriting = 4,
};
pub const TextChangeSource = enum(i32) {
    External = 0,
    HardwareKeyTyped = 1,
    SoftwareKeyTyped = 2,
    KeyboardImeInsertion = 3,
    OtherImeInsertion = 4,
    Reconversion = 5,
    AutoCompletion = 6,
    Mixed = 7,
};
pub const TextComposition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextComposition = @ptrCast(self);
        return try this.getText();
    }
    pub fn getFirstSegment(self: *@This()) core.HResult!*TextCompositionSegment {
        const this: *ITextComposition = @ptrCast(self);
        return try this.getFirstSegment();
    }
    pub fn getSelectedSegment(self: *@This()) core.HResult!*TextCompositionSegment {
        const this: *ITextComposition = @ptrCast(self);
        return try this.getSelectedSegment();
    }
    pub fn getCaretPosition(self: *@This()) core.HResult!u32 {
        const this: *ITextComposition = @ptrCast(self);
        return try this.getCaretPosition();
    }
    pub fn putCaretPosition(self: *@This(), value: u32) core.HResult!void {
        const this: *ITextComposition = @ptrCast(self);
        return try this.putCaretPosition(value);
    }
    pub fn InsertText(self: *@This(), text: HSTRING) core.HResult!*TextCompositionSegment {
        const this: *ITextComposition = @ptrCast(self);
        return try this.InsertText(text);
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ITextComposition = @ptrCast(self);
        return try this.Complete();
    }
    pub fn CompleteUnconverted(self: *@This()) core.HResult!void {
        const this: *ITextComposition = @ptrCast(self);
        return try this.CompleteUnconverted();
    }
    pub fn CompleteFirstSegment(self: *@This()) core.HResult!void {
        const this: *ITextComposition = @ptrCast(self);
        return try this.CompleteFirstSegment();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextComposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextComposition.GUID;
    pub const IID: Guid = ITextComposition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextComposition.SIGNATURE);
};
pub const TextCompositionSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getConvertedText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getConvertedText();
    }
    pub fn putConvertedText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.putConvertedText(value);
    }
    pub fn getUnconvertedText(self: *@This()) core.HResult!HSTRING {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getUnconvertedText();
    }
    pub fn putUnconvertedText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.putUnconvertedText(value);
    }
    pub fn getRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getRange();
    }
    pub fn getConversionState(self: *@This()) core.HResult!CoreTextFormatUpdatingReason {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getConversionState();
    }
    pub fn putConversionState(self: *@This(), value: CoreTextFormatUpdatingReason) core.HResult!void {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.putConversionState(value);
    }
    pub fn getNext(self: *@This()) core.HResult!*TextCompositionSegment {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getNext();
    }
    pub fn getPrevious(self: *@This()) core.HResult!*TextCompositionSegment {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.getPrevious();
    }
    pub fn GetTextStyle(self: *@This()) core.HResult!TextStyle {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.GetTextStyle();
    }
    pub fn SetTextStyle(self: *@This(), value: TextStyle) core.HResult!void {
        const this: *ITextCompositionSegment = @ptrCast(self);
        return try this.SetTextStyle(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextCompositionSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextCompositionSegment.GUID;
    pub const IID: Guid = ITextCompositionSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextCompositionSegment.SIGNATURE);
};
pub const TextConversionMode = enum(i32) {
    Undefined = 0,
    AlphanumericHalfWidth = 1,
    AlphanumericFullWidth = 2,
    NativeHalfWidth = 3,
    NativeFullWidth = 4,
    KatakanaHalfWidth = 5,
    KatakanaFullWidth = 6,
    NativeHalfWidthNativeSymbol = 7,
    NativeFullWidthNativeSymbol = 8,
    NoConversion = 9,
    RequestConversion = 10,
    NativeEudc = 11,
};
pub const TextEditSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextBoxId(self: *@This()) core.HResult!TextBoxId {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.getTextBoxId();
    }
    pub fn getTextLength(self: *@This()) core.HResult!i32 {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.getTextLength();
    }
    pub fn getPopulatedRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.getPopulatedRange();
    }
    pub fn PopulateAsync(self: *@This(), range: CoreTextRange) core.HResult!*IAsyncAction {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.PopulateAsync(range);
    }
    pub fn GetText(self: *@This(), range: CoreTextRange) core.HResult!HSTRING {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.GetText(range);
    }
    pub fn GetSelectedRange(self: *@This()) core.HResult!CoreTextRange {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.GetSelectedRange();
    }
    pub fn SetSelectedRange(self: *@This(), value: CoreTextRange) core.HResult!void {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.SetSelectedRange(value);
    }
    pub fn ReplaceText(self: *@This(), replaceRange: CoreTextRange, text: HSTRING) core.HResult!CoreTextRange {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.ReplaceText(replaceRange, text);
    }
    pub fn getComposition(self: *@This()) core.HResult!*TextComposition {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.getComposition();
    }
    pub fn StartComposition(self: *@This()) core.HResult!*TextComposition {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.StartComposition();
    }
    pub fn StartReconversion(self: *@This(), range: CoreTextRange) core.HResult!*TextComposition {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.StartReconversion(range);
    }
    pub fn SubmitPayload(self: *@This()) core.HResult!bool {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.SubmitPayload();
    }
    pub fn SubmitPayloadAsync(self: *@This()) core.HResult!*IAsyncOperation(PayloadResult) {
        const this: *ITextEditSession = @ptrCast(self);
        return try this.SubmitPayloadAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextEditSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextEditSession.GUID;
    pub const IID: Guid = ITextEditSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextEditSession.SIGNATURE);
};
pub const TextInputProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetSubscription(self: *@This()) core.HResult!TextInputServiceSubscription {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.GetSubscription();
    }
    pub fn SetSubscription(self: *@This(), subscription: TextInputServiceSubscription) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.SetSubscription(subscription);
    }
    pub fn getHasFocusedTextBox(self: *@This()) core.HResult!bool {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.getHasFocusedTextBox();
    }
    pub fn getFocusedTextBoxId(self: *@This()) core.HResult!TextBoxId {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.getFocusedTextBoxId();
    }
    pub fn getFocusedTextBoxInfo(self: *@This()) core.HResult!*TextBoxInfo {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.getFocusedTextBoxInfo();
    }
    pub fn getFocusedTextBoxBounds(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.getFocusedTextBoxBounds();
    }
    pub fn getSelectionBounds(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.getSelectionBounds();
    }
    pub fn CreateEditSession(self: *@This()) core.HResult!*TextEditSession {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.CreateEditSession();
    }
    pub fn TryStartDelegation(self: *@This()) core.HResult!bool {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.TryStartDelegation();
    }
    pub fn StopDelegation(self: *@This()) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.StopDelegation();
    }
    pub fn addFocusEntered(self: *@This(), handler: *TypedEventHandler(TextInputProvider,FocusEnteredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addFocusEntered(handler);
    }
    pub fn removeFocusEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeFocusEntered(token);
    }
    pub fn addFocusRemoved(self: *@This(), handler: *TypedEventHandler(TextInputProvider,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addFocusRemoved(handler);
    }
    pub fn removeFocusRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeFocusRemoved(token);
    }
    pub fn addTextBoxInfoChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,TextBoxInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addTextBoxInfoChanged(handler);
    }
    pub fn removeTextBoxInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeTextBoxInfoChanged(token);
    }
    pub fn addTextBoxContentChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,TextBoxContentChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addTextBoxContentChanged(handler);
    }
    pub fn removeTextBoxContentChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeTextBoxContentChanged(token);
    }
    pub fn addCompositionTerminated(self: *@This(), handler: *TypedEventHandler(TextInputProvider,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addCompositionTerminated(handler);
    }
    pub fn removeCompositionTerminated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeCompositionTerminated(token);
    }
    pub fn addReconversionRequested(self: *@This(), handler: *TypedEventHandler(TextInputProvider,ReconversionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addReconversionRequested(handler);
    }
    pub fn removeReconversionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeReconversionRequested(token);
    }
    pub fn addInputDelegationModeChanged(self: *@This(), handler: *TypedEventHandler(TextInputProvider,InputDelegationModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.addInputDelegationModeChanged(handler);
    }
    pub fn removeInputDelegationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITextInputProvider = @ptrCast(self);
        return try this.removeInputDelegationModeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextInputProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextInputProvider.GUID;
    pub const IID: Guid = ITextInputProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextInputProvider.SIGNATURE);
};
pub const TextInputService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateKeyboardInputProcessor(self: *@This(), inputProfile: HSTRING) core.HResult!*KeyboardInputProcessor {
        const this: *ITextInputService = @ptrCast(self);
        return try this.CreateKeyboardInputProcessor(inputProfile);
    }
    pub fn CreateTextInputProvider(self: *@This(), inputProfile: HSTRING) core.HResult!*TextInputProvider {
        const this: *ITextInputService = @ptrCast(self);
        return try this.CreateTextInputProvider(inputProfile);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentThread() core.HResult!*TextInputService {
        const factory = @This().ITextInputServiceStaticsCache.get();
        return try factory.GetForCurrentThread();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Preview.Text.TextInputService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextInputService.GUID;
    pub const IID: Guid = ITextInputService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextInputService.SIGNATURE);
    var _ITextInputServiceStaticsCache: FactoryCache(ITextInputServiceStatics, RUNTIME_NAME) = .{};
};
pub const TextInputServiceSubscription = extern struct {
    requiredEnabledFeatures: TextBoxFeatures,
    requiredDisabledFeatures: TextBoxFeatures,
};
pub const TextStyle = extern struct {
    mask: TextStyleAttributes,
    textColor: Color,
    backgroundColor: Color,
    underlineColor: Color,
    underlineType: UnderlineType,
};
pub const TextStyleAttributes = enum(i32) {
    None = 0,
    TextColor = 1,
    BackgroundColor = 2,
    UnderlineColor = 4,
    UnderlineType = 8,
};
const IUnknown = @import("../../../root.zig").IUnknown;
const Guid = @import("../../../root.zig").Guid;
const IReference = @import("../../../Foundation.zig").IReference;
const CoreTextFormatUpdatingReason = @import("../../Text/Core.zig").CoreTextFormatUpdatingReason;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const CoreTextRange = @import("../../Text/Core.zig").CoreTextRange;
const Rect = @import("../../../Foundation.zig").Rect;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
const CoreTextInputScope = @import("../../Text/Core.zig").CoreTextInputScope;
const CorePhysicalKeyStatus = @import("../../Core.zig").CorePhysicalKeyStatus;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const Color = @import("../../../UI.zig").Color;
const VirtualKey = @import("../../../System.zig").VirtualKey;
const UnderlineType = @import("../../Text.zig").UnderlineType;
const HRESULT = @import("../../../root.zig").HRESULT;
const IAsyncOperation = @import("../../../Foundation.zig").IAsyncOperation;
const core = @import("../../../root.zig").core;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../../Foundation.zig").IAsyncAction;
