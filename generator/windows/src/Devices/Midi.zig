pub const IMidiChannelPressureMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPressure(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiChannelPressureMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be1fa860-62b4-4d52-a37e-92e54d35b909";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiChannelPressureMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiChannelPressureMessage(self: *@This(), channel: u8, pressure: u8) core.HResult!*MidiChannelPressureMessage {
        var _r: *MidiChannelPressureMessage = undefined;
        const _c = self.vtable.CreateMidiChannelPressureMessage(@ptrCast(self), channel, pressure, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiChannelPressureMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6218ed2f-2284-412a-94cf-10fb04842c6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiChannelPressureMessage: *const fn(self: *anyopaque, channel: u8, pressure: u8, _r: **MidiChannelPressureMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiControlChangeMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getController(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControlValue(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_ControlValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiControlChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7e15f83-780d-405f-b781-3e1598c97f40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_ControlValue: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiControlChangeMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiControlChangeMessage(self: *@This(), channel: u8, controller: u8, controlValue: u8) core.HResult!*MidiControlChangeMessage {
        var _r: *MidiControlChangeMessage = undefined;
        const _c = self.vtable.CreateMidiControlChangeMessage(@ptrCast(self), channel, controller, controlValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiControlChangeMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ab14321-956c-46ad-9752-f87f55052fe3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiControlChangeMessage: *const fn(self: *anyopaque, channel: u8, controller: u8, controlValue: u8, _r: **MidiControlChangeMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiInPort = extern struct {
    vtable: *const VTable,
    pub fn addMessageReceived(self: *@This(), handler: *TypedEventHandler(MidiInPort,MidiMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiInPort";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5c1d9db-971a-4eaf-a23d-ea19fe607ff9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_MessageReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MidiInPort,MidiMessageReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMidiInPortStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(MidiInPort) {
        var _r: *IAsyncOperation(MidiInPort) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiInPortStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44c439dc-67ff-4a6e-8bac-fdb6610cf296";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(MidiInPort)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMidiMessage = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_RawData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var _r: MidiMessageType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79767945-1094-4283-9be0-289fc0ee8334";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_RawData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *MidiMessageType) callconv(.winapi) HRESULT,
    };
};
pub const IMidiMessageReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!*IMidiMessage {
        var _r: *IMidiMessage = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76566e56-f328-4b51-907d-b3a8ce96bf80";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: **IMidiMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiNoteOffMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Note(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocity(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Velocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiNoteOffMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16fd8af4-198e-4d8f-a654-d305a293548f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Note: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Velocity: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiNoteOffMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiNoteOffMessage(self: *@This(), channel: u8, note: u8, velocity: u8) core.HResult!*MidiNoteOffMessage {
        var _r: *MidiNoteOffMessage = undefined;
        const _c = self.vtable.CreateMidiNoteOffMessage(@ptrCast(self), channel, note, velocity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiNoteOffMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6b240e0-a749-425f-8af4-a4d979cc15b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiNoteOffMessage: *const fn(self: *anyopaque, channel: u8, note: u8, velocity: u8, _r: **MidiNoteOffMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiNoteOnMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Note(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocity(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Velocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiNoteOnMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0224af5-6181-46dd-afa2-410004c057aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Note: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Velocity: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiNoteOnMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiNoteOnMessage(self: *@This(), channel: u8, note: u8, velocity: u8) core.HResult!*MidiNoteOnMessage {
        var _r: *MidiNoteOnMessage = undefined;
        const _c = self.vtable.CreateMidiNoteOnMessage(@ptrCast(self), channel, note, velocity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiNoteOnMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b4280a0-59c1-420e-b517-15a10aa9606b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiNoteOnMessage: *const fn(self: *anyopaque, channel: u8, note: u8, velocity: u8, _r: **MidiNoteOnMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiOutPort = extern struct {
    vtable: *const VTable,
    pub fn SendMessage(self: *@This(), midiMessage: *IMidiMessage) core.HResult!void {
        const _c = self.vtable.SendMessage(@ptrCast(self), midiMessage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendBuffer(self: *@This(), midiData: *IBuffer) core.HResult!void {
        const _c = self.vtable.SendBuffer(@ptrCast(self), midiData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiOutPort";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "931d6d9f-57a2-4a3a-adb8-4640886f6693";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendMessage: *const fn(self: *anyopaque, midiMessage: *IMidiMessage) callconv(.winapi) HRESULT,
        SendBuffer: *const fn(self: *anyopaque, midiData: *IBuffer) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMidiOutPortStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(IMidiOutPort) {
        var _r: *IAsyncOperation(IMidiOutPort) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiOutPortStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "065cc3e9-0f88-448b-9b64-a95826c65b8f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(IMidiOutPort)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMidiPitchBendChangeMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBend(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Bend(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiPitchBendChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29df4cb1-2e9f-4faf-8c2b-9cb82a9079ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Bend: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IMidiPitchBendChangeMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiPitchBendChangeMessage(self: *@This(), channel: u8, bend: u16) core.HResult!*MidiPitchBendChangeMessage {
        var _r: *MidiPitchBendChangeMessage = undefined;
        const _c = self.vtable.CreateMidiPitchBendChangeMessage(@ptrCast(self), channel, bend, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiPitchBendChangeMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5eedf55-cfc8-4926-b30e-a3622393306c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiPitchBendChangeMessage: *const fn(self: *anyopaque, channel: u8, bend: u16, _r: **MidiPitchBendChangeMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiPolyphonicKeyPressureMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Note(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPressure(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Pressure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1f7337fe-ace8-48a0-868e-7cdbf20f04d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Note: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Pressure: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiPolyphonicKeyPressureMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiPolyphonicKeyPressureMessage(self: *@This(), channel: u8, note: u8, pressure: u8) core.HResult!*MidiPolyphonicKeyPressureMessage {
        var _r: *MidiPolyphonicKeyPressureMessage = undefined;
        const _c = self.vtable.CreateMidiPolyphonicKeyPressureMessage(@ptrCast(self), channel, note, pressure, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiPolyphonicKeyPressureMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e98f483e-c4b3-4dd2-917c-e349815a1b3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiPolyphonicKeyPressureMessage: *const fn(self: *anyopaque, channel: u8, note: u8, pressure: u8, _r: **MidiPolyphonicKeyPressureMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiProgramChangeMessage = extern struct {
    vtable: *const VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Channel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgram(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Program(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiProgramChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cbb3c78-7a3e-4327-aa98-20b8e4485af8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Channel: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Program: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiProgramChangeMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiProgramChangeMessage(self: *@This(), channel: u8, program: u8) core.HResult!*MidiProgramChangeMessage {
        var _r: *MidiProgramChangeMessage = undefined;
        const _c = self.vtable.CreateMidiProgramChangeMessage(@ptrCast(self), channel, program, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiProgramChangeMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6b04387-524b-4104-9c99-6572bfd2e261";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiProgramChangeMessage: *const fn(self: *anyopaque, channel: u8, program: u8, _r: **MidiProgramChangeMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSongPositionPointerMessage = extern struct {
    vtable: *const VTable,
    pub fn getBeats(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Beats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSongPositionPointerMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ca50c56-ec5e-4ae4-a115-88dc57cc2b79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Beats: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSongPositionPointerMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiSongPositionPointerMessage(self: *@This(), beats: u16) core.HResult!*MidiSongPositionPointerMessage {
        var _r: *MidiSongPositionPointerMessage = undefined;
        const _c = self.vtable.CreateMidiSongPositionPointerMessage(@ptrCast(self), beats, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSongPositionPointerMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c00e996-f10b-4fea-b395-f5d6cf80f64e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiSongPositionPointerMessage: *const fn(self: *anyopaque, beats: u16, _r: **MidiSongPositionPointerMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSongSelectMessage = extern struct {
    vtable: *const VTable,
    pub fn getSong(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Song(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSongSelectMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49f0f27f-6d83-4741-a5bf-4629f6be974f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Song: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSongSelectMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiSongSelectMessage(self: *@This(), song: u8) core.HResult!*MidiSongSelectMessage {
        var _r: *MidiSongSelectMessage = undefined;
        const _c = self.vtable.CreateMidiSongSelectMessage(@ptrCast(self), song, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSongSelectMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "848878e4-8748-4129-a66c-a05493f75daa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiSongSelectMessage: *const fn(self: *anyopaque, song: u8, _r: **MidiSongSelectMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSynthesizer = extern struct {
    vtable: *const VTable,
    pub fn getAudioDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_AudioDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Volume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Volume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSynthesizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0da155e-db90-405f-b8ae-21d2e17f2e45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioDevice: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Volume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSynthesizerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsync(self: *@This()) core.HResult!*IAsyncOperation(MidiSynthesizer) {
        var _r: *IAsyncOperation(MidiSynthesizer) = undefined;
        const _c = self.vtable.CreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsyncWithAudioDevice(self: *@This(), audioDevice: *DeviceInformation) core.HResult!*IAsyncOperation(MidiSynthesizer) {
        var _r: *IAsyncOperation(MidiSynthesizer) = undefined;
        const _c = self.vtable.CreateAsyncWithAudioDevice(@ptrCast(self), audioDevice, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSynthesizer(self: *@This(), midiDevice: *DeviceInformation) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSynthesizer(@ptrCast(self), midiDevice, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSynthesizerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4224eaa8-6629-4d6b-aa8f-d4521a5a31ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MidiSynthesizer)) callconv(.winapi) HRESULT,
        CreateAsyncWithAudioDevice: *const fn(self: *anyopaque, audioDevice: *DeviceInformation, _r: **IAsyncOperation(MidiSynthesizer)) callconv(.winapi) HRESULT,
        IsSynthesizer: *const fn(self: *anyopaque, midiDevice: *DeviceInformation, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMidiSystemExclusiveMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiSystemExclusiveMessage(self: *@This(), rawData: *IBuffer) core.HResult!*MidiSystemExclusiveMessage {
        var _r: *MidiSystemExclusiveMessage = undefined;
        const _c = self.vtable.CreateMidiSystemExclusiveMessage(@ptrCast(self), rawData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiSystemExclusiveMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "083de222-3b74-4320-9b42-0ca8545f8a24";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiSystemExclusiveMessage: *const fn(self: *anyopaque, rawData: *IBuffer, _r: **MidiSystemExclusiveMessage) callconv(.winapi) HRESULT,
    };
};
pub const IMidiTimeCodeMessage = extern struct {
    vtable: *const VTable,
    pub fn getFrameType(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_FrameType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValues(self: *@This()) core.HResult!u8 {
        var _r: u8 = undefined;
        const _c = self.vtable.get_Values(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiTimeCodeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bf7087d-fa63-4a1c-8deb-c0e87796a6d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameType: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
        get_Values: *const fn(self: *anyopaque, _r: *u8) callconv(.winapi) HRESULT,
    };
};
pub const IMidiTimeCodeMessageFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateMidiTimeCodeMessage(self: *@This(), frameType: u8, values: u8) core.HResult!*MidiTimeCodeMessage {
        var _r: *MidiTimeCodeMessage = undefined;
        const _c = self.vtable.CreateMidiTimeCodeMessage(@ptrCast(self), frameType, values, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.IMidiTimeCodeMessageFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb3099c5-771c-40de-b961-175a7489a85e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMidiTimeCodeMessage: *const fn(self: *anyopaque, frameType: u8, values: u8, _r: **MidiTimeCodeMessage) callconv(.winapi) HRESULT,
    };
};
pub const MidiActiveSensingMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiActiveSensingMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiChannelPressureMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiChannelPressureMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getPressure(self: *@This()) core.HResult!u8 {
        const this: *IMidiChannelPressureMessage = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiChannelPressureMessage(channel: u8, pressure: u8) core.HResult!*MidiChannelPressureMessage {
        const _f = @This().IMidiChannelPressureMessageFactoryCache.get();
        return try _f.CreateMidiChannelPressureMessage(channel, pressure);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiChannelPressureMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiChannelPressureMessage.GUID;
    pub const IID: Guid = IMidiChannelPressureMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiChannelPressureMessage.SIGNATURE);
    var _IMidiChannelPressureMessageFactoryCache: FactoryCache(IMidiChannelPressureMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiContinueMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiContinueMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiControlChangeMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiControlChangeMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getController(self: *@This()) core.HResult!u8 {
        const this: *IMidiControlChangeMessage = @ptrCast(self);
        return try this.getController();
    }
    pub fn getControlValue(self: *@This()) core.HResult!u8 {
        const this: *IMidiControlChangeMessage = @ptrCast(self);
        return try this.getControlValue();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiControlChangeMessage(channel: u8, controller: u8, controlValue: u8) core.HResult!*MidiControlChangeMessage {
        const _f = @This().IMidiControlChangeMessageFactoryCache.get();
        return try _f.CreateMidiControlChangeMessage(channel, controller, controlValue);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiControlChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiControlChangeMessage.GUID;
    pub const IID: Guid = IMidiControlChangeMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiControlChangeMessage.SIGNATURE);
    var _IMidiControlChangeMessageFactoryCache: FactoryCache(IMidiControlChangeMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiInPort = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addMessageReceived(self: *@This(), handler: *TypedEventHandler(MidiInPort,MidiMessageReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMidiInPort = @ptrCast(self);
        return try this.addMessageReceived(handler);
    }
    pub fn removeMessageReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMidiInPort = @ptrCast(self);
        return try this.removeMessageReceived(token);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMidiInPort = @ptrCast(self);
        return try this.getDeviceId();
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
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(MidiInPort) {
        const _f = @This().IMidiInPortStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IMidiInPortStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiInPort";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiInPort.GUID;
    pub const IID: Guid = IMidiInPort.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiInPort.SIGNATURE);
    var _IMidiInPortStaticsCache: FactoryCache(IMidiInPortStatics, RUNTIME_NAME) = .{};
};
pub const MidiMessageReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!*IMidiMessage {
        const this: *IMidiMessageReceivedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiMessageReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessageReceivedEventArgs.GUID;
    pub const IID: Guid = IMidiMessageReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessageReceivedEventArgs.SIGNATURE);
};
pub const MidiMessageType = enum(i32) {
    None = 0,
    NoteOff = 128,
    NoteOn = 144,
    PolyphonicKeyPressure = 160,
    ControlChange = 176,
    ProgramChange = 192,
    ChannelPressure = 208,
    PitchBendChange = 224,
    SystemExclusive = 240,
    MidiTimeCode = 241,
    SongPositionPointer = 242,
    SongSelect = 243,
    TuneRequest = 246,
    EndSystemExclusive = 247,
    TimingClock = 248,
    Start = 250,
    Continue = 251,
    Stop = 252,
    ActiveSensing = 254,
    SystemReset = 255,
};
pub const MidiNoteOffMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOffMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOffMessage = @ptrCast(self);
        return try this.getNote();
    }
    pub fn getVelocity(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOffMessage = @ptrCast(self);
        return try this.getVelocity();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiNoteOffMessage(channel: u8, note: u8, velocity: u8) core.HResult!*MidiNoteOffMessage {
        const _f = @This().IMidiNoteOffMessageFactoryCache.get();
        return try _f.CreateMidiNoteOffMessage(channel, note, velocity);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiNoteOffMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiNoteOffMessage.GUID;
    pub const IID: Guid = IMidiNoteOffMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiNoteOffMessage.SIGNATURE);
    var _IMidiNoteOffMessageFactoryCache: FactoryCache(IMidiNoteOffMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiNoteOnMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOnMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOnMessage = @ptrCast(self);
        return try this.getNote();
    }
    pub fn getVelocity(self: *@This()) core.HResult!u8 {
        const this: *IMidiNoteOnMessage = @ptrCast(self);
        return try this.getVelocity();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiNoteOnMessage(channel: u8, note: u8, velocity: u8) core.HResult!*MidiNoteOnMessage {
        const _f = @This().IMidiNoteOnMessageFactoryCache.get();
        return try _f.CreateMidiNoteOnMessage(channel, note, velocity);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiNoteOnMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiNoteOnMessage.GUID;
    pub const IID: Guid = IMidiNoteOnMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiNoteOnMessage.SIGNATURE);
    var _IMidiNoteOnMessageFactoryCache: FactoryCache(IMidiNoteOnMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiOutPort = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SendMessage(self: *@This(), midiMessage: *IMidiMessage) core.HResult!void {
        const this: *IMidiOutPort = @ptrCast(self);
        return try this.SendMessage(midiMessage);
    }
    pub fn SendBuffer(self: *@This(), midiData: *IBuffer) core.HResult!void {
        const this: *IMidiOutPort = @ptrCast(self);
        return try this.SendBuffer(midiData);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMidiOutPort = @ptrCast(self);
        return try this.getDeviceId();
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
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(IMidiOutPort) {
        const _f = @This().IMidiOutPortStaticsCache.get();
        return try _f.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IMidiOutPortStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiOutPort";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiOutPort.GUID;
    pub const IID: Guid = IMidiOutPort.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiOutPort.SIGNATURE);
    var _IMidiOutPortStaticsCache: FactoryCache(IMidiOutPortStatics, RUNTIME_NAME) = .{};
};
pub const MidiPitchBendChangeMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiPitchBendChangeMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getBend(self: *@This()) core.HResult!u16 {
        const this: *IMidiPitchBendChangeMessage = @ptrCast(self);
        return try this.getBend();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiPitchBendChangeMessage(channel: u8, bend: u16) core.HResult!*MidiPitchBendChangeMessage {
        const _f = @This().IMidiPitchBendChangeMessageFactoryCache.get();
        return try _f.CreateMidiPitchBendChangeMessage(channel, bend);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiPitchBendChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiPitchBendChangeMessage.GUID;
    pub const IID: Guid = IMidiPitchBendChangeMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiPitchBendChangeMessage.SIGNATURE);
    var _IMidiPitchBendChangeMessageFactoryCache: FactoryCache(IMidiPitchBendChangeMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiPolyphonicKeyPressureMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiPolyphonicKeyPressureMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getNote(self: *@This()) core.HResult!u8 {
        const this: *IMidiPolyphonicKeyPressureMessage = @ptrCast(self);
        return try this.getNote();
    }
    pub fn getPressure(self: *@This()) core.HResult!u8 {
        const this: *IMidiPolyphonicKeyPressureMessage = @ptrCast(self);
        return try this.getPressure();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiPolyphonicKeyPressureMessage(channel: u8, note: u8, pressure: u8) core.HResult!*MidiPolyphonicKeyPressureMessage {
        const _f = @This().IMidiPolyphonicKeyPressureMessageFactoryCache.get();
        return try _f.CreateMidiPolyphonicKeyPressureMessage(channel, note, pressure);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiPolyphonicKeyPressureMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiPolyphonicKeyPressureMessage.GUID;
    pub const IID: Guid = IMidiPolyphonicKeyPressureMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiPolyphonicKeyPressureMessage.SIGNATURE);
    var _IMidiPolyphonicKeyPressureMessageFactoryCache: FactoryCache(IMidiPolyphonicKeyPressureMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiProgramChangeMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChannel(self: *@This()) core.HResult!u8 {
        const this: *IMidiProgramChangeMessage = @ptrCast(self);
        return try this.getChannel();
    }
    pub fn getProgram(self: *@This()) core.HResult!u8 {
        const this: *IMidiProgramChangeMessage = @ptrCast(self);
        return try this.getProgram();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiProgramChangeMessage(channel: u8, program: u8) core.HResult!*MidiProgramChangeMessage {
        const _f = @This().IMidiProgramChangeMessageFactoryCache.get();
        return try _f.CreateMidiProgramChangeMessage(channel, program);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiProgramChangeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiProgramChangeMessage.GUID;
    pub const IID: Guid = IMidiProgramChangeMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiProgramChangeMessage.SIGNATURE);
    var _IMidiProgramChangeMessageFactoryCache: FactoryCache(IMidiProgramChangeMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiSongPositionPointerMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBeats(self: *@This()) core.HResult!u16 {
        const this: *IMidiSongPositionPointerMessage = @ptrCast(self);
        return try this.getBeats();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiSongPositionPointerMessage(beats: u16) core.HResult!*MidiSongPositionPointerMessage {
        const _f = @This().IMidiSongPositionPointerMessageFactoryCache.get();
        return try _f.CreateMidiSongPositionPointerMessage(beats);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiSongPositionPointerMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiSongPositionPointerMessage.GUID;
    pub const IID: Guid = IMidiSongPositionPointerMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiSongPositionPointerMessage.SIGNATURE);
    var _IMidiSongPositionPointerMessageFactoryCache: FactoryCache(IMidiSongPositionPointerMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiSongSelectMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSong(self: *@This()) core.HResult!u8 {
        const this: *IMidiSongSelectMessage = @ptrCast(self);
        return try this.getSong();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiSongSelectMessage(song: u8) core.HResult!*MidiSongSelectMessage {
        const _f = @This().IMidiSongSelectMessageFactoryCache.get();
        return try _f.CreateMidiSongSelectMessage(song);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiSongSelectMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiSongSelectMessage.GUID;
    pub const IID: Guid = IMidiSongSelectMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiSongSelectMessage.SIGNATURE);
    var _IMidiSongSelectMessageFactoryCache: FactoryCache(IMidiSongSelectMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiStartMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiStartMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiStopMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiStopMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiSynthesizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioDevice(self: *@This()) core.HResult!*DeviceInformation {
        const this: *IMidiSynthesizer = @ptrCast(self);
        return try this.getAudioDevice();
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        const this: *IMidiSynthesizer = @ptrCast(self);
        return try this.getVolume();
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const this: *IMidiSynthesizer = @ptrCast(self);
        return try this.putVolume(value);
    }
    pub fn SendMessage(self: *@This(), midiMessage: *IMidiMessage) core.HResult!void {
        var this: ?*IMidiOutPort = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiOutPort.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SendMessage(midiMessage);
    }
    pub fn SendBuffer(self: *@This(), midiData: *IBuffer) core.HResult!void {
        var this: ?*IMidiOutPort = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiOutPort.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SendBuffer(midiData);
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMidiOutPort = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiOutPort.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
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
    pub fn CreateAsync() core.HResult!*IAsyncOperation(MidiSynthesizer) {
        const _f = @This().IMidiSynthesizerStaticsCache.get();
        return try _f.CreateAsync();
    }
    pub fn CreateAsyncWithAudioDevice(audioDevice: *DeviceInformation) core.HResult!*IAsyncOperation(MidiSynthesizer) {
        const _f = @This().IMidiSynthesizerStaticsCache.get();
        return try _f.CreateAsyncWithAudioDevice(audioDevice);
    }
    pub fn IsSynthesizer(midiDevice: *DeviceInformation) core.HResult!bool {
        const _f = @This().IMidiSynthesizerStaticsCache.get();
        return try _f.IsSynthesizer(midiDevice);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiSynthesizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiSynthesizer.GUID;
    pub const IID: Guid = IMidiSynthesizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiSynthesizer.SIGNATURE);
    var _IMidiSynthesizerStaticsCache: FactoryCache(IMidiSynthesizerStatics, RUNTIME_NAME) = .{};
};
pub const MidiSystemExclusiveMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiSystemExclusiveMessage(rawData: *IBuffer) core.HResult!*MidiSystemExclusiveMessage {
        const _f = @This().IMidiSystemExclusiveMessageFactoryCache.get();
        return try _f.CreateMidiSystemExclusiveMessage(rawData);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiSystemExclusiveMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IMidiSystemExclusiveMessageFactoryCache: FactoryCache(IMidiSystemExclusiveMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiSystemResetMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiSystemResetMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiTimeCodeMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameType(self: *@This()) core.HResult!u8 {
        const this: *IMidiTimeCodeMessage = @ptrCast(self);
        return try this.getFrameType();
    }
    pub fn getValues(self: *@This()) core.HResult!u8 {
        const this: *IMidiTimeCodeMessage = @ptrCast(self);
        return try this.getValues();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        var this: ?*IMidiMessage = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMidiMessage.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateMidiTimeCodeMessage(frameType: u8, values: u8) core.HResult!*MidiTimeCodeMessage {
        const _f = @This().IMidiTimeCodeMessageFactoryCache.get();
        return try _f.CreateMidiTimeCodeMessage(frameType, values);
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiTimeCodeMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiTimeCodeMessage.GUID;
    pub const IID: Guid = IMidiTimeCodeMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiTimeCodeMessage.SIGNATURE);
    var _IMidiTimeCodeMessageFactoryCache: FactoryCache(IMidiTimeCodeMessageFactory, RUNTIME_NAME) = .{};
};
pub const MidiTimingClockMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiTimingClockMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MidiTuneRequestMessage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getRawData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getRawData();
    }
    pub fn getType(self: *@This()) core.HResult!MidiMessageType {
        const this: *IMidiMessage = @ptrCast(self);
        return try this.getType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMidiMessage.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.Midi.MidiTuneRequestMessage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMidiMessage.GUID;
    pub const IID: Guid = IMidiMessage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMidiMessage.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const DeviceInformation = @import("./Enumeration.zig").DeviceInformation;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
