pub const IMiracastReceiver = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultSettings(self: *@This()) core.HResult!*MiracastReceiverSettings {
        var _r: *MiracastReceiverSettings = undefined;
        const _c = self.vtable.GetDefaultSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentSettings(self: *@This()) core.HResult!*MiracastReceiverSettings {
        var _r: *MiracastReceiverSettings = undefined;
        const _c = self.vtable.GetCurrentSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentSettingsAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverSettings) {
        var _r: *IAsyncOperation(MiracastReceiverSettings) = undefined;
        const _c = self.vtable.GetCurrentSettingsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectAllAndApplySettings(self: *@This(), settings: *MiracastReceiverSettings) core.HResult!*MiracastReceiverApplySettingsResult {
        var _r: *MiracastReceiverApplySettingsResult = undefined;
        const _c = self.vtable.DisconnectAllAndApplySettings(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectAllAndApplySettingsAsync(self: *@This(), settings: *MiracastReceiverSettings) core.HResult!*IAsyncOperation(MiracastReceiverApplySettingsResult) {
        var _r: *IAsyncOperation(MiracastReceiverApplySettingsResult) = undefined;
        const _c = self.vtable.DisconnectAllAndApplySettingsAsync(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatus(self: *@This()) core.HResult!*MiracastReceiverStatus {
        var _r: *MiracastReceiverStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverStatus) {
        var _r: *IAsyncOperation(MiracastReceiverStatus) = undefined;
        const _c = self.vtable.GetStatusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateSession(self: *@This(), view: *CoreApplicationView) core.HResult!*MiracastReceiverSession {
        var _r: *MiracastReceiverSession = undefined;
        const _c = self.vtable.CreateSession(@ptrCast(self), view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSessionAsync(self: *@This(), view: *CoreApplicationView) core.HResult!*IAsyncOperation(MiracastReceiverSession) {
        var _r: *IAsyncOperation(MiracastReceiverSession) = undefined;
        const _c = self.vtable.CreateSessionAsync(@ptrCast(self), view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearKnownTransmitters(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearKnownTransmitters(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveKnownTransmitter(self: *@This(), transmitter: *MiracastTransmitter) core.HResult!void {
        const _c = self.vtable.RemoveKnownTransmitter(@ptrCast(self), transmitter);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a315258-e444-51b4-aff7-b88daa1229e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultSettings: *const fn(self: *anyopaque, _r: **MiracastReceiverSettings) callconv(.winapi) HRESULT,
        GetCurrentSettings: *const fn(self: *anyopaque, _r: **MiracastReceiverSettings) callconv(.winapi) HRESULT,
        GetCurrentSettingsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MiracastReceiverSettings)) callconv(.winapi) HRESULT,
        DisconnectAllAndApplySettings: *const fn(self: *anyopaque, settings: *MiracastReceiverSettings, _r: **MiracastReceiverApplySettingsResult) callconv(.winapi) HRESULT,
        DisconnectAllAndApplySettingsAsync: *const fn(self: *anyopaque, settings: *MiracastReceiverSettings, _r: **IAsyncOperation(MiracastReceiverApplySettingsResult)) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, _r: **MiracastReceiverStatus) callconv(.winapi) HRESULT,
        GetStatusAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MiracastReceiverStatus)) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateSession: *const fn(self: *anyopaque, view: *CoreApplicationView, _r: **MiracastReceiverSession) callconv(.winapi) HRESULT,
        CreateSessionAsync: *const fn(self: *anyopaque, view: *CoreApplicationView, _r: **IAsyncOperation(MiracastReceiverSession)) callconv(.winapi) HRESULT,
        ClearKnownTransmitters: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RemoveKnownTransmitter: *const fn(self: *anyopaque, transmitter: *MiracastTransmitter) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverApplySettingsResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MiracastReceiverApplySettingsStatus {
        var _r: MiracastReceiverApplySettingsStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverApplySettingsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0aa6272-09cd-58e1-a4f2-5d5143d312f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MiracastReceiverApplySettingsStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverConnection = extern struct {
    vtable: *const VTable,
    pub fn Disconnect(self: *@This(), reason: MiracastReceiverDisconnectReason) core.HResult!void {
        const _c = self.vtable.Disconnect(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Disconnect(self: *@This(), reason: MiracastReceiverDisconnectReason, message: HSTRING) core.HResult!void {
        const _c = self.vtable.Disconnect(@ptrCast(self), reason, message);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PauseAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PauseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResumeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResumeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransmitter(self: *@This()) core.HResult!*MiracastTransmitter {
        var _r: *MiracastTransmitter = undefined;
        const _c = self.vtable.get_Transmitter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputDevices(self: *@This()) core.HResult!*MiracastReceiverInputDevices {
        var _r: *MiracastReceiverInputDevices = undefined;
        const _c = self.vtable.get_InputDevices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCursorImageChannel(self: *@This()) core.HResult!*MiracastReceiverCursorImageChannel {
        var _r: *MiracastReceiverCursorImageChannel = undefined;
        const _c = self.vtable.get_CursorImageChannel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreamControl(self: *@This()) core.HResult!*MiracastReceiverStreamControl {
        var _r: *MiracastReceiverStreamControl = undefined;
        const _c = self.vtable.get_StreamControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "704b2f36-d2e5-551f-a854-f822b7917d28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Disconnect: *const fn(self: *anyopaque, reason: MiracastReceiverDisconnectReason) callconv(.winapi) HRESULT,
        Disconnect: *const fn(self: *anyopaque, reason: MiracastReceiverDisconnectReason, message: HSTRING) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PauseAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ResumeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Transmitter: *const fn(self: *anyopaque, _r: **MiracastTransmitter) callconv(.winapi) HRESULT,
        get_InputDevices: *const fn(self: *anyopaque, _r: **MiracastReceiverInputDevices) callconv(.winapi) HRESULT,
        get_CursorImageChannel: *const fn(self: *anyopaque, _r: **MiracastReceiverCursorImageChannel) callconv(.winapi) HRESULT,
        get_StreamControl: *const fn(self: *anyopaque, _r: **MiracastReceiverStreamControl) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverConnectionCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        var _r: *MiracastReceiverConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPin(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Pin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverConnectionCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d8dfa39-307a-5c0f-94bd-d0c69d169982";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **MiracastReceiverConnection) callconv(.winapi) HRESULT,
        get_Pin: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverCursorImageChannel = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxImageSize(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_MaxImageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!PointInt32 {
        var _r: PointInt32 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageStream(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_ImageStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addImageStreamChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImageStreamChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImageStreamChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImageStreamChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPositionChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverCursorImageChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9ac332d-723a-5a9d-b90a-81153efa2a0f";
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
        get_MaxImageSize: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *PointInt32) callconv(.winapi) HRESULT,
        get_ImageStream: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        add_ImageStreamChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImageStreamChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PositionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverCursorImageChannelSettings = extern struct {
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
    pub fn getMaxImageSize(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_MaxImageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxImageSize(self: *@This(), value: SizeInt32) core.HResult!void {
        const _c = self.vtable.put_MaxImageSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverCursorImageChannelSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccdbedff-bd00-5b9c-8e4c-00cacf86b634";
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
        get_MaxImageSize: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        put_MaxImageSize: *const fn(self: *anyopaque, value: SizeInt32) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverDisconnectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        var _r: *MiracastReceiverConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9a15e5e-5fee-57e6-b4b0-04727db93229";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **MiracastReceiverConnection) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverGameControllerDevice = extern struct {
    vtable: *const VTable,
    pub fn getTransmitInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransmitInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransmitInput(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TransmitInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRequestedByTransmitter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequestedByTransmitter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTransmittingInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransmittingInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!MiracastReceiverGameControllerDeviceUsageMode {
        var _r: MiracastReceiverGameControllerDeviceUsageMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: MiracastReceiverGameControllerDeviceUsageMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverGameControllerDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverGameControllerDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d7171e8-bed4-5118-a058-e2477eb5888d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransmitInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TransmitInput: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRequestedByTransmitter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTransmittingInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *MiracastReceiverGameControllerDeviceUsageMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: MiracastReceiverGameControllerDeviceUsageMode) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverGameControllerDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverInputDevices = extern struct {
    vtable: *const VTable,
    pub fn getKeyboard(self: *@This()) core.HResult!*MiracastReceiverKeyboardDevice {
        var _r: *MiracastReceiverKeyboardDevice = undefined;
        const _c = self.vtable.get_Keyboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGameController(self: *@This()) core.HResult!*MiracastReceiverGameControllerDevice {
        var _r: *MiracastReceiverGameControllerDevice = undefined;
        const _c = self.vtable.get_GameController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverInputDevices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da35bb02-28aa-5ee8-96f5-a42901c66f00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Keyboard: *const fn(self: *anyopaque, _r: **MiracastReceiverKeyboardDevice) callconv(.winapi) HRESULT,
        get_GameController: *const fn(self: *anyopaque, _r: **MiracastReceiverGameControllerDevice) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverKeyboardDevice = extern struct {
    vtable: *const VTable,
    pub fn getTransmitInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TransmitInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransmitInput(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TransmitInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRequestedByTransmitter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRequestedByTransmitter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTransmittingInput(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransmittingInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverKeyboardDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverKeyboardDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "beb67272-06c0-54ff-ac96-217464ff2501";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TransmitInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TransmitInput: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRequestedByTransmitter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTransmittingInput: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverKeyboardDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverMediaSourceCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        var _r: *MiracastReceiverConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.get_MediaSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCursorImageChannelSettings(self: *@This()) core.HResult!*MiracastReceiverCursorImageChannelSettings {
        var _r: *MiracastReceiverCursorImageChannelSettings = undefined;
        const _c = self.vtable.get_CursorImageChannelSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverMediaSourceCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17cf519e-1246-531d-945a-6b158e39c3aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **MiracastReceiverConnection) callconv(.winapi) HRESULT,
        get_MediaSource: *const fn(self: *anyopaque, _r: **MediaSource) callconv(.winapi) HRESULT,
        get_CursorImageChannelSettings: *const fn(self: *anyopaque, _r: **MiracastReceiverCursorImageChannelSettings) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverSession = extern struct {
    vtable: *const VTable,
    pub fn addConnectionCreated(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverConnectionCreatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ConnectionCreated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConnectionCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ConnectionCreated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMediaSourceCreated(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverMediaSourceCreatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaSourceCreated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaSourceCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaSourceCreated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Disconnected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Disconnected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowConnectionTakeover(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowConnectionTakeover(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowConnectionTakeover(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowConnectionTakeover(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSimultaneousConnections(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxSimultaneousConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSimultaneousConnections(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MaxSimultaneousConnections(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!*MiracastReceiverSessionStartResult {
        var _r: *MiracastReceiverSessionStartResult = undefined;
        const _c = self.vtable.Start(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverSessionStartResult) {
        var _r: *IAsyncOperation(MiracastReceiverSessionStartResult) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d2bcdb4-ef8b-5209-bfc9-c32116504803";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ConnectionCreated: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverConnectionCreatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ConnectionCreated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MediaSourceCreated: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverMediaSourceCreatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaSourceCreated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Disconnected: *const fn(self: *anyopaque, handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverDisconnectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Disconnected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AllowConnectionTakeover: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowConnectionTakeover: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaxSimultaneousConnections: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MaxSimultaneousConnections: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque, _r: **MiracastReceiverSessionStartResult) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MiracastReceiverSessionStartResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverSessionStartResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MiracastReceiverSessionStartStatus {
        var _r: MiracastReceiverSessionStartStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverSessionStartResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7c573ee-40ca-51ff-95f2-c9de34f2e90e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MiracastReceiverSessionStartStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverSettings = extern struct {
    vtable: *const VTable,
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FriendlyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModelName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ModelName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModelNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModelNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ModelNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthorizationMethod(self: *@This()) core.HResult!MiracastReceiverAuthorizationMethod {
        var _r: MiracastReceiverAuthorizationMethod = undefined;
        const _c = self.vtable.get_AuthorizationMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthorizationMethod(self: *@This(), value: MiracastReceiverAuthorizationMethod) core.HResult!void {
        const _c = self.vtable.put_AuthorizationMethod(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRequireAuthorizationFromKnownTransmitters(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequireAuthorizationFromKnownTransmitters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRequireAuthorizationFromKnownTransmitters(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RequireAuthorizationFromKnownTransmitters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57cd2f24-c55a-5fbe-9464-eb05307705dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ModelName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ModelName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ModelNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ModelNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AuthorizationMethod: *const fn(self: *anyopaque, _r: *MiracastReceiverAuthorizationMethod) callconv(.winapi) HRESULT,
        put_AuthorizationMethod: *const fn(self: *anyopaque, value: MiracastReceiverAuthorizationMethod) callconv(.winapi) HRESULT,
        get_RequireAuthorizationFromKnownTransmitters: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RequireAuthorizationFromKnownTransmitters: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverStatus = extern struct {
    vtable: *const VTable,
    pub fn getListeningStatus(self: *@This()) core.HResult!MiracastReceiverListeningStatus {
        var _r: MiracastReceiverListeningStatus = undefined;
        const _c = self.vtable.get_ListeningStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWiFiStatus(self: *@This()) core.HResult!MiracastReceiverWiFiStatus {
        var _r: MiracastReceiverWiFiStatus = undefined;
        const _c = self.vtable.get_WiFiStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConnectionTakeoverSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnectionTakeoverSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSimultaneousConnections(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxSimultaneousConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnownTransmitters(self: *@This()) core.HResult!*IVectorView(MiracastTransmitter) {
        var _r: *IVectorView(MiracastTransmitter) = undefined;
        const _c = self.vtable.get_KnownTransmitters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c28a5591-23ab-519e-ad09-90bff6dcc87e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ListeningStatus: *const fn(self: *anyopaque, _r: *MiracastReceiverListeningStatus) callconv(.winapi) HRESULT,
        get_WiFiStatus: *const fn(self: *anyopaque, _r: *MiracastReceiverWiFiStatus) callconv(.winapi) HRESULT,
        get_IsConnectionTakeoverSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxSimultaneousConnections: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_KnownTransmitters: *const fn(self: *anyopaque, _r: **IVectorView(MiracastTransmitter)) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverStreamControl = extern struct {
    vtable: *const VTable,
    pub fn GetVideoStreamSettings(self: *@This()) core.HResult!*MiracastReceiverVideoStreamSettings {
        var _r: *MiracastReceiverVideoStreamSettings = undefined;
        const _c = self.vtable.GetVideoStreamSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVideoStreamSettingsAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverVideoStreamSettings) {
        var _r: *IAsyncOperation(MiracastReceiverVideoStreamSettings) = undefined;
        const _c = self.vtable.GetVideoStreamSettingsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SuggestVideoStreamSettings(self: *@This(), settings: *MiracastReceiverVideoStreamSettings) core.HResult!void {
        const _c = self.vtable.SuggestVideoStreamSettings(@ptrCast(self), settings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SuggestVideoStreamSettingsAsync(self: *@This(), settings: *MiracastReceiverVideoStreamSettings) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SuggestVideoStreamSettingsAsync(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMuteAudio(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_MuteAudio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMuteAudio(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_MuteAudio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverStreamControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38ea2d8b-2769-5ad7-8a8a-254b9df7ba82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetVideoStreamSettings: *const fn(self: *anyopaque, _r: **MiracastReceiverVideoStreamSettings) callconv(.winapi) HRESULT,
        GetVideoStreamSettingsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MiracastReceiverVideoStreamSettings)) callconv(.winapi) HRESULT,
        SuggestVideoStreamSettings: *const fn(self: *anyopaque, settings: *MiracastReceiverVideoStreamSettings) callconv(.winapi) HRESULT,
        SuggestVideoStreamSettingsAsync: *const fn(self: *anyopaque, settings: *MiracastReceiverVideoStreamSettings, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_MuteAudio: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MuteAudio: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastReceiverVideoStreamSettings = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: SizeInt32) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitrate(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitrate(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Bitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastReceiverVideoStreamSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "169b5e1b-149d-52d0-b126-6f89744e4f50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: SizeInt32) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Bitrate: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IMiracastTransmitter = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuthorizationStatus(self: *@This()) core.HResult!MiracastTransmitterAuthorizationStatus {
        var _r: MiracastTransmitterAuthorizationStatus = undefined;
        const _c = self.vtable.get_AuthorizationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthorizationStatus(self: *@This(), value: MiracastTransmitterAuthorizationStatus) core.HResult!void {
        const _c = self.vtable.put_AuthorizationStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetConnections(self: *@This()) core.HResult!*IVectorView(MiracastReceiverConnection) {
        var _r: *IVectorView(MiracastReceiverConnection) = undefined;
        const _c = self.vtable.GetConnections(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMacAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MacAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastConnectionTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastConnectionTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.IMiracastTransmitter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "342d79fd-2e64-5508-8a30-833d1eac70d0";
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
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AuthorizationStatus: *const fn(self: *anyopaque, _r: *MiracastTransmitterAuthorizationStatus) callconv(.winapi) HRESULT,
        put_AuthorizationStatus: *const fn(self: *anyopaque, value: MiracastTransmitterAuthorizationStatus) callconv(.winapi) HRESULT,
        GetConnections: *const fn(self: *anyopaque, _r: **IVectorView(MiracastReceiverConnection)) callconv(.winapi) HRESULT,
        get_MacAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LastConnectionTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const MiracastReceiver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDefaultSettings(self: *@This()) core.HResult!*MiracastReceiverSettings {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.GetDefaultSettings();
    }
    pub fn GetCurrentSettings(self: *@This()) core.HResult!*MiracastReceiverSettings {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.GetCurrentSettings();
    }
    pub fn GetCurrentSettingsAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverSettings) {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.GetCurrentSettingsAsync();
    }
    pub fn DisconnectAllAndApplySettings(self: *@This(), settings: *MiracastReceiverSettings) core.HResult!*MiracastReceiverApplySettingsResult {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.DisconnectAllAndApplySettings(settings);
    }
    pub fn DisconnectAllAndApplySettingsAsync(self: *@This(), settings: *MiracastReceiverSettings) core.HResult!*IAsyncOperation(MiracastReceiverApplySettingsResult) {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.DisconnectAllAndApplySettingsAsync(settings);
    }
    pub fn GetStatus(self: *@This()) core.HResult!*MiracastReceiverStatus {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.GetStatus();
    }
    pub fn GetStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverStatus) {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.GetStatusAsync();
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn CreateSession(self: *@This(), view: *CoreApplicationView) core.HResult!*MiracastReceiverSession {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.CreateSession(view);
    }
    pub fn CreateSessionAsync(self: *@This(), view: *CoreApplicationView) core.HResult!*IAsyncOperation(MiracastReceiverSession) {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.CreateSessionAsync(view);
    }
    pub fn ClearKnownTransmitters(self: *@This()) core.HResult!void {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.ClearKnownTransmitters();
    }
    pub fn RemoveKnownTransmitter(self: *@This(), transmitter: *MiracastTransmitter) core.HResult!void {
        const this: *IMiracastReceiver = @ptrCast(self);
        return try this.RemoveKnownTransmitter(transmitter);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMiracastReceiver.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiver.GUID;
    pub const IID: Guid = IMiracastReceiver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiver.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MiracastReceiverApplySettingsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MiracastReceiverApplySettingsStatus {
        const this: *IMiracastReceiverApplySettingsResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMiracastReceiverApplySettingsResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverApplySettingsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverApplySettingsResult.GUID;
    pub const IID: Guid = IMiracastReceiverApplySettingsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverApplySettingsResult.SIGNATURE);
};
pub const MiracastReceiverApplySettingsStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    MiracastNotSupported = 2,
    AccessDenied = 3,
    FriendlyNameTooLong = 4,
    ModelNameTooLong = 5,
    ModelNumberTooLong = 6,
    InvalidSettings = 7,
};
pub const MiracastReceiverAuthorizationMethod = enum(i32) {
    None = 0,
    ConfirmConnection = 1,
    PinDisplayIfRequested = 2,
    PinDisplayRequired = 3,
};
pub const MiracastReceiverConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Disconnect(self: *@This(), reason: MiracastReceiverDisconnectReason) core.HResult!void {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.Disconnect(reason);
    }
    pub fn Disconnect(self: *@This(), reason: MiracastReceiverDisconnectReason, message: HSTRING) core.HResult!void {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.Disconnect(reason, message);
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.Pause();
    }
    pub fn PauseAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.PauseAsync();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.Resume();
    }
    pub fn ResumeAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.ResumeAsync();
    }
    pub fn getTransmitter(self: *@This()) core.HResult!*MiracastTransmitter {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.getTransmitter();
    }
    pub fn getInputDevices(self: *@This()) core.HResult!*MiracastReceiverInputDevices {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.getInputDevices();
    }
    pub fn getCursorImageChannel(self: *@This()) core.HResult!*MiracastReceiverCursorImageChannel {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.getCursorImageChannel();
    }
    pub fn getStreamControl(self: *@This()) core.HResult!*MiracastReceiverStreamControl {
        const this: *IMiracastReceiverConnection = @ptrCast(self);
        return try this.getStreamControl();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverConnection.GUID;
    pub const IID: Guid = IMiracastReceiverConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverConnection.SIGNATURE);
};
pub const MiracastReceiverConnectionCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        const this: *IMiracastReceiverConnectionCreatedEventArgs = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn getPin(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastReceiverConnectionCreatedEventArgs = @ptrCast(self);
        return try this.getPin();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMiracastReceiverConnectionCreatedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverConnectionCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverConnectionCreatedEventArgs.GUID;
    pub const IID: Guid = IMiracastReceiverConnectionCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverConnectionCreatedEventArgs.SIGNATURE);
};
pub const MiracastReceiverCursorImageChannel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getMaxImageSize(self: *@This()) core.HResult!SizeInt32 {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.getMaxImageSize();
    }
    pub fn getPosition(self: *@This()) core.HResult!PointInt32 {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getImageStream(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.getImageStream();
    }
    pub fn addImageStreamChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.addImageStreamChanged(handler);
    }
    pub fn removeImageStreamChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.removeImageStreamChanged(token);
    }
    pub fn addPositionChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverCursorImageChannel,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.addPositionChanged(handler);
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverCursorImageChannel = @ptrCast(self);
        return try this.removePositionChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverCursorImageChannel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverCursorImageChannel.GUID;
    pub const IID: Guid = IMiracastReceiverCursorImageChannel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverCursorImageChannel.SIGNATURE);
};
pub const MiracastReceiverCursorImageChannelSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverCursorImageChannelSettings = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverCursorImageChannelSettings = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getMaxImageSize(self: *@This()) core.HResult!SizeInt32 {
        const this: *IMiracastReceiverCursorImageChannelSettings = @ptrCast(self);
        return try this.getMaxImageSize();
    }
    pub fn putMaxImageSize(self: *@This(), value: SizeInt32) core.HResult!void {
        const this: *IMiracastReceiverCursorImageChannelSettings = @ptrCast(self);
        return try this.putMaxImageSize(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverCursorImageChannelSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverCursorImageChannelSettings.GUID;
    pub const IID: Guid = IMiracastReceiverCursorImageChannelSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverCursorImageChannelSettings.SIGNATURE);
};
pub const MiracastReceiverDisconnectReason = enum(i32) {
    Finished = 0,
    AppSpecificError = 1,
    ConnectionNotAccepted = 2,
    DisconnectedByUser = 3,
    FailedToStartStreaming = 4,
    MediaDecodingError = 5,
    MediaStreamingError = 6,
    MediaDecryptionError = 7,
};
pub const MiracastReceiverDisconnectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        const this: *IMiracastReceiverDisconnectedEventArgs = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverDisconnectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverDisconnectedEventArgs.GUID;
    pub const IID: Guid = IMiracastReceiverDisconnectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverDisconnectedEventArgs.SIGNATURE);
};
pub const MiracastReceiverGameControllerDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransmitInput(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.getTransmitInput();
    }
    pub fn putTransmitInput(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.putTransmitInput(value);
    }
    pub fn getIsRequestedByTransmitter(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.getIsRequestedByTransmitter();
    }
    pub fn getIsTransmittingInput(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.getIsTransmittingInput();
    }
    pub fn getMode(self: *@This()) core.HResult!MiracastReceiverGameControllerDeviceUsageMode {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: MiracastReceiverGameControllerDeviceUsageMode) core.HResult!void {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverGameControllerDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverGameControllerDevice = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverGameControllerDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverGameControllerDevice.GUID;
    pub const IID: Guid = IMiracastReceiverGameControllerDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverGameControllerDevice.SIGNATURE);
};
pub const MiracastReceiverGameControllerDeviceUsageMode = enum(i32) {
    AsGameController = 0,
    AsMouseAndKeyboard = 1,
};
pub const MiracastReceiverInputDevices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyboard(self: *@This()) core.HResult!*MiracastReceiverKeyboardDevice {
        const this: *IMiracastReceiverInputDevices = @ptrCast(self);
        return try this.getKeyboard();
    }
    pub fn getGameController(self: *@This()) core.HResult!*MiracastReceiverGameControllerDevice {
        const this: *IMiracastReceiverInputDevices = @ptrCast(self);
        return try this.getGameController();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverInputDevices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverInputDevices.GUID;
    pub const IID: Guid = IMiracastReceiverInputDevices.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverInputDevices.SIGNATURE);
};
pub const MiracastReceiverKeyboardDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransmitInput(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.getTransmitInput();
    }
    pub fn putTransmitInput(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.putTransmitInput(value);
    }
    pub fn getIsRequestedByTransmitter(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.getIsRequestedByTransmitter();
    }
    pub fn getIsTransmittingInput(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.getIsTransmittingInput();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MiracastReceiverKeyboardDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverKeyboardDevice = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverKeyboardDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverKeyboardDevice.GUID;
    pub const IID: Guid = IMiracastReceiverKeyboardDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverKeyboardDevice.SIGNATURE);
};
pub const MiracastReceiverListeningStatus = enum(i32) {
    NotListening = 0,
    Listening = 1,
    ConnectionPending = 2,
    Connected = 3,
    DisabledByPolicy = 4,
    TemporarilyDisabled = 5,
};
pub const MiracastReceiverMediaSourceCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*MiracastReceiverConnection {
        const this: *IMiracastReceiverMediaSourceCreatedEventArgs = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*MediaSource {
        const this: *IMiracastReceiverMediaSourceCreatedEventArgs = @ptrCast(self);
        return try this.getMediaSource();
    }
    pub fn getCursorImageChannelSettings(self: *@This()) core.HResult!*MiracastReceiverCursorImageChannelSettings {
        const this: *IMiracastReceiverMediaSourceCreatedEventArgs = @ptrCast(self);
        return try this.getCursorImageChannelSettings();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMiracastReceiverMediaSourceCreatedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverMediaSourceCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverMediaSourceCreatedEventArgs.GUID;
    pub const IID: Guid = IMiracastReceiverMediaSourceCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverMediaSourceCreatedEventArgs.SIGNATURE);
};
pub const MiracastReceiverSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addConnectionCreated(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverConnectionCreatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.addConnectionCreated(handler);
    }
    pub fn removeConnectionCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.removeConnectionCreated(token);
    }
    pub fn addMediaSourceCreated(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverMediaSourceCreatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.addMediaSourceCreated(handler);
    }
    pub fn removeMediaSourceCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.removeMediaSourceCreated(token);
    }
    pub fn addDisconnected(self: *@This(), handler: *TypedEventHandler(MiracastReceiverSession,MiracastReceiverDisconnectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.addDisconnected(handler);
    }
    pub fn removeDisconnected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.removeDisconnected(token);
    }
    pub fn getAllowConnectionTakeover(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.getAllowConnectionTakeover();
    }
    pub fn putAllowConnectionTakeover(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.putAllowConnectionTakeover(value);
    }
    pub fn getMaxSimultaneousConnections(self: *@This()) core.HResult!i32 {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.getMaxSimultaneousConnections();
    }
    pub fn putMaxSimultaneousConnections(self: *@This(), value: i32) core.HResult!void {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.putMaxSimultaneousConnections(value);
    }
    pub fn Start(self: *@This()) core.HResult!*MiracastReceiverSessionStartResult {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.Start();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverSessionStartResult) {
        const this: *IMiracastReceiverSession = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverSession.GUID;
    pub const IID: Guid = IMiracastReceiverSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverSession.SIGNATURE);
};
pub const MiracastReceiverSessionStartResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MiracastReceiverSessionStartStatus {
        const this: *IMiracastReceiverSessionStartResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMiracastReceiverSessionStartResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverSessionStartResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverSessionStartResult.GUID;
    pub const IID: Guid = IMiracastReceiverSessionStartResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverSessionStartResult.SIGNATURE);
};
pub const MiracastReceiverSessionStartStatus = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    MiracastNotSupported = 2,
    AccessDenied = 3,
};
pub const MiracastReceiverSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.getModelName();
    }
    pub fn putModelName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.putModelName(value);
    }
    pub fn getModelNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.getModelNumber();
    }
    pub fn putModelNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.putModelNumber(value);
    }
    pub fn getAuthorizationMethod(self: *@This()) core.HResult!MiracastReceiverAuthorizationMethod {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.getAuthorizationMethod();
    }
    pub fn putAuthorizationMethod(self: *@This(), value: MiracastReceiverAuthorizationMethod) core.HResult!void {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.putAuthorizationMethod(value);
    }
    pub fn getRequireAuthorizationFromKnownTransmitters(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.getRequireAuthorizationFromKnownTransmitters();
    }
    pub fn putRequireAuthorizationFromKnownTransmitters(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverSettings = @ptrCast(self);
        return try this.putRequireAuthorizationFromKnownTransmitters(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverSettings.GUID;
    pub const IID: Guid = IMiracastReceiverSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverSettings.SIGNATURE);
};
pub const MiracastReceiverStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getListeningStatus(self: *@This()) core.HResult!MiracastReceiverListeningStatus {
        const this: *IMiracastReceiverStatus = @ptrCast(self);
        return try this.getListeningStatus();
    }
    pub fn getWiFiStatus(self: *@This()) core.HResult!MiracastReceiverWiFiStatus {
        const this: *IMiracastReceiverStatus = @ptrCast(self);
        return try this.getWiFiStatus();
    }
    pub fn getIsConnectionTakeoverSupported(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverStatus = @ptrCast(self);
        return try this.getIsConnectionTakeoverSupported();
    }
    pub fn getMaxSimultaneousConnections(self: *@This()) core.HResult!i32 {
        const this: *IMiracastReceiverStatus = @ptrCast(self);
        return try this.getMaxSimultaneousConnections();
    }
    pub fn getKnownTransmitters(self: *@This()) core.HResult!*IVectorView(MiracastTransmitter) {
        const this: *IMiracastReceiverStatus = @ptrCast(self);
        return try this.getKnownTransmitters();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverStatus.GUID;
    pub const IID: Guid = IMiracastReceiverStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverStatus.SIGNATURE);
};
pub const MiracastReceiverStreamControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetVideoStreamSettings(self: *@This()) core.HResult!*MiracastReceiverVideoStreamSettings {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.GetVideoStreamSettings();
    }
    pub fn GetVideoStreamSettingsAsync(self: *@This()) core.HResult!*IAsyncOperation(MiracastReceiverVideoStreamSettings) {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.GetVideoStreamSettingsAsync();
    }
    pub fn SuggestVideoStreamSettings(self: *@This(), settings: *MiracastReceiverVideoStreamSettings) core.HResult!void {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.SuggestVideoStreamSettings(settings);
    }
    pub fn SuggestVideoStreamSettingsAsync(self: *@This(), settings: *MiracastReceiverVideoStreamSettings) core.HResult!*IAsyncAction {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.SuggestVideoStreamSettingsAsync(settings);
    }
    pub fn getMuteAudio(self: *@This()) core.HResult!bool {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.getMuteAudio();
    }
    pub fn putMuteAudio(self: *@This(), value: bool) core.HResult!void {
        const this: *IMiracastReceiverStreamControl = @ptrCast(self);
        return try this.putMuteAudio(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverStreamControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverStreamControl.GUID;
    pub const IID: Guid = IMiracastReceiverStreamControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverStreamControl.SIGNATURE);
};
pub const MiracastReceiverVideoStreamSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!SizeInt32 {
        const this: *IMiracastReceiverVideoStreamSettings = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: SizeInt32) core.HResult!void {
        const this: *IMiracastReceiverVideoStreamSettings = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn getBitrate(self: *@This()) core.HResult!i32 {
        const this: *IMiracastReceiverVideoStreamSettings = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn putBitrate(self: *@This(), value: i32) core.HResult!void {
        const this: *IMiracastReceiverVideoStreamSettings = @ptrCast(self);
        return try this.putBitrate(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastReceiverVideoStreamSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastReceiverVideoStreamSettings.GUID;
    pub const IID: Guid = IMiracastReceiverVideoStreamSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastReceiverVideoStreamSettings.SIGNATURE);
};
pub const MiracastReceiverWiFiStatus = enum(i32) {
    MiracastSupportUndetermined = 0,
    MiracastNotSupported = 1,
    MiracastSupportNotOptimized = 2,
    MiracastSupported = 3,
};
pub const MiracastTransmitter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getAuthorizationStatus(self: *@This()) core.HResult!MiracastTransmitterAuthorizationStatus {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.getAuthorizationStatus();
    }
    pub fn putAuthorizationStatus(self: *@This(), value: MiracastTransmitterAuthorizationStatus) core.HResult!void {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.putAuthorizationStatus(value);
    }
    pub fn GetConnections(self: *@This()) core.HResult!*IVectorView(MiracastReceiverConnection) {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.GetConnections();
    }
    pub fn getMacAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.getMacAddress();
    }
    pub fn getLastConnectionTime(self: *@This()) core.HResult!DateTime {
        const this: *IMiracastTransmitter = @ptrCast(self);
        return try this.getLastConnectionTime();
    }
    pub const NAME: []const u8 = "Windows.Media.Miracast.MiracastTransmitter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMiracastTransmitter.GUID;
    pub const IID: Guid = IMiracastTransmitter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMiracastTransmitter.SIGNATURE);
};
pub const MiracastTransmitterAuthorizationStatus = enum(i32) {
    Undecided = 0,
    Allowed = 1,
    AlwaysPrompt = 2,
    Blocked = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const PointInt32 = @import("../Graphics.zig").PointInt32;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const IClosable = @import("../Foundation.zig").IClosable;
const MediaSource = @import("./Core.zig").MediaSource;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const SizeInt32 = @import("../Graphics.zig").SizeInt32;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const CoreApplicationView = @import("../ApplicationModel/Core.zig").CoreApplicationView;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
