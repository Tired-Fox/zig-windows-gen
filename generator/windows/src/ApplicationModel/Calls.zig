pub const ILockScreenCallEndCallDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ILockScreenCallEndCallDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dd7ed0d-98ed-4041-9632-50ff812b773f";
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
pub const ILockScreenCallEndRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*LockScreenCallEndCallDeferral {
        var _r: *LockScreenCallEndCallDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ILockScreenCallEndRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8190a363-6f27-46e9-aeb6-c0ae83e47dc7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **LockScreenCallEndCallDeferral) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const ILockScreenCallUI = extern struct {
    vtable: *const VTable,
    pub fn Dismiss(self: *@This()) core.HResult!void {
        const _c = self.vtable.Dismiss(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEndRequested(self: *@This(), handler: *TypedEventHandler(LockScreenCallUI,LockScreenCallEndRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EndRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEndRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EndRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(LockScreenCallUI,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CallTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ILockScreenCallUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c596fd8d-73c9-4a14-b021-ec1c50a3b727";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Dismiss: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_EndRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenCallUI,LockScreenCallEndRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EndRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(LockScreenCallUI,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CallTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CallTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LockScreenCallEndCallDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *ILockScreenCallEndCallDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.LockScreenCallEndCallDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenCallEndCallDeferral.GUID;
    pub const IID: Guid = ILockScreenCallEndCallDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenCallEndCallDeferral.SIGNATURE);
};
pub const LockScreenCallEndRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*LockScreenCallEndCallDeferral {
        const this: *ILockScreenCallEndRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *ILockScreenCallEndRequestedEventArgs = @ptrCast(self);
        return try this.getDeadline();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.LockScreenCallEndRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenCallEndRequestedEventArgs.GUID;
    pub const IID: Guid = ILockScreenCallEndRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenCallEndRequestedEventArgs.SIGNATURE);
};
pub const LockScreenCallUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Dismiss(self: *@This()) core.HResult!void {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.Dismiss();
    }
    pub fn addEndRequested(self: *@This(), handler: *TypedEventHandler(LockScreenCallUI,LockScreenCallEndRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.addEndRequested(handler);
    }
    pub fn removeEndRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.removeEndRequested(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(LockScreenCallUI,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn getCallTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.getCallTitle();
    }
    pub fn putCallTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ILockScreenCallUI = @ptrCast(self);
        return try this.putCallTitle(value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.LockScreenCallUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILockScreenCallUI.GUID;
    pub const IID: Guid = ILockScreenCallUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILockScreenCallUI.SIGNATURE);
};
pub const CellularDtmfMode = enum(i32) {
    Continuous = 0,
    Burst = 1,
};
pub const DtmfKey = enum(i32) {
    D0 = 0,
    D1 = 1,
    D2 = 2,
    D3 = 3,
    D4 = 4,
    D5 = 5,
    D6 = 6,
    D7 = 7,
    D8 = 8,
    D9 = 9,
    Star = 10,
    Pound = 11,
};
pub const DtmfToneAudioPlayback = enum(i32) {
    Play = 0,
    DoNotPlay = 1,
};
pub const IPhoneCall = extern struct {
    vtable: *const VTable,
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAudioDeviceChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioDeviceChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioDeviceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioDeviceChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsMutedChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsMutedChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsMutedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsMutedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMuted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!PhoneCallStatus {
        var _r: PhoneCallStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioDevice(self: *@This()) core.HResult!PhoneCallAudioDevice {
        var _r: PhoneCallAudioDevice = undefined;
        const _c = self.vtable.get_AudioDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPhoneCallInfo(self: *@This()) core.HResult!*PhoneCallInfo {
        var _r: *PhoneCallInfo = undefined;
        const _c = self.vtable.GetPhoneCallInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPhoneCallInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallInfo) {
        var _r: *IAsyncOperation(PhoneCallInfo) = undefined;
        const _c = self.vtable.GetPhoneCallInfoAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn End(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.End(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EndAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.EndAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendDtmfKey(self: *@This(), key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.SendDtmfKey(@ptrCast(self), key, dtmfToneAudioPlayback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SendDtmfKeyAsync(self: *@This(), key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.SendDtmfKeyAsync(@ptrCast(self), key, dtmfToneAudioPlayback, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptIncoming(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.AcceptIncoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcceptIncomingAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.AcceptIncomingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Hold(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.Hold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HoldAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.HoldAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResumeFromHold(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.ResumeFromHold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResumeFromHoldAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.ResumeFromHoldAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Mute(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.Mute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MuteAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.MuteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Unmute(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.Unmute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnmuteAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.UnmuteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RejectIncoming(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.RejectIncoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RejectIncomingAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.RejectIncomingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeAudioDevice(self: *@This(), endpoint: PhoneCallAudioDevice) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.ChangeAudioDevice(@ptrCast(self), endpoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangeAudioDeviceAsync(self: *@This(), endpoint: PhoneCallAudioDevice) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        var _r: *IAsyncOperation(PhoneCallOperationStatus) = undefined;
        const _c = self.vtable.ChangeAudioDeviceAsync(@ptrCast(self), endpoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCall";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c14ed0f8-c17d-59d2-9628-66e545b6cd21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneCall,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AudioDeviceChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneCall,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioDeviceChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_IsMutedChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneCall,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsMutedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CallId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsMuted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PhoneCallStatus) callconv(.winapi) HRESULT,
        get_AudioDevice: *const fn(self: *anyopaque, _r: *PhoneCallAudioDevice) callconv(.winapi) HRESULT,
        GetPhoneCallInfo: *const fn(self: *anyopaque, _r: **PhoneCallInfo) callconv(.winapi) HRESULT,
        GetPhoneCallInfoAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallInfo)) callconv(.winapi) HRESULT,
        End: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        EndAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        SendDtmfKey: *const fn(self: *anyopaque, key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        SendDtmfKeyAsync: *const fn(self: *anyopaque, key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        AcceptIncoming: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        AcceptIncomingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        Hold: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        HoldAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        ResumeFromHold: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        ResumeFromHoldAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        Mute: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        MuteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        Unmute: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        UnmuteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        RejectIncoming: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        RejectIncomingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
        ChangeAudioDevice: *const fn(self: *anyopaque, endpoint: PhoneCallAudioDevice, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        ChangeAudioDeviceAsync: *const fn(self: *anyopaque, endpoint: PhoneCallAudioDevice, _r: **IAsyncOperation(PhoneCallOperationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallBlockingStatics = extern struct {
    vtable: *const VTable,
    pub fn getBlockUnknownNumbers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BlockUnknownNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBlockUnknownNumbers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BlockUnknownNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBlockPrivateNumbers(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_BlockPrivateNumbers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBlockPrivateNumbers(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_BlockPrivateNumbers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetCallBlockingListAsync(self: *@This(), phoneNumberList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SetCallBlockingListAsync(@ptrCast(self), phoneNumberList, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallBlockingStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19646f84-2b79-26f1-a46f-694be043f313";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BlockUnknownNumbers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BlockUnknownNumbers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BlockPrivateNumbers: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BlockPrivateNumbers: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetCallBlockingListAsync: *const fn(self: *anyopaque, phoneNumberList: *IIterable(HSTRING), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallInfo = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHoldSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHoldSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhoneNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCallDirection(self: *@This()) core.HResult!PhoneCallDirection {
        var _r: PhoneCallDirection = undefined;
        const _c = self.vtable.get_CallDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22b42577-3e4d-5dc6-89c2-469fe5ffc189";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_IsHoldSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_PhoneNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CallDirection: *const fn(self: *anyopaque, _r: *PhoneCallDirection) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn ShowPhoneCallUI(self: *@This(), phoneNumber: HSTRING, displayName: HSTRING) core.HResult!void {
        const _c = self.vtable.ShowPhoneCallUI(@ptrCast(self), phoneNumber, displayName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60edac78-78a6-4872-a3ef-98325ec8b843";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowPhoneCallUI: *const fn(self: *anyopaque, phoneNumber: HSTRING, displayName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn addCallStateChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CallStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCallStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CallStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCallActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCallActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCallIncoming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCallIncoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowPhoneCallSettingsUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowPhoneCallSettingsUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallStore) {
        var _r: *IAsyncOperation(PhoneCallStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7e3c8bc-2370-431c-98fd-43be5f03086d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CallStateChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CallStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsCallActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCallIncoming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowPhoneCallSettingsUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallStore)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallStatics = extern struct {
    vtable: *const VTable,
    pub fn GetFromId(self: *@This(), callId: HSTRING) core.HResult!*PhoneCall {
        var _r: *PhoneCall = undefined;
        const _c = self.vtable.GetFromId(@ptrCast(self), callId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2218eeab-f60b-53e7-ba13-5aeafbc22957";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFromId: *const fn(self: *anyopaque, callId: HSTRING, _r: **PhoneCall) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallStore = extern struct {
    vtable: *const VTable,
    pub fn IsEmergencyPhoneNumberAsync(self: *@This(), number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsEmergencyPhoneNumberAsync(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultLineAsync(self: *@This()) core.HResult!*IAsyncOperation(Guid) {
        var _r: *IAsyncOperation(Guid) = undefined;
        const _c = self.vtable.GetDefaultLineAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestLineWatcher(self: *@This()) core.HResult!*PhoneLineWatcher {
        var _r: *PhoneLineWatcher = undefined;
        const _c = self.vtable.RequestLineWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f610748-18a6-4173-86d1-28be9dc62dba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsEmergencyPhoneNumberAsync: *const fn(self: *anyopaque, number: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetDefaultLineAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(Guid)) callconv(.winapi) HRESULT,
        RequestLineWatcher: *const fn(self: *anyopaque, _r: **PhoneLineWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallVideoCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsVideoCallingCapable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVideoCallingCapable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallVideoCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02382786-b16a-4fdb-be3b-c4240e13ad0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsVideoCallingCapable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallVideoCapabilitiesManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCapabilitiesAsync(self: *@This(), phoneNumber: HSTRING) core.HResult!*IAsyncOperation(PhoneCallVideoCapabilities) {
        var _r: *IAsyncOperation(PhoneCallVideoCapabilities) = undefined;
        const _c = self.vtable.GetCapabilitiesAsync(@ptrCast(self), phoneNumber, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallVideoCapabilitiesManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3c64b56-f00b-4a1c-a0c6-ee1910749ce7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCapabilitiesAsync: *const fn(self: *anyopaque, phoneNumber: HSTRING, _r: **IAsyncOperation(PhoneCallVideoCapabilities)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallsResult = extern struct {
    vtable: *const VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!PhoneLineOperationStatus {
        var _r: PhoneLineOperationStatus = undefined;
        const _c = self.vtable.get_OperationStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllActivePhoneCalls(self: *@This()) core.HResult!*IVectorView(PhoneCall) {
        var _r: *IVectorView(PhoneCall) = undefined;
        const _c = self.vtable.get_AllActivePhoneCalls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bfad365-57cf-57dd-986d-b057c91eac33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OperationStatus: *const fn(self: *anyopaque, _r: *PhoneLineOperationStatus) callconv(.winapi) HRESULT,
        get_AllActivePhoneCalls: *const fn(self: *anyopaque, _r: **IVectorView(PhoneCall)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneDialOptions = extern struct {
    vtable: *const VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Number(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Number(@ptrCast(self), value);
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
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        var _r: *Contact = undefined;
        const _c = self.vtable.get_Contact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContact(self: *@This(), value: *Contact) core.HResult!void {
        const _c = self.vtable.put_Contact(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactPhone(self: *@This()) core.HResult!*ContactPhone {
        var _r: *ContactPhone = undefined;
        const _c = self.vtable.get_ContactPhone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactPhone(self: *@This(), value: *ContactPhone) core.HResult!void {
        const _c = self.vtable.put_ContactPhone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!PhoneCallMedia {
        var _r: PhoneCallMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: PhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioEndpoint(self: *@This()) core.HResult!PhoneAudioRoutingEndpoint {
        var _r: PhoneAudioRoutingEndpoint = undefined;
        const _c = self.vtable.get_AudioEndpoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioEndpoint(self: *@This(), value: PhoneAudioRoutingEndpoint) core.HResult!void {
        const _c = self.vtable.put_AudioEndpoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneDialOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b639c4b8-f06f-36cb-a863-823742b5f2d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Number: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Number: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Contact: *const fn(self: *anyopaque, _r: **Contact) callconv(.winapi) HRESULT,
        put_Contact: *const fn(self: *anyopaque, value: *Contact) callconv(.winapi) HRESULT,
        get_ContactPhone: *const fn(self: *anyopaque, _r: **ContactPhone) callconv(.winapi) HRESULT,
        put_ContactPhone: *const fn(self: *anyopaque, value: *ContactPhone) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *PhoneCallMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: PhoneCallMedia) callconv(.winapi) HRESULT,
        get_AudioEndpoint: *const fn(self: *anyopaque, _r: *PhoneAudioRoutingEndpoint) callconv(.winapi) HRESULT,
        put_AudioEndpoint: *const fn(self: *anyopaque, value: PhoneAudioRoutingEndpoint) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLine = extern struct {
    vtable: *const VTable,
    pub fn addLineChanged(self: *@This(), handler: *TypedEventHandler(PhoneLine,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LineChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLineChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LineChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DisplayColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkState(self: *@This()) core.HResult!PhoneNetworkState {
        var _r: PhoneNetworkState = undefined;
        const _c = self.vtable.get_NetworkState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVoicemail(self: *@This()) core.HResult!*PhoneVoicemail {
        var _r: *PhoneVoicemail = undefined;
        const _c = self.vtable.get_Voicemail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNetworkName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_NetworkName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCellularDetails(self: *@This()) core.HResult!*PhoneLineCellularDetails {
        var _r: *PhoneLineCellularDetails = undefined;
        const _c = self.vtable.get_CellularDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransport(self: *@This()) core.HResult!PhoneLineTransport {
        var _r: PhoneLineTransport = undefined;
        const _c = self.vtable.get_Transport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsTile(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsTile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoCallingCapabilities(self: *@This()) core.HResult!*PhoneCallVideoCapabilities {
        var _r: *PhoneCallVideoCapabilities = undefined;
        const _c = self.vtable.get_VideoCallingCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineConfiguration(self: *@This()) core.HResult!*PhoneLineConfiguration {
        var _r: *PhoneLineConfiguration = undefined;
        const _c = self.vtable.get_LineConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsImmediateDialNumberAsync(self: *@This(), number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsImmediateDialNumberAsync(@ptrCast(self), number, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Dial(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!void {
        const _c = self.vtable.Dial(@ptrCast(self), number, displayName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DialWithOptions(self: *@This(), options: *PhoneDialOptions) core.HResult!void {
        const _c = self.vtable.DialWithOptions(@ptrCast(self), options);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27c66f30-6a69-34ca-a2ba-65302530c311";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_LineChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLine,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LineChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_DisplayColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_NetworkState: *const fn(self: *anyopaque, _r: *PhoneNetworkState) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Voicemail: *const fn(self: *anyopaque, _r: **PhoneVoicemail) callconv(.winapi) HRESULT,
        get_NetworkName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CellularDetails: *const fn(self: *anyopaque, _r: **PhoneLineCellularDetails) callconv(.winapi) HRESULT,
        get_Transport: *const fn(self: *anyopaque, _r: *PhoneLineTransport) callconv(.winapi) HRESULT,
        get_CanDial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportsTile: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_VideoCallingCapabilities: *const fn(self: *anyopaque, _r: **PhoneCallVideoCapabilities) callconv(.winapi) HRESULT,
        get_LineConfiguration: *const fn(self: *anyopaque, _r: **PhoneLineConfiguration) callconv(.winapi) HRESULT,
        IsImmediateDialNumberAsync: *const fn(self: *anyopaque, number: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        Dial: *const fn(self: *anyopaque, number: HSTRING, displayName: HSTRING) callconv(.winapi) HRESULT,
        DialWithOptions: *const fn(self: *anyopaque, options: *PhoneDialOptions) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLine2 = extern struct {
    vtable: *const VTable,
    pub fn EnableTextReply(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.EnableTextReply(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransportDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TransportDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLine2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0167f56a-5344-5d64-8af3-a31a950e916a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        EnableTextReply: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TransportDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLine3 = extern struct {
    vtable: *const VTable,
    pub fn DialWithResult(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!*PhoneLineDialResult {
        var _r: *PhoneLineDialResult = undefined;
        const _c = self.vtable.DialWithResult(@ptrCast(self), number, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DialWithResultAsync(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!*IAsyncOperation(PhoneLineDialResult) {
        var _r: *IAsyncOperation(PhoneLineDialResult) = undefined;
        const _c = self.vtable.DialWithResultAsync(@ptrCast(self), number, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllActivePhoneCalls(self: *@This()) core.HResult!*PhoneCallsResult {
        var _r: *PhoneCallsResult = undefined;
        const _c = self.vtable.GetAllActivePhoneCalls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAllActivePhoneCallsAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallsResult) {
        var _r: *IAsyncOperation(PhoneCallsResult) = undefined;
        const _c = self.vtable.GetAllActivePhoneCallsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLine3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2e33cf7-2406-57f3-826a-e5a5f40d6fb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DialWithResult: *const fn(self: *anyopaque, number: HSTRING, displayName: HSTRING, _r: **PhoneLineDialResult) callconv(.winapi) HRESULT,
        DialWithResultAsync: *const fn(self: *anyopaque, number: HSTRING, displayName: HSTRING, _r: **IAsyncOperation(PhoneLineDialResult)) callconv(.winapi) HRESULT,
        GetAllActivePhoneCalls: *const fn(self: *anyopaque, _r: **PhoneCallsResult) callconv(.winapi) HRESULT,
        GetAllActivePhoneCallsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PhoneCallsResult)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineCellularDetails = extern struct {
    vtable: *const VTable,
    pub fn getSimState(self: *@This()) core.HResult!PhoneSimState {
        var _r: PhoneSimState = undefined;
        const _c = self.vtable.get_SimState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimSlotIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SimSlotIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsModemOn(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsModemOn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRegistrationRejectCode(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RegistrationRejectCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNetworkOperatorDisplayText(self: *@This(), location: PhoneLineNetworkOperatorDisplayTextLocation) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNetworkOperatorDisplayText(@ptrCast(self), location, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineCellularDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "192601d5-147c-4769-b673-98a5ec8426cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SimState: *const fn(self: *anyopaque, _r: *PhoneSimState) callconv(.winapi) HRESULT,
        get_SimSlotIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_IsModemOn: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RegistrationRejectCode: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetNetworkOperatorDisplayText: *const fn(self: *anyopaque, location: PhoneLineNetworkOperatorDisplayTextLocation, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getIsVideoCallingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVideoCallingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe265862-f64f-4312-b2a8-4e257721aa95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsVideoCallingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineDialResult = extern struct {
    vtable: *const VTable,
    pub fn getDialCallStatus(self: *@This()) core.HResult!PhoneCallOperationStatus {
        var _r: PhoneCallOperationStatus = undefined;
        const _c = self.vtable.get_DialCallStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDialedCall(self: *@This()) core.HResult!*PhoneCall {
        var _r: *PhoneCall = undefined;
        const _c = self.vtable.get_DialedCall(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineDialResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e825a30a-5c7f-546f-b918-3ad2fe70fb34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DialCallStatus: *const fn(self: *anyopaque, _r: *PhoneCallOperationStatus) callconv(.winapi) HRESULT,
        get_DialedCall: *const fn(self: *anyopaque, _r: **PhoneCall) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), lineId: *Guid) core.HResult!*IAsyncOperation(PhoneLine) {
        var _r: *IAsyncOperation(PhoneLine) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), lineId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f38b5f23-ceb0-404f-bcf2-ba9f697d8adf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, lineId: *Guid, _r: **IAsyncOperation(PhoneLine)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineTransportDevice = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransport(self: *@This()) core.HResult!PhoneLineTransport {
        var _r: PhoneLineTransport = undefined;
        const _c = self.vtable.get_Transport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        var _r: *IAsyncOperation(DeviceAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RegisterApp(self: *@This()) core.HResult!void {
        const _c = self.vtable.RegisterApp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterAppForUser(self: *@This(), user: *User) core.HResult!void {
        const _c = self.vtable.RegisterAppForUser(@ptrCast(self), user);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterApp(self: *@This()) core.HResult!void {
        const _c = self.vtable.UnregisterApp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnregisterAppForUser(self: *@This(), user: *User) core.HResult!void {
        const _c = self.vtable.UnregisterAppForUser(@ptrCast(self), user);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsRegistered(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsRegistered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Connect(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Connect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ConnectAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineTransportDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efa8f889-cffa-59f4-97e4-74705b7dc490";
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
        get_Transport: *const fn(self: *anyopaque, _r: *PhoneLineTransport) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DeviceAccessStatus)) callconv(.winapi) HRESULT,
        RegisterApp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RegisterAppForUser: *const fn(self: *anyopaque, user: *User) callconv(.winapi) HRESULT,
        UnregisterApp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        UnregisterAppForUser: *const fn(self: *anyopaque, user: *User) callconv(.winapi) HRESULT,
        IsRegistered: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Connect: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ConnectAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineTransportDevice2 = extern struct {
    vtable: *const VTable,
    pub fn getAudioRoutingStatus(self: *@This()) core.HResult!TransportDeviceAudioRoutingStatus {
        var _r: TransportDeviceAudioRoutingStatus = undefined;
        const _c = self.vtable.get_AudioRoutingStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAudioRoutingStatusChanged(self: *@This(), handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioRoutingStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioRoutingStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioRoutingStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInBandRingingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InBandRingingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addInBandRingingEnabledChanged(self: *@This(), handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InBandRingingEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInBandRingingEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InBandRingingEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineTransportDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64c885f2-ecf4-5761-8c04-3c248ce61690";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioRoutingStatus: *const fn(self: *anyopaque, _r: *TransportDeviceAudioRoutingStatus) callconv(.winapi) HRESULT,
        add_AudioRoutingStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioRoutingStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_InBandRingingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_InBandRingingEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InBandRingingEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineTransportDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn FromId(self: *@This(), id: HSTRING) core.HResult!*PhoneLineTransportDevice {
        var _r: *PhoneLineTransportDevice = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorWithTransport(self: *@This(), transport: PhoneLineTransport) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorWithTransport(@ptrCast(self), transport, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineTransportDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f3121ac-d609-51a1-96f3-fb00d1819252";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, id: HSTRING, _r: **PhoneLineTransportDevice) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelectorWithTransport: *const fn(self: *anyopaque, transport: PhoneLineTransport, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineWatcher = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLineAdded(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LineAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLineAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LineAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLineRemoved(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LineRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLineRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LineRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLineUpdated(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LineUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLineUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LineUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Stopped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Stopped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStatus(self: *@This()) core.HResult!PhoneLineWatcherStatus {
        var _r: PhoneLineWatcherStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a45cd0a-6323-44e0-a6f6-9f21f64dc90a";
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
        add_LineAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LineAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LineRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LineRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LineUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LineUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Stopped: *const fn(self: *anyopaque, handler: *TypedEventHandler(PhoneLineWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Stopped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *PhoneLineWatcherStatus) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneLineWatcherEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_LineId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneLineWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d07c753e-9e12-4a37-82b7-ad535dad6a67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LineId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneVoicemail = extern struct {
    vtable: *const VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Number(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MessageCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getType(self: *@This()) core.HResult!PhoneVoicemailType {
        var _r: PhoneVoicemailType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DialVoicemailAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DialVoicemailAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneVoicemail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9ce77f6-6e9f-3a8b-b727-6e0cf6998224";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Number: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MessageCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *PhoneVoicemailType) callconv(.winapi) HRESULT,
        DialVoicemailAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const PhoneAudioRoutingEndpoint = enum(i32) {
    Default = 0,
    Bluetooth = 1,
    Speakerphone = 2,
};
pub const PhoneCall = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn addAudioDeviceChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.addAudioDeviceChanged(handler);
    }
    pub fn removeAudioDeviceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.removeAudioDeviceChanged(token);
    }
    pub fn addIsMutedChanged(self: *@This(), handler: *TypedEventHandler(PhoneCall,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.addIsMutedChanged(handler);
    }
    pub fn removeIsMutedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.removeIsMutedChanged(token);
    }
    pub fn getCallId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.getCallId();
    }
    pub fn getIsMuted(self: *@This()) core.HResult!bool {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.getIsMuted();
    }
    pub fn getStatus(self: *@This()) core.HResult!PhoneCallStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getAudioDevice(self: *@This()) core.HResult!PhoneCallAudioDevice {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.getAudioDevice();
    }
    pub fn GetPhoneCallInfo(self: *@This()) core.HResult!*PhoneCallInfo {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.GetPhoneCallInfo();
    }
    pub fn GetPhoneCallInfoAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallInfo) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.GetPhoneCallInfoAsync();
    }
    pub fn End(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.End();
    }
    pub fn EndAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.EndAsync();
    }
    pub fn SendDtmfKey(self: *@This(), key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.SendDtmfKey(key, dtmfToneAudioPlayback);
    }
    pub fn SendDtmfKeyAsync(self: *@This(), key: DtmfKey, dtmfToneAudioPlayback: DtmfToneAudioPlayback) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.SendDtmfKeyAsync(key, dtmfToneAudioPlayback);
    }
    pub fn AcceptIncoming(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.AcceptIncoming();
    }
    pub fn AcceptIncomingAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.AcceptIncomingAsync();
    }
    pub fn Hold(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.Hold();
    }
    pub fn HoldAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.HoldAsync();
    }
    pub fn ResumeFromHold(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.ResumeFromHold();
    }
    pub fn ResumeFromHoldAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.ResumeFromHoldAsync();
    }
    pub fn Mute(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.Mute();
    }
    pub fn MuteAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.MuteAsync();
    }
    pub fn Unmute(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.Unmute();
    }
    pub fn UnmuteAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.UnmuteAsync();
    }
    pub fn RejectIncoming(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.RejectIncoming();
    }
    pub fn RejectIncomingAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.RejectIncomingAsync();
    }
    pub fn ChangeAudioDevice(self: *@This(), endpoint: PhoneCallAudioDevice) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.ChangeAudioDevice(endpoint);
    }
    pub fn ChangeAudioDeviceAsync(self: *@This(), endpoint: PhoneCallAudioDevice) core.HResult!*IAsyncOperation(PhoneCallOperationStatus) {
        const this: *IPhoneCall = @ptrCast(self);
        return try this.ChangeAudioDeviceAsync(endpoint);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFromId(callId: HSTRING) core.HResult!*PhoneCall {
        const _f = @This().IPhoneCallStaticsCache.get();
        return try _f.GetFromId(callId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCall";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCall.GUID;
    pub const IID: Guid = IPhoneCall.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCall.SIGNATURE);
    var _IPhoneCallStaticsCache: FactoryCache(IPhoneCallStatics, RUNTIME_NAME) = .{};
};
pub const PhoneCallAudioDevice = enum(i32) {
    Unknown = 0,
    LocalDevice = 1,
    RemoteDevice = 2,
};
pub const PhoneCallBlocking = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBlockUnknownNumbers() core.HResult!bool {
        const _f = @This().IPhoneCallBlockingStaticsCache.get();
        return try _f.getBlockUnknownNumbers();
    }
    pub fn putBlockUnknownNumbers(value: bool) core.HResult!void {
        const _f = @This().IPhoneCallBlockingStaticsCache.get();
        return try _f.putBlockUnknownNumbers(value);
    }
    pub fn getBlockPrivateNumbers() core.HResult!bool {
        const _f = @This().IPhoneCallBlockingStaticsCache.get();
        return try _f.getBlockPrivateNumbers();
    }
    pub fn putBlockPrivateNumbers(value: bool) core.HResult!void {
        const _f = @This().IPhoneCallBlockingStaticsCache.get();
        return try _f.putBlockPrivateNumbers(value);
    }
    pub fn SetCallBlockingListAsync(phoneNumberList: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IPhoneCallBlockingStaticsCache.get();
        return try _f.SetCallBlockingListAsync(phoneNumberList);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallBlocking";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhoneCallBlockingStaticsCache: FactoryCache(IPhoneCallBlockingStatics, RUNTIME_NAME) = .{};
};
pub const PhoneCallDirection = enum(i32) {
    Unknown = 0,
    Incoming = 1,
    Outgoing = 2,
};
pub const PhoneCallInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getLineId();
    }
    pub fn getIsHoldSupported(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getIsHoldSupported();
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getPhoneNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getPhoneNumber();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getCallDirection(self: *@This()) core.HResult!PhoneCallDirection {
        const this: *IPhoneCallInfo = @ptrCast(self);
        return try this.getCallDirection();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallInfo.GUID;
    pub const IID: Guid = IPhoneCallInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallInfo.SIGNATURE);
};
pub const PhoneCallManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ShowPhoneCallUI(phoneNumber: HSTRING, displayName: HSTRING) core.HResult!void {
        const _f = @This().IPhoneCallManagerStaticsCache.get();
        return try _f.ShowPhoneCallUI(phoneNumber, displayName);
    }
    pub fn addCallStateChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.addCallStateChanged(handler);
    }
    pub fn removeCallStateChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.removeCallStateChanged(token);
    }
    pub fn getIsCallActive() core.HResult!bool {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.getIsCallActive();
    }
    pub fn getIsCallIncoming() core.HResult!bool {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.getIsCallIncoming();
    }
    pub fn ShowPhoneCallSettingsUI() core.HResult!void {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.ShowPhoneCallSettingsUI();
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(PhoneCallStore) {
        const _f = @This().IPhoneCallManagerStatics2Cache.get();
        return try _f.RequestStoreAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhoneCallManagerStaticsCache: FactoryCache(IPhoneCallManagerStatics, RUNTIME_NAME) = .{};
    var _IPhoneCallManagerStatics2Cache: FactoryCache(IPhoneCallManagerStatics2, RUNTIME_NAME) = .{};
};
pub const PhoneCallMedia = enum(i32) {
    Audio = 0,
    AudioAndVideo = 1,
    AudioAndRealTimeText = 2,
};
pub const PhoneCallOperationStatus = enum(i32) {
    Succeeded = 0,
    OtherFailure = 1,
    TimedOut = 2,
    ConnectionLost = 3,
    InvalidCallState = 4,
};
pub const PhoneCallStatus = enum(i32) {
    Lost = 0,
    Incoming = 1,
    Dialing = 2,
    Talking = 3,
    Held = 4,
    Ended = 5,
};
pub const PhoneCallStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn IsEmergencyPhoneNumberAsync(self: *@This(), number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IPhoneCallStore = @ptrCast(self);
        return try this.IsEmergencyPhoneNumberAsync(number);
    }
    pub fn GetDefaultLineAsync(self: *@This()) core.HResult!*IAsyncOperation(Guid) {
        const this: *IPhoneCallStore = @ptrCast(self);
        return try this.GetDefaultLineAsync();
    }
    pub fn RequestLineWatcher(self: *@This()) core.HResult!*PhoneLineWatcher {
        const this: *IPhoneCallStore = @ptrCast(self);
        return try this.RequestLineWatcher();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallStore.GUID;
    pub const IID: Guid = IPhoneCallStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallStore.SIGNATURE);
};
pub const PhoneCallVideoCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsVideoCallingCapable(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallVideoCapabilities = @ptrCast(self);
        return try this.getIsVideoCallingCapable();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallVideoCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallVideoCapabilities.GUID;
    pub const IID: Guid = IPhoneCallVideoCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallVideoCapabilities.SIGNATURE);
};
pub const PhoneCallVideoCapabilitiesManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCapabilitiesAsync(phoneNumber: HSTRING) core.HResult!*IAsyncOperation(PhoneCallVideoCapabilities) {
        const _f = @This().IPhoneCallVideoCapabilitiesManagerStaticsCache.get();
        return try _f.GetCapabilitiesAsync(phoneNumber);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallVideoCapabilitiesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhoneCallVideoCapabilitiesManagerStaticsCache: FactoryCache(IPhoneCallVideoCapabilitiesManagerStatics, RUNTIME_NAME) = .{};
};
pub const PhoneCallsResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOperationStatus(self: *@This()) core.HResult!PhoneLineOperationStatus {
        const this: *IPhoneCallsResult = @ptrCast(self);
        return try this.getOperationStatus();
    }
    pub fn getAllActivePhoneCalls(self: *@This()) core.HResult!*IVectorView(PhoneCall) {
        const this: *IPhoneCallsResult = @ptrCast(self);
        return try this.getAllActivePhoneCalls();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallsResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallsResult.GUID;
    pub const IID: Guid = IPhoneCallsResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallsResult.SIGNATURE);
};
pub const PhoneDialOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getNumber();
    }
    pub fn putNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putNumber(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getContact(self: *@This()) core.HResult!*Contact {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getContact();
    }
    pub fn putContact(self: *@This(), value: *Contact) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putContact(value);
    }
    pub fn getContactPhone(self: *@This()) core.HResult!*ContactPhone {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getContactPhone();
    }
    pub fn putContactPhone(self: *@This(), value: *ContactPhone) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putContactPhone(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!PhoneCallMedia {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: PhoneCallMedia) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getAudioEndpoint(self: *@This()) core.HResult!PhoneAudioRoutingEndpoint {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.getAudioEndpoint();
    }
    pub fn putAudioEndpoint(self: *@This(), value: PhoneAudioRoutingEndpoint) core.HResult!void {
        const this: *IPhoneDialOptions = @ptrCast(self);
        return try this.putAudioEndpoint(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneDialOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneDialOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneDialOptions.GUID;
    pub const IID: Guid = IPhoneDialOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneDialOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PhoneLine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addLineChanged(self: *@This(), handler: *TypedEventHandler(PhoneLine,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.addLineChanged(handler);
    }
    pub fn removeLineChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.removeLineChanged(token);
    }
    pub fn getId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDisplayColor(self: *@This()) core.HResult!Color {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getDisplayColor();
    }
    pub fn getNetworkState(self: *@This()) core.HResult!PhoneNetworkState {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getNetworkState();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getVoicemail(self: *@This()) core.HResult!*PhoneVoicemail {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getVoicemail();
    }
    pub fn getNetworkName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getNetworkName();
    }
    pub fn getCellularDetails(self: *@This()) core.HResult!*PhoneLineCellularDetails {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getCellularDetails();
    }
    pub fn getTransport(self: *@This()) core.HResult!PhoneLineTransport {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getTransport();
    }
    pub fn getCanDial(self: *@This()) core.HResult!bool {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getCanDial();
    }
    pub fn getSupportsTile(self: *@This()) core.HResult!bool {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getSupportsTile();
    }
    pub fn getVideoCallingCapabilities(self: *@This()) core.HResult!*PhoneCallVideoCapabilities {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getVideoCallingCapabilities();
    }
    pub fn getLineConfiguration(self: *@This()) core.HResult!*PhoneLineConfiguration {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.getLineConfiguration();
    }
    pub fn IsImmediateDialNumberAsync(self: *@This(), number: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.IsImmediateDialNumberAsync(number);
    }
    pub fn Dial(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!void {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.Dial(number, displayName);
    }
    pub fn DialWithOptions(self: *@This(), options: *PhoneDialOptions) core.HResult!void {
        const this: *IPhoneLine = @ptrCast(self);
        return try this.DialWithOptions(options);
    }
    pub fn EnableTextReply(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPhoneLine2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.EnableTextReply(value);
    }
    pub fn getTransportDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IPhoneLine2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransportDeviceId();
    }
    pub fn DialWithResult(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!*PhoneLineDialResult {
        var this: ?*IPhoneLine3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DialWithResult(number, displayName);
    }
    pub fn DialWithResultAsync(self: *@This(), number: HSTRING, displayName: HSTRING) core.HResult!*IAsyncOperation(PhoneLineDialResult) {
        var this: ?*IPhoneLine3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DialWithResultAsync(number, displayName);
    }
    pub fn GetAllActivePhoneCalls(self: *@This()) core.HResult!*PhoneCallsResult {
        var this: ?*IPhoneLine3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllActivePhoneCalls();
    }
    pub fn GetAllActivePhoneCallsAsync(self: *@This()) core.HResult!*IAsyncOperation(PhoneCallsResult) {
        var this: ?*IPhoneLine3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLine3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAllActivePhoneCallsAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(lineId: *Guid) core.HResult!*IAsyncOperation(PhoneLine) {
        const _f = @This().IPhoneLineStaticsCache.get();
        return try _f.FromIdAsync(lineId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLine.GUID;
    pub const IID: Guid = IPhoneLine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLine.SIGNATURE);
    var _IPhoneLineStaticsCache: FactoryCache(IPhoneLineStatics, RUNTIME_NAME) = .{};
};
pub const PhoneLineCellularDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSimState(self: *@This()) core.HResult!PhoneSimState {
        const this: *IPhoneLineCellularDetails = @ptrCast(self);
        return try this.getSimState();
    }
    pub fn getSimSlotIndex(self: *@This()) core.HResult!i32 {
        const this: *IPhoneLineCellularDetails = @ptrCast(self);
        return try this.getSimSlotIndex();
    }
    pub fn getIsModemOn(self: *@This()) core.HResult!bool {
        const this: *IPhoneLineCellularDetails = @ptrCast(self);
        return try this.getIsModemOn();
    }
    pub fn getRegistrationRejectCode(self: *@This()) core.HResult!i32 {
        const this: *IPhoneLineCellularDetails = @ptrCast(self);
        return try this.getRegistrationRejectCode();
    }
    pub fn GetNetworkOperatorDisplayText(self: *@This(), location: PhoneLineNetworkOperatorDisplayTextLocation) core.HResult!HSTRING {
        const this: *IPhoneLineCellularDetails = @ptrCast(self);
        return try this.GetNetworkOperatorDisplayText(location);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineCellularDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineCellularDetails.GUID;
    pub const IID: Guid = IPhoneLineCellularDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineCellularDetails.SIGNATURE);
};
pub const PhoneLineConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsVideoCallingEnabled(self: *@This()) core.HResult!bool {
        const this: *IPhoneLineConfiguration = @ptrCast(self);
        return try this.getIsVideoCallingEnabled();
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *IPhoneLineConfiguration = @ptrCast(self);
        return try this.getExtendedProperties();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineConfiguration.GUID;
    pub const IID: Guid = IPhoneLineConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineConfiguration.SIGNATURE);
};
pub const PhoneLineDialResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDialCallStatus(self: *@This()) core.HResult!PhoneCallOperationStatus {
        const this: *IPhoneLineDialResult = @ptrCast(self);
        return try this.getDialCallStatus();
    }
    pub fn getDialedCall(self: *@This()) core.HResult!*PhoneCall {
        const this: *IPhoneLineDialResult = @ptrCast(self);
        return try this.getDialedCall();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineDialResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineDialResult.GUID;
    pub const IID: Guid = IPhoneLineDialResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineDialResult.SIGNATURE);
};
pub const PhoneLineNetworkOperatorDisplayTextLocation = enum(i32) {
    Default = 0,
    Tile = 1,
    Dialer = 2,
    InCallUI = 3,
};
pub const PhoneLineOperationStatus = enum(i32) {
    Succeeded = 0,
    OtherFailure = 1,
    TimedOut = 2,
    ConnectionLost = 3,
    InvalidCallState = 4,
};
pub const PhoneLineTransport = enum(i32) {
    Cellular = 0,
    VoipApp = 1,
    Bluetooth = 2,
};
pub const PhoneLineTransportDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getTransport(self: *@This()) core.HResult!PhoneLineTransport {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.getTransport();
    }
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(DeviceAccessStatus) {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.RequestAccessAsync();
    }
    pub fn RegisterApp(self: *@This()) core.HResult!void {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.RegisterApp();
    }
    pub fn RegisterAppForUser(self: *@This(), user: *User) core.HResult!void {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.RegisterAppForUser(user);
    }
    pub fn UnregisterApp(self: *@This()) core.HResult!void {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.UnregisterApp();
    }
    pub fn UnregisterAppForUser(self: *@This(), user: *User) core.HResult!void {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.UnregisterAppForUser(user);
    }
    pub fn IsRegistered(self: *@This()) core.HResult!bool {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.IsRegistered();
    }
    pub fn Connect(self: *@This()) core.HResult!bool {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.Connect();
    }
    pub fn ConnectAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IPhoneLineTransportDevice = @ptrCast(self);
        return try this.ConnectAsync();
    }
    pub fn getAudioRoutingStatus(self: *@This()) core.HResult!TransportDeviceAudioRoutingStatus {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioRoutingStatus();
    }
    pub fn addAudioRoutingStatusChanged(self: *@This(), handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAudioRoutingStatusChanged(handler);
    }
    pub fn removeAudioRoutingStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAudioRoutingStatusChanged(token);
    }
    pub fn getInBandRingingEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInBandRingingEnabled();
    }
    pub fn addInBandRingingEnabledChanged(self: *@This(), handler: *TypedEventHandler(PhoneLineTransportDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addInBandRingingEnabledChanged(handler);
    }
    pub fn removeInBandRingingEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPhoneLineTransportDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPhoneLineTransportDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeInBandRingingEnabledChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromId(id: HSTRING) core.HResult!*PhoneLineTransportDevice {
        const _f = @This().IPhoneLineTransportDeviceStaticsCache.get();
        return try _f.FromId(id);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IPhoneLineTransportDeviceStaticsCache.get();
        return try _f.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithTransport(transport: PhoneLineTransport) core.HResult!HSTRING {
        const _f = @This().IPhoneLineTransportDeviceStaticsCache.get();
        return try _f.GetDeviceSelectorWithTransport(transport);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineTransportDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineTransportDevice.GUID;
    pub const IID: Guid = IPhoneLineTransportDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineTransportDevice.SIGNATURE);
    var _IPhoneLineTransportDeviceStaticsCache: FactoryCache(IPhoneLineTransportDeviceStatics, RUNTIME_NAME) = .{};
};
pub const PhoneLineWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn addLineAdded(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.addLineAdded(handler);
    }
    pub fn removeLineAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.removeLineAdded(token);
    }
    pub fn addLineRemoved(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.addLineRemoved(handler);
    }
    pub fn removeLineRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.removeLineRemoved(token);
    }
    pub fn addLineUpdated(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,PhoneLineWatcherEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.addLineUpdated(handler);
    }
    pub fn removeLineUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.removeLineUpdated(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn addStopped(self: *@This(), handler: *TypedEventHandler(PhoneLineWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.addStopped(handler);
    }
    pub fn removeStopped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.removeStopped(token);
    }
    pub fn getStatus(self: *@This()) core.HResult!PhoneLineWatcherStatus {
        const this: *IPhoneLineWatcher = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineWatcher.GUID;
    pub const IID: Guid = IPhoneLineWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineWatcher.SIGNATURE);
};
pub const PhoneLineWatcherEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLineId(self: *@This()) core.HResult!*Guid {
        const this: *IPhoneLineWatcherEventArgs = @ptrCast(self);
        return try this.getLineId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneLineWatcherEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneLineWatcherEventArgs.GUID;
    pub const IID: Guid = IPhoneLineWatcherEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneLineWatcherEventArgs.SIGNATURE);
};
pub const PhoneLineWatcherStatus = enum(i32) {
    Created = 0,
    Started = 1,
    EnumerationCompleted = 2,
    Stopped = 3,
};
pub const PhoneNetworkState = enum(i32) {
    Unknown = 0,
    NoSignal = 1,
    Deregistered = 2,
    Denied = 3,
    Searching = 4,
    Home = 5,
    RoamingInternational = 6,
    RoamingDomestic = 7,
};
pub const PhoneSimState = enum(i32) {
    Unknown = 0,
    PinNotRequired = 1,
    PinUnlocked = 2,
    PinLocked = 3,
    PukLocked = 4,
    NotInserted = 5,
    Invalid = 6,
    Disabled = 7,
};
pub const PhoneVoicemail = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneVoicemail = @ptrCast(self);
        return try this.getNumber();
    }
    pub fn getMessageCount(self: *@This()) core.HResult!i32 {
        const this: *IPhoneVoicemail = @ptrCast(self);
        return try this.getMessageCount();
    }
    pub fn getType(self: *@This()) core.HResult!PhoneVoicemailType {
        const this: *IPhoneVoicemail = @ptrCast(self);
        return try this.getType();
    }
    pub fn DialVoicemailAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPhoneVoicemail = @ptrCast(self);
        return try this.DialVoicemailAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneVoicemail";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneVoicemail.GUID;
    pub const IID: Guid = IPhoneVoicemail.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneVoicemail.SIGNATURE);
};
pub const PhoneVoicemailType = enum(i32) {
    None = 0,
    Traditional = 1,
    Visual = 2,
};
pub const TransportDeviceAudioRoutingStatus = enum(i32) {
    Unknown = 0,
    CanRouteToLocalDevice = 1,
    CannotRouteToLocalDevice = 2,
};
pub const AcceptedVoipPhoneCallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContext();
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContext(value);
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactName();
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactName(value);
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactNumber();
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactNumber(value);
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putServiceName(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IAcceptedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getAssociatedDeviceIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAcceptedVoipPhoneCallOptions.IID)));
    }
    pub fn CreateInstance(associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*AcceptedVoipPhoneCallOptions {
        const _f = @This().IAcceptedVoipPhoneCallOptionsFactoryCache.get();
        return try _f.CreateInstance(associatedDeviceIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.AcceptedVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAcceptedVoipPhoneCallOptions.GUID;
    pub const IID: Guid = IAcceptedVoipPhoneCallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAcceptedVoipPhoneCallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAcceptedVoipPhoneCallOptionsFactoryCache: FactoryCache(IAcceptedVoipPhoneCallOptionsFactory, RUNTIME_NAME) = .{};
};
pub const AppInitiatedVoipPhoneCallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContext();
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContext(value);
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactName();
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactName(value);
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactNumber();
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactNumber(value);
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putServiceName(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IAppInitiatedVoipPhoneCallOptions = @ptrCast(self);
        return try this.getAssociatedDeviceIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppInitiatedVoipPhoneCallOptions.IID)));
    }
    pub fn CreateInstance(associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*AppInitiatedVoipPhoneCallOptions {
        const _f = @This().IAppInitiatedVoipPhoneCallOptionsFactoryCache.get();
        return try _f.CreateInstance(associatedDeviceIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.AppInitiatedVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppInitiatedVoipPhoneCallOptions.GUID;
    pub const IID: Guid = IAppInitiatedVoipPhoneCallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppInitiatedVoipPhoneCallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAppInitiatedVoipPhoneCallOptionsFactoryCache: FactoryCache(IAppInitiatedVoipPhoneCallOptionsFactory, RUNTIME_NAME) = .{};
};
pub const CallAnswerEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAcceptedMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *ICallAnswerEventArgs = @ptrCast(self);
        return try this.getAcceptedMedia();
    }
    pub fn getSourceDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICallAnswerEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICallAnswerEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourceDeviceId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.CallAnswerEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICallAnswerEventArgs.GUID;
    pub const IID: Guid = ICallAnswerEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICallAnswerEventArgs.SIGNATURE);
};
pub const CallRejectEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRejectReason(self: *@This()) core.HResult!VoipPhoneCallRejectReason {
        const this: *ICallRejectEventArgs = @ptrCast(self);
        return try this.getRejectReason();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.CallRejectEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICallRejectEventArgs.GUID;
    pub const IID: Guid = ICallRejectEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICallRejectEventArgs.SIGNATURE);
};
pub const CallStateChangeEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!VoipPhoneCallState {
        const this: *ICallStateChangeEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.CallStateChangeEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICallStateChangeEventArgs.GUID;
    pub const IID: Guid = ICallStateChangeEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICallStateChangeEventArgs.SIGNATURE);
};
pub const IAcceptedVoipPhoneCallOptions = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Context(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AssociatedDeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IAcceptedVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e519c726-b86f-5add-8ae2-0f46acd9232d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Context: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        get_AssociatedDeviceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IAcceptedVoipPhoneCallOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*AcceptedVoipPhoneCallOptions {
        var _r: *AcceptedVoipPhoneCallOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), associatedDeviceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IAcceptedVoipPhoneCallOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cf8a79b-acc1-54ce-a75d-cc78d17690c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING), _r: **AcceptedVoipPhoneCallOptions) callconv(.winapi) HRESULT,
    };
};
pub const IAppInitiatedVoipPhoneCallOptions = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Context(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AssociatedDeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IAppInitiatedVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "86bebf63-ff5a-57fd-84c6-2d2cf18302f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Context: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        get_AssociatedDeviceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IAppInitiatedVoipPhoneCallOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*AppInitiatedVoipPhoneCallOptions {
        var _r: *AppInitiatedVoipPhoneCallOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), associatedDeviceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IAppInitiatedVoipPhoneCallOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca46c30c-f779-5f3b-8ebc-a635e7f652b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING), _r: **AppInitiatedVoipPhoneCallOptions) callconv(.winapi) HRESULT,
    };
};
pub const ICallAnswerEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAcceptedMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_AcceptedMedia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ICallAnswerEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd789617-2dd7-4c8c-b2bd-95d17a5bb733";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AcceptedMedia: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
    };
};
pub const ICallAnswerEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getSourceDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ICallAnswerEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "408208f7-c3f7-579a-800d-541082cba051";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICallRejectEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRejectReason(self: *@This()) core.HResult!VoipPhoneCallRejectReason {
        var _r: VoipPhoneCallRejectReason = undefined;
        const _c = self.vtable.get_RejectReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ICallRejectEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da47fad7-13d4-4d92-a1c2-b77811ee37ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RejectReason: *const fn(self: *anyopaque, _r: *VoipPhoneCallRejectReason) callconv(.winapi) HRESULT,
    };
};
pub const ICallStateChangeEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!VoipPhoneCallState {
        var _r: VoipPhoneCallState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.ICallStateChangeEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eab2349e-66f5-47f9-9fb5-459c5198c720";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *VoipPhoneCallState) callconv(.winapi) HRESULT,
    };
};
pub const IIncomingVoipPhoneCallOptions = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Context(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactImage(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ContactImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactImage(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ContactImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBrandingImage(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_BrandingImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrandingImage(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_BrandingImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallDetails(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CallDetails(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CallDetails(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRingtone(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Ringtone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRingtone(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Ringtone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRingTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RingTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRingTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_RingTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactRemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactRemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AssociatedDeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IIncomingVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4379fcd6-ddd0-5e9b-81d8-5110495764ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Context: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactNumber: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactImage: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ContactImage: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BrandingImage: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_BrandingImage: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_CallDetails: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CallDetails: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Ringtone: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Ringtone: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        get_RingTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_RingTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ContactRemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactRemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AssociatedDeviceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IIncomingVoipPhoneCallOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*IncomingVoipPhoneCallOptions {
        var _r: *IncomingVoipPhoneCallOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), associatedDeviceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IIncomingVoipPhoneCallOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74062de4-08f0-5649-bd80-89ea87185c78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING), _r: **IncomingVoipPhoneCallOptions) callconv(.winapi) HRESULT,
    };
};
pub const IMuteChangeEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Muted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IMuteChangeEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8585e159-0c41-432c-814d-c5f1fdf530be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Muted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IOutgoingVoipPhoneCallOptions = extern struct {
    vtable: *const VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Context(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ServiceName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_AssociatedDeviceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IOutgoingVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6c59b57-57be-524f-9dc1-f2c12e5d1bcc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Context: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContactName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ServiceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ServiceName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        get_AssociatedDeviceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IOutgoingVoipPhoneCallOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*OutgoingVoipPhoneCallOptions {
        var _r: *OutgoingVoipPhoneCallOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), associatedDeviceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IOutgoingVoipPhoneCallOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ea2c6f4-0b7a-5789-9d33-fe3271fdefa8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING), _r: **OutgoingVoipPhoneCallOptions) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinator = extern struct {
    vtable: *const VTable,
    pub fn ReserveCallResourcesAsync(self: *@This(), taskEntryPoint: HSTRING) core.HResult!*IAsyncOperation(VoipPhoneCallResourceReservationStatus) {
        var _r: *IAsyncOperation(VoipPhoneCallResourceReservationStatus) = undefined;
        const _c = self.vtable.ReserveCallResourcesAsync(@ptrCast(self), taskEntryPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMuteStateChanged(self: *@This(), muteChangeHandler: *TypedEventHandler(VoipCallCoordinator,MuteChangeEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MuteStateChanged(@ptrCast(self), muteChangeHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMuteStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MuteStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestNewIncomingCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewIncomingCall(@ptrCast(self), context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, media, ringTimeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestNewOutgoingCall(self: *@This(), context: HSTRING, contactName: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewOutgoingCall(@ptrCast(self), context, contactName, serviceName, media, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NotifyMuted(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyMuted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyUnmuted(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyUnmuted(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestOutgoingUpgradeToVideoCall(self: *@This(), callUpgradeGuid: *Guid, context: HSTRING, contactName: HSTRING, serviceName: HSTRING) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestOutgoingUpgradeToVideoCall(@ptrCast(self), callUpgradeGuid, context, contactName, serviceName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestIncomingUpgradeToVideoCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, ringTimeout: TimeSpan) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestIncomingUpgradeToVideoCall(@ptrCast(self), context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, ringTimeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TerminateCellularCall(self: *@This(), callUpgradeGuid: *Guid) core.HResult!void {
        const _c = self.vtable.TerminateCellularCall(@ptrCast(self), callUpgradeGuid);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CancelUpgrade(self: *@This(), callUpgradeGuid: *Guid) core.HResult!void {
        const _c = self.vtable.CancelUpgrade(@ptrCast(self), callUpgradeGuid);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f118bcf-e8ef-4434-9c5f-a8d893fafe79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReserveCallResourcesAsync: *const fn(self: *anyopaque, taskEntryPoint: HSTRING, _r: **IAsyncOperation(VoipPhoneCallResourceReservationStatus)) callconv(.winapi) HRESULT,
        add_MuteStateChanged: *const fn(self: *anyopaque, muteChangeHandler: *TypedEventHandler(VoipCallCoordinator,MuteChangeEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MuteStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RequestNewIncomingCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        RequestNewOutgoingCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        NotifyMuted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyUnmuted: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RequestOutgoingUpgradeToVideoCall: *const fn(self: *anyopaque, callUpgradeGuid: *Guid, context: HSTRING, contactName: HSTRING, serviceName: HSTRING, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        RequestIncomingUpgradeToVideoCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, ringTimeout: TimeSpan, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        TerminateCellularCall: *const fn(self: *anyopaque, callUpgradeGuid: *Guid) callconv(.winapi) HRESULT,
        CancelUpgrade: *const fn(self: *anyopaque, callUpgradeGuid: *Guid) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinator2 = extern struct {
    vtable: *const VTable,
    pub fn SetupNewAcceptedCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.SetupNewAcceptedCall(@ptrCast(self), context, contactName, contactNumber, serviceName, media, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinator2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "beb4a9f3-c704-4234-89ce-e88cc0d28fbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetupNewAcceptedCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinator3 = extern struct {
    vtable: *const VTable,
    pub fn RequestNewAppInitiatedCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewAppInitiatedCall(@ptrCast(self), context, contactName, contactNumber, serviceName, media, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestNewIncomingCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan, contactRemoteId: HSTRING) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewIncomingCall(@ptrCast(self), context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, media, ringTimeout, contactRemoteId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinator3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "338d0cbf-9b55-4021-87ca-e64b9bd666c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestNewAppInitiatedCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        RequestNewIncomingCall: *const fn(self: *anyopaque, context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan, contactRemoteId: HSTRING, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinator4 = extern struct {
    vtable: *const VTable,
    pub fn ReserveCallResourcesAsync(self: *@This()) core.HResult!*IAsyncOperation(VoipPhoneCallResourceReservationStatus) {
        var _r: *IAsyncOperation(VoipPhoneCallResourceReservationStatus) = undefined;
        const _c = self.vtable.ReserveCallResourcesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinator4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83737239-9311-468f-bb49-47e0dfb5d93e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReserveCallResourcesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VoipPhoneCallResourceReservationStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinator5 = extern struct {
    vtable: *const VTable,
    pub fn RequestNewIncomingCallWithOptions(self: *@This(), callOptions: *IncomingVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewIncomingCallWithOptions(@ptrCast(self), callOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestNewOutgoingCallWithOptions(self: *@This(), callOptions: *OutgoingVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewOutgoingCallWithOptions(@ptrCast(self), callOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetupNewAcceptedCallWithOptions(self: *@This(), callOptions: *AcceptedVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.SetupNewAcceptedCallWithOptions(@ptrCast(self), callOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestNewAppInitiatedCallWithOptions(self: *@This(), callOptions: *AppInitiatedVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var _r: *VoipPhoneCall = undefined;
        const _c = self.vtable.RequestNewAppInitiatedCallWithOptions(@ptrCast(self), callOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinator5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4f79017-d1c1-5820-955e-7a1676355d00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestNewIncomingCallWithOptions: *const fn(self: *anyopaque, callOptions: *IncomingVoipPhoneCallOptions, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        RequestNewOutgoingCallWithOptions: *const fn(self: *anyopaque, callOptions: *OutgoingVoipPhoneCallOptions, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        SetupNewAcceptedCallWithOptions: *const fn(self: *anyopaque, callOptions: *AcceptedVoipPhoneCallOptions, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
        RequestNewAppInitiatedCallWithOptions: *const fn(self: *anyopaque, callOptions: *AppInitiatedVoipPhoneCallOptions, _r: **VoipPhoneCall) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinatorStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*VoipCallCoordinator {
        var _r: *VoipCallCoordinator = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinatorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f5d1f2b-e04a-4d10-b31a-a55c922cc2fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **VoipCallCoordinator) callconv(.winapi) HRESULT,
    };
};
pub const IVoipCallCoordinatorStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsCallControlDeviceKindSupportedForAssociation(self: *@This(), kind: VoipCallControlDeviceKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCallControlDeviceKindSupportedForAssociation(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelectorForCallControl(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelectorForCallControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipCallCoordinatorStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8d0288b-01ea-5478-8404-a1fb06f2b83b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsCallControlDeviceKindSupportedForAssociation: *const fn(self: *anyopaque, kind: VoipCallControlDeviceKind, _r: *bool) callconv(.winapi) HRESULT,
        GetDeviceSelectorForCallControl: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVoipPhoneCall = extern struct {
    vtable: *const VTable,
    pub fn addEndRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EndRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEndRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EndRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHoldRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HoldRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHoldRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HoldRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResumeRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ResumeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResumeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ResumeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAnswerRequested(self: *@This(), acceptHandler: *TypedEventHandler(VoipPhoneCall,CallAnswerEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AnswerRequested(@ptrCast(self), acceptHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAnswerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AnswerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRejectRequested(self: *@This(), rejectHandler: *TypedEventHandler(VoipPhoneCall,CallRejectEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RejectRequested(@ptrCast(self), rejectHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRejectRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RejectRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyCallHeld(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyCallHeld(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyCallActive(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyCallActive(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyCallEnded(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyCallEnded(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCallMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        var _r: VoipPhoneCallMedia = undefined;
        const _c = self.vtable.get_CallMedia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCallMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.put_CallMedia(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyCallReady(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyCallReady(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipPhoneCall";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6cf1f19a-7794-4a5a-8c68-ae87947a6990";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_EndRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EndRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HoldRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HoldRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ResumeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ResumeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AnswerRequested: *const fn(self: *anyopaque, acceptHandler: *TypedEventHandler(VoipPhoneCall,CallAnswerEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AnswerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RejectRequested: *const fn(self: *anyopaque, rejectHandler: *TypedEventHandler(VoipPhoneCall,CallRejectEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RejectRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyCallHeld: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyCallActive: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyCallEnded: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_ContactName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
        get_CallMedia: *const fn(self: *anyopaque, _r: *VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        put_CallMedia: *const fn(self: *anyopaque, value: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
        NotifyCallReady: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IVoipPhoneCall2 = extern struct {
    vtable: *const VTable,
    pub fn TryShowAppUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.TryShowAppUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipPhoneCall2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "741b46e1-245f-41f3-9399-3141d25b52e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryShowAppUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IVoipPhoneCall3 = extern struct {
    vtable: *const VTable,
    pub fn NotifyCallAccepted(self: *@This(), media: VoipPhoneCallMedia) core.HResult!void {
        const _c = self.vtable.NotifyCallAccepted(@ptrCast(self), media);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipPhoneCall3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d891522-e258-4aa9-907a-1aa413c25523";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        NotifyCallAccepted: *const fn(self: *anyopaque, media: VoipPhoneCallMedia) callconv(.winapi) HRESULT,
    };
};
pub const IVoipPhoneCall4 = extern struct {
    vtable: *const VTable,
    pub fn getIsUsingAssociatedDevicesList(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUsingAssociatedDevicesList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn NotifyCallActive(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.NotifyCallActive(@ptrCast(self), associatedDeviceIds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddAssociatedCallControlDevice(self: *@This(), deviceId: HSTRING) core.HResult!void {
        const _c = self.vtable.AddAssociatedCallControlDevice(@ptrCast(self), deviceId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAssociatedCallControlDevice(self: *@This(), deviceId: HSTRING) core.HResult!void {
        const _c = self.vtable.RemoveAssociatedCallControlDevice(@ptrCast(self), deviceId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetAssociatedCallControlDevices(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!void {
        const _c = self.vtable.SetAssociatedCallControlDevices(@ptrCast(self), associatedDeviceIds);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAssociatedCallControlDevices(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetAssociatedCallControlDevices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IVoipPhoneCall4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eba66290-ad6d-5899-bdda-81bfe9f999a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsUsingAssociatedDevicesList: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        NotifyCallActive: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        AddAssociatedCallControlDevice: *const fn(self: *anyopaque, deviceId: HSTRING) callconv(.winapi) HRESULT,
        RemoveAssociatedCallControlDevice: *const fn(self: *anyopaque, deviceId: HSTRING) callconv(.winapi) HRESULT,
        SetAssociatedCallControlDevices: *const fn(self: *anyopaque, associatedDeviceIds: *IIterable(HSTRING)) callconv(.winapi) HRESULT,
        GetAssociatedCallControlDevices: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IncomingVoipPhoneCallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContext();
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContext(value);
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactName();
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactName(value);
    }
    pub fn getContactNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactNumber();
    }
    pub fn putContactNumber(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactNumber(value);
    }
    pub fn getContactImage(self: *@This()) core.HResult!*Uri {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactImage();
    }
    pub fn putContactImage(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactImage(value);
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putServiceName(value);
    }
    pub fn getBrandingImage(self: *@This()) core.HResult!*Uri {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getBrandingImage();
    }
    pub fn putBrandingImage(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putBrandingImage(value);
    }
    pub fn getCallDetails(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getCallDetails();
    }
    pub fn putCallDetails(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putCallDetails(value);
    }
    pub fn getRingtone(self: *@This()) core.HResult!*Uri {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getRingtone();
    }
    pub fn putRingtone(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putRingtone(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getRingTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getRingTimeout();
    }
    pub fn putRingTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putRingTimeout(value);
    }
    pub fn getContactRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactRemoteId();
    }
    pub fn putContactRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactRemoteId(value);
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IIncomingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getAssociatedDeviceIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IIncomingVoipPhoneCallOptions.IID)));
    }
    pub fn CreateInstance(associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*IncomingVoipPhoneCallOptions {
        const _f = @This().IIncomingVoipPhoneCallOptionsFactoryCache.get();
        return try _f.CreateInstance(associatedDeviceIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IncomingVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IIncomingVoipPhoneCallOptions.GUID;
    pub const IID: Guid = IIncomingVoipPhoneCallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IIncomingVoipPhoneCallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IIncomingVoipPhoneCallOptionsFactoryCache: FactoryCache(IIncomingVoipPhoneCallOptionsFactory, RUNTIME_NAME) = .{};
};
pub const MuteChangeEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMuted(self: *@This()) core.HResult!bool {
        const this: *IMuteChangeEventArgs = @ptrCast(self);
        return try this.getMuted();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.MuteChangeEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMuteChangeEventArgs.GUID;
    pub const IID: Guid = IMuteChangeEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMuteChangeEventArgs.SIGNATURE);
};
pub const OutgoingVoipPhoneCallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContext(self: *@This()) core.HResult!HSTRING {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContext();
    }
    pub fn putContext(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContext(value);
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getContactName();
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putContactName(value);
    }
    pub fn getServiceName(self: *@This()) core.HResult!HSTRING {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getServiceName();
    }
    pub fn putServiceName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putServiceName(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getAssociatedDeviceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IOutgoingVoipPhoneCallOptions = @ptrCast(self);
        return try this.getAssociatedDeviceIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IOutgoingVoipPhoneCallOptions.IID)));
    }
    pub fn CreateInstance(associatedDeviceIds: *IIterable(HSTRING)) core.HResult!*OutgoingVoipPhoneCallOptions {
        const _f = @This().IOutgoingVoipPhoneCallOptionsFactoryCache.get();
        return try _f.CreateInstance(associatedDeviceIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.OutgoingVoipPhoneCallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOutgoingVoipPhoneCallOptions.GUID;
    pub const IID: Guid = IOutgoingVoipPhoneCallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOutgoingVoipPhoneCallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IOutgoingVoipPhoneCallOptionsFactoryCache: FactoryCache(IOutgoingVoipPhoneCallOptionsFactory, RUNTIME_NAME) = .{};
};
pub const VoipCallControlDeviceKind = enum(i32) {
    Bluetooth = 0,
    Usb = 1,
};
pub const VoipCallCoordinator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReserveCallResourcesAsyncWithTaskEntryPoint(self: *@This(), taskEntryPoint: HSTRING) core.HResult!*IAsyncOperation(VoipPhoneCallResourceReservationStatus) {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.ReserveCallResourcesAsyncWithTaskEntryPoint(taskEntryPoint);
    }
    pub fn addMuteStateChanged(self: *@This(), muteChangeHandler: *TypedEventHandler(VoipCallCoordinator,MuteChangeEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.addMuteStateChanged(muteChangeHandler);
    }
    pub fn removeMuteStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.removeMuteStateChanged(token);
    }
    pub fn RequestNewIncomingCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan) core.HResult!*VoipPhoneCall {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.RequestNewIncomingCall(context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, media, ringTimeout);
    }
    pub fn RequestNewOutgoingCall(self: *@This(), context: HSTRING, contactName: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.RequestNewOutgoingCall(context, contactName, serviceName, media);
    }
    pub fn NotifyMuted(self: *@This()) core.HResult!void {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.NotifyMuted();
    }
    pub fn NotifyUnmuted(self: *@This()) core.HResult!void {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.NotifyUnmuted();
    }
    pub fn RequestOutgoingUpgradeToVideoCall(self: *@This(), callUpgradeGuid: *Guid, context: HSTRING, contactName: HSTRING, serviceName: HSTRING) core.HResult!*VoipPhoneCall {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.RequestOutgoingUpgradeToVideoCall(callUpgradeGuid, context, contactName, serviceName);
    }
    pub fn RequestIncomingUpgradeToVideoCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, ringTimeout: TimeSpan) core.HResult!*VoipPhoneCall {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.RequestIncomingUpgradeToVideoCall(context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, ringTimeout);
    }
    pub fn TerminateCellularCall(self: *@This(), callUpgradeGuid: *Guid) core.HResult!void {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.TerminateCellularCall(callUpgradeGuid);
    }
    pub fn CancelUpgrade(self: *@This(), callUpgradeGuid: *Guid) core.HResult!void {
        const this: *IVoipCallCoordinator = @ptrCast(self);
        return try this.CancelUpgrade(callUpgradeGuid);
    }
    pub fn SetupNewAcceptedCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetupNewAcceptedCall(context, contactName, contactNumber, serviceName, media);
    }
    pub fn RequestNewAppInitiatedCall(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, serviceName: HSTRING, media: VoipPhoneCallMedia) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestNewAppInitiatedCall(context, contactName, contactNumber, serviceName, media);
    }
    pub fn RequestNewIncomingCallWithContactRemoteId(self: *@This(), context: HSTRING, contactName: HSTRING, contactNumber: HSTRING, contactImage: *Uri, serviceName: HSTRING, brandingImage: *Uri, callDetails: HSTRING, ringtone: *Uri, media: VoipPhoneCallMedia, ringTimeout: TimeSpan, contactRemoteId: HSTRING) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestNewIncomingCallWithContactRemoteId(context, contactName, contactNumber, contactImage, serviceName, brandingImage, callDetails, ringtone, media, ringTimeout, contactRemoteId);
    }
    pub fn ReserveCallResourcesAsync(self: *@This()) core.HResult!*IAsyncOperation(VoipPhoneCallResourceReservationStatus) {
        var this: ?*IVoipCallCoordinator4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReserveCallResourcesAsync();
    }
    pub fn RequestNewIncomingCallWithOptions(self: *@This(), callOptions: *IncomingVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestNewIncomingCallWithOptions(callOptions);
    }
    pub fn RequestNewOutgoingCallWithOptions(self: *@This(), callOptions: *OutgoingVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestNewOutgoingCallWithOptions(callOptions);
    }
    pub fn SetupNewAcceptedCallWithOptions(self: *@This(), callOptions: *AcceptedVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetupNewAcceptedCallWithOptions(callOptions);
    }
    pub fn RequestNewAppInitiatedCallWithOptions(self: *@This(), callOptions: *AppInitiatedVoipPhoneCallOptions) core.HResult!*VoipPhoneCall {
        var this: ?*IVoipCallCoordinator5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipCallCoordinator5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestNewAppInitiatedCallWithOptions(callOptions);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*VoipCallCoordinator {
        const _f = @This().IVoipCallCoordinatorStaticsCache.get();
        return try _f.GetDefault();
    }
    pub fn IsCallControlDeviceKindSupportedForAssociation(kind: VoipCallControlDeviceKind) core.HResult!bool {
        const _f = @This().IVoipCallCoordinatorStatics2Cache.get();
        return try _f.IsCallControlDeviceKindSupportedForAssociation(kind);
    }
    pub fn GetDeviceSelectorForCallControl() core.HResult!HSTRING {
        const _f = @This().IVoipCallCoordinatorStatics2Cache.get();
        return try _f.GetDeviceSelectorForCallControl();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.VoipCallCoordinator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoipCallCoordinator.GUID;
    pub const IID: Guid = IVoipCallCoordinator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoipCallCoordinator.SIGNATURE);
    var _IVoipCallCoordinatorStaticsCache: FactoryCache(IVoipCallCoordinatorStatics, RUNTIME_NAME) = .{};
    var _IVoipCallCoordinatorStatics2Cache: FactoryCache(IVoipCallCoordinatorStatics2, RUNTIME_NAME) = .{};
};
pub const VoipPhoneCall = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addEndRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.addEndRequested(handler);
    }
    pub fn removeEndRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.removeEndRequested(token);
    }
    pub fn addHoldRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.addHoldRequested(handler);
    }
    pub fn removeHoldRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.removeHoldRequested(token);
    }
    pub fn addResumeRequested(self: *@This(), handler: *TypedEventHandler(VoipPhoneCall,CallStateChangeEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.addResumeRequested(handler);
    }
    pub fn removeResumeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.removeResumeRequested(token);
    }
    pub fn addAnswerRequested(self: *@This(), acceptHandler: *TypedEventHandler(VoipPhoneCall,CallAnswerEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.addAnswerRequested(acceptHandler);
    }
    pub fn removeAnswerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.removeAnswerRequested(token);
    }
    pub fn addRejectRequested(self: *@This(), rejectHandler: *TypedEventHandler(VoipPhoneCall,CallRejectEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.addRejectRequested(rejectHandler);
    }
    pub fn removeRejectRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.removeRejectRequested(token);
    }
    pub fn NotifyCallHeld(self: *@This()) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.NotifyCallHeld();
    }
    pub fn NotifyCallActive(self: *@This()) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.NotifyCallActive();
    }
    pub fn NotifyCallEnded(self: *@This()) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.NotifyCallEnded();
    }
    pub fn getContactName(self: *@This()) core.HResult!HSTRING {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.getContactName();
    }
    pub fn putContactName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.putContactName(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getCallMedia(self: *@This()) core.HResult!VoipPhoneCallMedia {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.getCallMedia();
    }
    pub fn putCallMedia(self: *@This(), value: VoipPhoneCallMedia) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.putCallMedia(value);
    }
    pub fn NotifyCallReady(self: *@This()) core.HResult!void {
        const this: *IVoipPhoneCall = @ptrCast(self);
        return try this.NotifyCallReady();
    }
    pub fn TryShowAppUI(self: *@This()) core.HResult!void {
        var this: ?*IVoipPhoneCall2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryShowAppUI();
    }
    pub fn NotifyCallAccepted(self: *@This(), media: VoipPhoneCallMedia) core.HResult!void {
        var this: ?*IVoipPhoneCall3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NotifyCallAccepted(media);
    }
    pub fn getIsUsingAssociatedDevicesList(self: *@This()) core.HResult!bool {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsUsingAssociatedDevicesList();
    }
    pub fn NotifyCallActiveWithAssociatedDeviceIds(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!void {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NotifyCallActiveWithAssociatedDeviceIds(associatedDeviceIds);
    }
    pub fn AddAssociatedCallControlDevice(self: *@This(), deviceId: HSTRING) core.HResult!void {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddAssociatedCallControlDevice(deviceId);
    }
    pub fn RemoveAssociatedCallControlDevice(self: *@This(), deviceId: HSTRING) core.HResult!void {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAssociatedCallControlDevice(deviceId);
    }
    pub fn SetAssociatedCallControlDevices(self: *@This(), associatedDeviceIds: *IIterable(HSTRING)) core.HResult!void {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAssociatedCallControlDevices(associatedDeviceIds);
    }
    pub fn GetAssociatedCallControlDevices(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var this: ?*IVoipPhoneCall4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVoipPhoneCall4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAssociatedCallControlDevices();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.VoipPhoneCall";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVoipPhoneCall.GUID;
    pub const IID: Guid = IVoipPhoneCall.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVoipPhoneCall.SIGNATURE);
};
pub const VoipPhoneCallMedia = enum(i32) {
    None = 0,
    Audio = 1,
    Video = 2,
};
pub const VoipPhoneCallRejectReason = enum(i32) {
    UserIgnored = 0,
    TimedOut = 1,
    OtherIncomingCall = 2,
    EmergencyCallExists = 3,
    InvalidCallState = 4,
};
pub const VoipPhoneCallResourceReservationStatus = enum(i32) {
    Success = 0,
    ResourcesNotAvailable = 1,
};
pub const VoipPhoneCallState = enum(i32) {
    Ended = 0,
    Held = 1,
    Active = 2,
    Incoming = 3,
    Outgoing = 4,
};
pub const IPhoneCallHistoryEntry = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddress(self: *@This()) core.HResult!*PhoneCallHistoryEntryAddress {
        var _r: *PhoneCallHistoryEntryAddress = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAddress(self: *@This(), value: *PhoneCallHistoryEntryAddress) core.HResult!void {
        const _c = self.vtable.put_Address(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCallerIdBlocked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCallerIdBlocked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCallerIdBlocked(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCallerIdBlocked(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEmergency(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEmergency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEmergency(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEmergency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsIncoming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIncoming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsIncoming(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsIncoming(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMissed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMissed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMissed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMissed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRinging(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRinging(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRinging(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRinging(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSeen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSeen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSeen(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSeen(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSuppressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuppressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSuppressed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSuppressed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVoicemail(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVoicemail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVoicemail(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVoicemail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMedia(self: *@This()) core.HResult!PhoneCallHistoryEntryMedia {
        var _r: PhoneCallHistoryEntryMedia = undefined;
        const _c = self.vtable.get_Media(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMedia(self: *@This(), value: PhoneCallHistoryEntryMedia) core.HResult!void {
        const _c = self.vtable.put_Media(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!PhoneCallHistoryEntryOtherAppReadAccess {
        var _r: PhoneCallHistoryEntryOtherAppReadAccess = undefined;
        const _c = self.vtable.get_OtherAppReadAccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: PhoneCallHistoryEntryOtherAppReadAccess) core.HResult!void {
        const _c = self.vtable.put_OtherAppReadAccess(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RemoteId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RemoteId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SourceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceIdKind(self: *@This()) core.HResult!PhoneCallHistorySourceIdKind {
        var _r: PhoneCallHistorySourceIdKind = undefined;
        const _c = self.vtable.get_SourceIdKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceIdKind(self: *@This(), value: PhoneCallHistorySourceIdKind) core.HResult!void {
        const _c = self.vtable.put_SourceIdKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fab0e129-32a4-4b85-83d1-f90d8c23a857";
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
        get_Address: *const fn(self: *anyopaque, _r: **PhoneCallHistoryEntryAddress) callconv(.winapi) HRESULT,
        put_Address: *const fn(self: *anyopaque, value: *PhoneCallHistoryEntryAddress) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_IsCallerIdBlocked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCallerIdBlocked: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsEmergency: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEmergency: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsIncoming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsIncoming: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsMissed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMissed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRinging: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRinging: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSeen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSeen: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsSuppressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSuppressed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsVoicemail: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsVoicemail: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Media: *const fn(self: *anyopaque, _r: *PhoneCallHistoryEntryMedia) callconv(.winapi) HRESULT,
        put_Media: *const fn(self: *anyopaque, value: PhoneCallHistoryEntryMedia) callconv(.winapi) HRESULT,
        get_OtherAppReadAccess: *const fn(self: *anyopaque, _r: *PhoneCallHistoryEntryOtherAppReadAccess) callconv(.winapi) HRESULT,
        put_OtherAppReadAccess: *const fn(self: *anyopaque, value: PhoneCallHistoryEntryOtherAppReadAccess) callconv(.winapi) HRESULT,
        get_RemoteId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RemoteId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SourceDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SourceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SourceId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SourceIdKind: *const fn(self: *anyopaque, _r: *PhoneCallHistorySourceIdKind) callconv(.winapi) HRESULT,
        put_SourceIdKind: *const fn(self: *anyopaque, value: PhoneCallHistorySourceIdKind) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryEntryAddress = extern struct {
    vtable: *const VTable,
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContactId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContactId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContactId(@ptrCast(self), value);
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
    pub fn getRawAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RawAddress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRawAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RawAddress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRawAddressKind(self: *@This()) core.HResult!PhoneCallHistoryEntryRawAddressKind {
        var _r: PhoneCallHistoryEntryRawAddressKind = undefined;
        const _c = self.vtable.get_RawAddressKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRawAddressKind(self: *@This(), value: PhoneCallHistoryEntryRawAddressKind) core.HResult!void {
        const _c = self.vtable.put_RawAddressKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30f159da-3955-4042-84e6-66eebf82e67f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContactId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContactId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RawAddress: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RawAddress: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_RawAddressKind: *const fn(self: *anyopaque, _r: *PhoneCallHistoryEntryRawAddressKind) callconv(.winapi) HRESULT,
        put_RawAddressKind: *const fn(self: *anyopaque, value: PhoneCallHistoryEntryRawAddressKind) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryEntryAddressFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), rawAddress: HSTRING, rawAddressKind: PhoneCallHistoryEntryRawAddressKind) core.HResult!*PhoneCallHistoryEntryAddress {
        var _r: *PhoneCallHistoryEntryAddress = undefined;
        const _c = self.vtable.Create(@ptrCast(self), rawAddress, rawAddressKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryAddressFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb0fadba-c7f0-4bb6-9f6b-ba5d73209aca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, rawAddress: HSTRING, rawAddressKind: PhoneCallHistoryEntryRawAddressKind, _r: **PhoneCallHistoryEntryAddress) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryEntryQueryOptions = extern struct {
    vtable: *const VTable,
    pub fn getDesiredMedia(self: *@This()) core.HResult!PhoneCallHistoryEntryQueryDesiredMedia {
        var _r: PhoneCallHistoryEntryQueryDesiredMedia = undefined;
        const _c = self.vtable.get_DesiredMedia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredMedia(self: *@This(), value: PhoneCallHistoryEntryQueryDesiredMedia) core.HResult!void {
        const _c = self.vtable.put_DesiredMedia(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_SourceIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c5fe15c-8bed-40ca-b06e-c4ca8eae5c87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredMedia: *const fn(self: *anyopaque, _r: *PhoneCallHistoryEntryQueryDesiredMedia) callconv(.winapi) HRESULT,
        put_DesiredMedia: *const fn(self: *anyopaque, value: PhoneCallHistoryEntryQueryDesiredMedia) callconv(.winapi) HRESULT,
        get_SourceIds: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryEntryReader = extern struct {
    vtable: *const VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PhoneCallHistoryEntry)) {
        var _r: *IAsyncOperation(IVectorView(PhoneCallHistoryEntry)) = undefined;
        const _c = self.vtable.ReadBatchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryEntryReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61ece4be-8d86-479f-8404-a9846920fee6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadBatchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(PhoneCallHistoryEntry))) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryManagerForUser = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: PhoneCallHistoryStoreAccessType) core.HResult!*IAsyncOperation(PhoneCallHistoryStore) {
        var _r: *IAsyncOperation(PhoneCallHistoryStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d925c523-f55f-4353-9db4-0205a5265a55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: PhoneCallHistoryStoreAccessType, _r: **IAsyncOperation(PhoneCallHistoryStore)) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: PhoneCallHistoryStoreAccessType) core.HResult!*IAsyncOperation(PhoneCallHistoryStore) {
        var _r: *IAsyncOperation(PhoneCallHistoryStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), accessType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5a6da39-b31f-4f45-ac8e-1b08893c1b50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, accessType: PhoneCallHistoryStoreAccessType, _r: **IAsyncOperation(PhoneCallHistoryStore)) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*PhoneCallHistoryManagerForUser {
        var _r: *PhoneCallHistoryManagerForUser = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efd474f0-a2db-4188-9e92-bc3cfa6813cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **PhoneCallHistoryManagerForUser) callconv(.winapi) HRESULT,
    };
};
pub const IPhoneCallHistoryStore = extern struct {
    vtable: *const VTable,
    pub fn GetEntryAsync(self: *@This(), callHistoryEntryId: HSTRING) core.HResult!*IAsyncOperation(PhoneCallHistoryEntry) {
        var _r: *IAsyncOperation(PhoneCallHistoryEntry) = undefined;
        const _c = self.vtable.GetEntryAsync(@ptrCast(self), callHistoryEntryId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEntryReader(self: *@This()) core.HResult!*PhoneCallHistoryEntryReader {
        var _r: *PhoneCallHistoryEntryReader = undefined;
        const _c = self.vtable.GetEntryReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEntryReaderWithQueryOptions(self: *@This(), queryOptions: *PhoneCallHistoryEntryQueryOptions) core.HResult!*PhoneCallHistoryEntryReader {
        var _r: *PhoneCallHistoryEntryReader = undefined;
        const _c = self.vtable.GetEntryReaderWithQueryOptions(@ptrCast(self), queryOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveEntryAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveEntryAsync(@ptrCast(self), callHistoryEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteEntryAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteEntryAsync(@ptrCast(self), callHistoryEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteEntriesAsync(self: *@This(), callHistoryEntries: *IIterable(PhoneCallHistoryEntry)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteEntriesAsync(@ptrCast(self), callHistoryEntries, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkEntryAsSeenAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkEntryAsSeenAsync(@ptrCast(self), callHistoryEntry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkEntriesAsSeenAsync(self: *@This(), callHistoryEntries: *IIterable(PhoneCallHistoryEntry)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkEntriesAsSeenAsync(@ptrCast(self), callHistoryEntries, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnseenCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetUnseenCountAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkAllAsSeenAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkAllAsSeenAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSourcesUnseenCountAsync(self: *@This(), sourceIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.GetSourcesUnseenCountAsync(@ptrCast(self), sourceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MarkSourcesAsSeenAsync(self: *@This(), sourceIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.MarkSourcesAsSeenAsync(@ptrCast(self), sourceIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.IPhoneCallHistoryStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f907db8-b40e-422b-8545-cb1910a61c52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetEntryAsync: *const fn(self: *anyopaque, callHistoryEntryId: HSTRING, _r: **IAsyncOperation(PhoneCallHistoryEntry)) callconv(.winapi) HRESULT,
        GetEntryReader: *const fn(self: *anyopaque, _r: **PhoneCallHistoryEntryReader) callconv(.winapi) HRESULT,
        GetEntryReaderWithQueryOptions: *const fn(self: *anyopaque, queryOptions: *PhoneCallHistoryEntryQueryOptions, _r: **PhoneCallHistoryEntryReader) callconv(.winapi) HRESULT,
        SaveEntryAsync: *const fn(self: *anyopaque, callHistoryEntry: *PhoneCallHistoryEntry, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteEntryAsync: *const fn(self: *anyopaque, callHistoryEntry: *PhoneCallHistoryEntry, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeleteEntriesAsync: *const fn(self: *anyopaque, callHistoryEntries: *IIterable(PhoneCallHistoryEntry), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkEntryAsSeenAsync: *const fn(self: *anyopaque, callHistoryEntry: *PhoneCallHistoryEntry, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        MarkEntriesAsSeenAsync: *const fn(self: *anyopaque, callHistoryEntries: *IIterable(PhoneCallHistoryEntry), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetUnseenCountAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        MarkAllAsSeenAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetSourcesUnseenCountAsync: *const fn(self: *anyopaque, sourceIds: *IIterable(HSTRING), _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        MarkSourcesAsSeenAsync: *const fn(self: *anyopaque, sourceIds: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const PhoneCallHistoryEntry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getId();
    }
    pub fn getAddress(self: *@This()) core.HResult!*PhoneCallHistoryEntryAddress {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn putAddress(self: *@This(), value: *PhoneCallHistoryEntryAddress) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putAddress(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getIsCallerIdBlocked(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsCallerIdBlocked();
    }
    pub fn putIsCallerIdBlocked(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsCallerIdBlocked(value);
    }
    pub fn getIsEmergency(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsEmergency();
    }
    pub fn putIsEmergency(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsEmergency(value);
    }
    pub fn getIsIncoming(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsIncoming();
    }
    pub fn putIsIncoming(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsIncoming(value);
    }
    pub fn getIsMissed(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsMissed();
    }
    pub fn putIsMissed(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsMissed(value);
    }
    pub fn getIsRinging(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsRinging();
    }
    pub fn putIsRinging(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsRinging(value);
    }
    pub fn getIsSeen(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsSeen();
    }
    pub fn putIsSeen(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsSeen(value);
    }
    pub fn getIsSuppressed(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsSuppressed();
    }
    pub fn putIsSuppressed(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsSuppressed(value);
    }
    pub fn getIsVoicemail(self: *@This()) core.HResult!bool {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getIsVoicemail();
    }
    pub fn putIsVoicemail(self: *@This(), value: bool) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putIsVoicemail(value);
    }
    pub fn getMedia(self: *@This()) core.HResult!PhoneCallHistoryEntryMedia {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getMedia();
    }
    pub fn putMedia(self: *@This(), value: PhoneCallHistoryEntryMedia) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putMedia(value);
    }
    pub fn getOtherAppReadAccess(self: *@This()) core.HResult!PhoneCallHistoryEntryOtherAppReadAccess {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getOtherAppReadAccess();
    }
    pub fn putOtherAppReadAccess(self: *@This(), value: PhoneCallHistoryEntryOtherAppReadAccess) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putOtherAppReadAccess(value);
    }
    pub fn getRemoteId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getRemoteId();
    }
    pub fn putRemoteId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putRemoteId(value);
    }
    pub fn getSourceDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getSourceDisplayName();
    }
    pub fn getSourceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getSourceId();
    }
    pub fn putSourceId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putSourceId(value);
    }
    pub fn getSourceIdKind(self: *@This()) core.HResult!PhoneCallHistorySourceIdKind {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getSourceIdKind();
    }
    pub fn putSourceIdKind(self: *@This(), value: PhoneCallHistorySourceIdKind) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putSourceIdKind(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!DateTime {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: DateTime) core.HResult!void {
        const this: *IPhoneCallHistoryEntry = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneCallHistoryEntry.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryEntry.GUID;
    pub const IID: Guid = IPhoneCallHistoryEntry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryEntry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PhoneCallHistoryEntryAddress = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContactId(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.getContactId();
    }
    pub fn putContactId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.putContactId(value);
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getRawAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.getRawAddress();
    }
    pub fn putRawAddress(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.putRawAddress(value);
    }
    pub fn getRawAddressKind(self: *@This()) core.HResult!PhoneCallHistoryEntryRawAddressKind {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.getRawAddressKind();
    }
    pub fn putRawAddressKind(self: *@This(), value: PhoneCallHistoryEntryRawAddressKind) core.HResult!void {
        const this: *IPhoneCallHistoryEntryAddress = @ptrCast(self);
        return try this.putRawAddressKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneCallHistoryEntryAddress.IID)));
    }
    pub fn Create(rawAddress: HSTRING, rawAddressKind: PhoneCallHistoryEntryRawAddressKind) core.HResult!*PhoneCallHistoryEntryAddress {
        const _f = @This().IPhoneCallHistoryEntryAddressFactoryCache.get();
        return try _f.Create(rawAddress, rawAddressKind);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryEntryAddress";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryEntryAddress.GUID;
    pub const IID: Guid = IPhoneCallHistoryEntryAddress.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryEntryAddress.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPhoneCallHistoryEntryAddressFactoryCache: FactoryCache(IPhoneCallHistoryEntryAddressFactory, RUNTIME_NAME) = .{};
};
pub const PhoneCallHistoryEntryMedia = enum(i32) {
    Audio = 0,
    Video = 1,
};
pub const PhoneCallHistoryEntryOtherAppReadAccess = enum(i32) {
    Full = 0,
    SystemOnly = 1,
};
pub const PhoneCallHistoryEntryQueryDesiredMedia = enum(i32) {
    None = 0,
    Audio = 1,
    Video = 2,
    All = -1,
};
pub const PhoneCallHistoryEntryQueryOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredMedia(self: *@This()) core.HResult!PhoneCallHistoryEntryQueryDesiredMedia {
        const this: *IPhoneCallHistoryEntryQueryOptions = @ptrCast(self);
        return try this.getDesiredMedia();
    }
    pub fn putDesiredMedia(self: *@This(), value: PhoneCallHistoryEntryQueryDesiredMedia) core.HResult!void {
        const this: *IPhoneCallHistoryEntryQueryOptions = @ptrCast(self);
        return try this.putDesiredMedia(value);
    }
    pub fn getSourceIds(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IPhoneCallHistoryEntryQueryOptions = @ptrCast(self);
        return try this.getSourceIds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPhoneCallHistoryEntryQueryOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryEntryQueryOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryEntryQueryOptions.GUID;
    pub const IID: Guid = IPhoneCallHistoryEntryQueryOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryEntryQueryOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PhoneCallHistoryEntryRawAddressKind = enum(i32) {
    PhoneNumber = 0,
    Custom = 1,
};
pub const PhoneCallHistoryEntryReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadBatchAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(PhoneCallHistoryEntry)) {
        const this: *IPhoneCallHistoryEntryReader = @ptrCast(self);
        return try this.ReadBatchAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryEntryReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryEntryReader.GUID;
    pub const IID: Guid = IPhoneCallHistoryEntryReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryEntryReader.SIGNATURE);
};
pub const PhoneCallHistoryManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestStoreAsync(accessType: PhoneCallHistoryStoreAccessType) core.HResult!*IAsyncOperation(PhoneCallHistoryStore) {
        const _f = @This().IPhoneCallHistoryManagerStaticsCache.get();
        return try _f.RequestStoreAsync(accessType);
    }
    pub fn GetForUser(user: *User) core.HResult!*PhoneCallHistoryManagerForUser {
        const _f = @This().IPhoneCallHistoryManagerStatics2Cache.get();
        return try _f.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPhoneCallHistoryManagerStaticsCache: FactoryCache(IPhoneCallHistoryManagerStatics, RUNTIME_NAME) = .{};
    var _IPhoneCallHistoryManagerStatics2Cache: FactoryCache(IPhoneCallHistoryManagerStatics2, RUNTIME_NAME) = .{};
};
pub const PhoneCallHistoryManagerForUser = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RequestStoreAsync(self: *@This(), accessType: PhoneCallHistoryStoreAccessType) core.HResult!*IAsyncOperation(PhoneCallHistoryStore) {
        const this: *IPhoneCallHistoryManagerForUser = @ptrCast(self);
        return try this.RequestStoreAsync(accessType);
    }
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IPhoneCallHistoryManagerForUser = @ptrCast(self);
        return try this.getUser();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryManagerForUser";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryManagerForUser.GUID;
    pub const IID: Guid = IPhoneCallHistoryManagerForUser.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryManagerForUser.SIGNATURE);
};
pub const PhoneCallHistorySourceIdKind = enum(i32) {
    CellularPhoneLineId = 0,
    PackageFamilyName = 1,
};
pub const PhoneCallHistoryStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetEntryAsync(self: *@This(), callHistoryEntryId: HSTRING) core.HResult!*IAsyncOperation(PhoneCallHistoryEntry) {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.GetEntryAsync(callHistoryEntryId);
    }
    pub fn GetEntryReader(self: *@This()) core.HResult!*PhoneCallHistoryEntryReader {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.GetEntryReader();
    }
    pub fn GetEntryReaderWithQueryOptions(self: *@This(), queryOptions: *PhoneCallHistoryEntryQueryOptions) core.HResult!*PhoneCallHistoryEntryReader {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.GetEntryReaderWithQueryOptions(queryOptions);
    }
    pub fn SaveEntryAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.SaveEntryAsync(callHistoryEntry);
    }
    pub fn DeleteEntryAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.DeleteEntryAsync(callHistoryEntry);
    }
    pub fn DeleteEntriesAsync(self: *@This(), callHistoryEntries: *IIterable(PhoneCallHistoryEntry)) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.DeleteEntriesAsync(callHistoryEntries);
    }
    pub fn MarkEntryAsSeenAsync(self: *@This(), callHistoryEntry: *PhoneCallHistoryEntry) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.MarkEntryAsSeenAsync(callHistoryEntry);
    }
    pub fn MarkEntriesAsSeenAsync(self: *@This(), callHistoryEntries: *IIterable(PhoneCallHistoryEntry)) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.MarkEntriesAsSeenAsync(callHistoryEntries);
    }
    pub fn GetUnseenCountAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.GetUnseenCountAsync();
    }
    pub fn MarkAllAsSeenAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.MarkAllAsSeenAsync();
    }
    pub fn GetSourcesUnseenCountAsync(self: *@This(), sourceIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(u32) {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.GetSourcesUnseenCountAsync(sourceIds);
    }
    pub fn MarkSourcesAsSeenAsync(self: *@This(), sourceIds: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IPhoneCallHistoryStore = @ptrCast(self);
        return try this.MarkSourcesAsSeenAsync(sourceIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Calls.PhoneCallHistoryStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhoneCallHistoryStore.GUID;
    pub const IID: Guid = IPhoneCallHistoryStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhoneCallHistoryStore.SIGNATURE);
};
pub const PhoneCallHistoryStoreAccessType = enum(i32) {
    AppEntriesReadWrite = 0,
    AllEntriesLimitedReadWrite = 1,
    AllEntriesReadWrite = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Contact = @import("./Contacts.zig").Contact;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const ContactPhone = @import("./Contacts.zig").ContactPhone;
const User = @import("../System.zig").User;
const DeviceAccessStatus = @import("../Devices/Enumeration.zig").DeviceAccessStatus;
pub const Background = @import("./Calls/Background.zig");
pub const Provider = @import("./Calls/Provider.zig");
