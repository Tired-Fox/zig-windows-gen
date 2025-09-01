pub const CurrentTimeChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ICurrentTimeChangeRequestedEventArgs = @ptrCast(self);
        return try this.getTime();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.CurrentTimeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrentTimeChangeRequestedEventArgs.GUID;
    pub const IID: Guid = ICurrentTimeChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrentTimeChangeRequestedEventArgs.SIGNATURE);
};
pub const ICurrentTimeChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Time(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.ICurrentTimeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99711324-edc7-4bf5-91f6-3c8627db59e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Time: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMuteChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMute(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Mute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IMuteChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4b4f5f6-af1f-4f1e-b437-7da32400e1d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mute: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToConnection = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!PlayToConnectionState {
        var _r: PlayToConnectionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTransferred(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionTransferredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Transferred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTransferred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Transferred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addError(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionErrorEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Error(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeError(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Error(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "112fbfc8-f235-4fde-8d41-9bf27c9e9a40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *PlayToConnectionState) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToConnection,PlayToConnectionStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Transferred: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToConnection,PlayToConnectionTransferredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Transferred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Error: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToConnection,PlayToConnectionErrorEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Error: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToConnectionErrorEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCode(self: *@This()) core.HResult!PlayToConnectionError {
        var _r: PlayToConnectionError = undefined;
        const _c = self.vtable.get_Code(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToConnectionErrorEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf5eada6-88e6-445f-9d40-d9b9f8939896";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Code: *const fn(self: *anyopaque, _r: *PlayToConnectionError) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToConnectionStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPreviousState(self: *@This()) core.HResult!PlayToConnectionState {
        var _r: PlayToConnectionState = undefined;
        const _c = self.vtable.get_PreviousState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentState(self: *@This()) core.HResult!PlayToConnectionState {
        var _r: PlayToConnectionState = undefined;
        const _c = self.vtable.get_CurrentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToConnectionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68c4b50f-0c20-4980-8602-58c62238d423";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreviousState: *const fn(self: *anyopaque, _r: *PlayToConnectionState) callconv(.winapi) HRESULT,
        get_CurrentState: *const fn(self: *anyopaque, _r: *PlayToConnectionState) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToConnectionTransferredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPreviousSource(self: *@This()) core.HResult!*PlayToSource {
        var _r: *PlayToSource = undefined;
        const _c = self.vtable.get_PreviousSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentSource(self: *@This()) core.HResult!*PlayToSource {
        var _r: *PlayToSource = undefined;
        const _c = self.vtable.get_CurrentSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToConnectionTransferredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fae3193a-0683-47d9-8df0-18cbb48984d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreviousSource: *const fn(self: *anyopaque, _r: **PlayToSource) callconv(.winapi) HRESULT,
        get_CurrentSource: *const fn(self: *anyopaque, _r: **PlayToSource) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToManager = extern struct {
    vtable: *const VTable,
    pub fn addSourceRequested(self: *@This(), handler: *TypedEventHandler(PlayToManager,PlayToSourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceSelected(self: *@This(), handler: *TypedEventHandler(PlayToManager,PlayToSourceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceSelected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceSelected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putDefaultSourceSelection(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DefaultSourceSelection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultSourceSelection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DefaultSourceSelection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f56a206e-1b77-42ef-8f0d-b949f8d9b260";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToManager,PlayToSourceRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceSelected: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToManager,PlayToSourceSelectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceSelected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        put_DefaultSourceSelection: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DefaultSourceSelection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*PlayToManager {
        var _r: *PlayToManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowPlayToUI(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowPlayToUI(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64e6a887-3982-4f3b-ba20-6155e435325b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **PlayToManager) callconv(.winapi) HRESULT,
        ShowPlayToUI: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToReceiver = extern struct {
    vtable: *const VTable,
    pub fn addPlayRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlayRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlayRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPauseRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PauseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePauseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PauseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,SourceChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackRateChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,PlaybackRateChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackRateChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackRateChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackRateChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentTimeChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,CurrentTimeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentTimeChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentTimeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentTimeChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMuteChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,MuteChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MuteChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMuteChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MuteChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVolumeChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,VolumeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VolumeChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVolumeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VolumeChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTimeUpdateRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TimeUpdateRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTimeUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TimeUpdateRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StopRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StopRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyVolumeChange(self: *@This(), volume: f64, mute: bool) core.HResult!void {
        const _c = self.vtable.NotifyVolumeChange(@ptrCast(self), volume, mute);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyRateChange(self: *@This(), rate: f64) core.HResult!void {
        const _c = self.vtable.NotifyRateChange(@ptrCast(self), rate);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyLoadedMetadata(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyLoadedMetadata(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyTimeUpdate(self: *@This(), currentTime: TimeSpan) core.HResult!void {
        const _c = self.vtable.NotifyTimeUpdate(@ptrCast(self), currentTime);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyDurationChange(self: *@This(), duration: TimeSpan) core.HResult!void {
        const _c = self.vtable.NotifyDurationChange(@ptrCast(self), duration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifySeeking(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifySeeking(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifySeeked(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifySeeked(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyPaused(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyPaused(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyPlaying(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyPlaying(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyEnded(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyEnded(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyError(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyError(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyStopped(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyStopped(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn putSupportsImage(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportsImage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsAudio(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsAudio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsAudio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSupportsVideo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SupportsVideo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsVideo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac15cf47-a162-4aa6-af1b-3aa35f3b9069";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PlayRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlayRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PauseRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PauseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,SourceChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackRateChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,PlaybackRateChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackRateChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentTimeChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,CurrentTimeChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentTimeChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MuteChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,MuteChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MuteChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VolumeChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,VolumeChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VolumeChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TimeUpdateRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TimeUpdateRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StopRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(PlayToReceiver,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StopRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyVolumeChange: *const fn(self: *anyopaque, volume: f64, mute: bool) callconv(.winapi) HRESULT,
        NotifyRateChange: *const fn(self: *anyopaque, rate: f64) callconv(.winapi) HRESULT,
        NotifyLoadedMetadata: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyTimeUpdate: *const fn(self: *anyopaque, currentTime: TimeSpan) callconv(.winapi) HRESULT,
        NotifyDurationChange: *const fn(self: *anyopaque, duration: TimeSpan) callconv(.winapi) HRESULT,
        NotifySeeking: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifySeeked: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyPaused: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyPlaying: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyEnded: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyError: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        NotifyStopped: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_FriendlyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FriendlyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        put_SupportsImage: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportsImage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SupportsAudio: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportsAudio: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SupportsVideo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SupportsVideo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToSource = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*PlayToConnection {
        var _r: *PlayToConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNext(self: *@This()) core.HResult!*PlayToSource {
        var _r: *PlayToSource = undefined;
        const _c = self.vtable.get_Next(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNext(self: *@This(), value: *PlayToSource) core.HResult!void {
        const _c = self.vtable.put_Next(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PlayNext(self: *@This()) core.HResult!void {
        const _c = self.vtable.PlayNext(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f138a08-fbb7-4b09-8356-aa5f4e335c31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **PlayToConnection) callconv(.winapi) HRESULT,
        get_Next: *const fn(self: *anyopaque, _r: **PlayToSource) callconv(.winapi) HRESULT,
        put_Next: *const fn(self: *anyopaque, value: *PlayToSource) callconv(.winapi) HRESULT,
        PlayNext: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToSourceDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSourceDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4100891d-278e-4f29-859b-a9e501053e7d";
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
pub const IPlayToSourceRequest = extern struct {
    vtable: *const VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_Deadline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisplayErrorString(self: *@This(), errorString: HSTRING) core.HResult!void {
        const _c = self.vtable.DisplayErrorString(@ptrCast(self), errorString);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PlayToSourceDeferral {
        var _r: *PlayToSourceDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSource(self: *@This(), value: *PlayToSource) core.HResult!void {
        const _c = self.vtable.SetSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSourceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8584665-64f4-44a0-ac0d-468d2b8fda83";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Deadline: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        DisplayErrorString: *const fn(self: *anyopaque, errorString: HSTRING) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **PlayToSourceDeferral) callconv(.winapi) HRESULT,
        SetSource: *const fn(self: *anyopaque, value: *PlayToSource) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToSourceRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSourceRequest(self: *@This()) core.HResult!*PlayToSourceRequest {
        var _r: *PlayToSourceRequest = undefined;
        const _c = self.vtable.get_SourceRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5cdc330-29df-4ec6-9da9-9fbdfcfc1b3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceRequest: *const fn(self: *anyopaque, _r: **PlayToSourceRequest) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToSourceSelectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FriendlyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsImage(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsAudio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SupportsVideo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSourceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c9d8511-5202-4dcb-8c67-abda12bb3c12";
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
        get_Icon: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        get_SupportsImage: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportsAudio: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportsVideo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPlayToSourceWithPreferredSourceUri = extern struct {
    vtable: *const VTable,
    pub fn getPreferredSourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_PreferredSourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_PreferredSourceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlayToSourceWithPreferredSourceUri";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aab253eb-3301-4dc4-afba-b2f2ed9635a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredSourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_PreferredSourceUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackRateChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Rate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IPlaybackRateChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f5661ae-2c88-4cca-8540-d586095d13a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Rate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ISourceChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_Stream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Author(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbum(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Album(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenre(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Genre(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_Date(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRating(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Rating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        var _r: *IMapView(HSTRING,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.ISourceChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb3f3a96-7aa6-4a8b-86e7-54f6c6d34f64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Stream: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Author: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Album: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Genre: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Date: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Rating: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IVolumeChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Volume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.IVolumeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f026d5c-cf75-4c2b-913e-6d7c6c329179";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const MuteChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMute(self: *@This()) core.HResult!bool {
        const this: *IMuteChangeRequestedEventArgs = @ptrCast(self);
        return try this.getMute();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.MuteChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMuteChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IMuteChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMuteChangeRequestedEventArgs.SIGNATURE);
};
pub const PlayToConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!PlayToConnectionState {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.getState();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn addTransferred(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionTransferredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.addTransferred(handler);
    }
    pub fn removeTransferred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.removeTransferred(token);
    }
    pub fn addError(self: *@This(), handler: *TypedEventHandler(PlayToConnection,PlayToConnectionErrorEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.addError(handler);
    }
    pub fn removeError(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToConnection = @ptrCast(self);
        return try this.removeError(token);
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToConnection.GUID;
    pub const IID: Guid = IPlayToConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToConnection.SIGNATURE);
};
pub const PlayToConnectionError = enum(i32) {
    None = 0,
    DeviceNotResponding = 1,
    DeviceError = 2,
    DeviceLocked = 3,
    ProtectedPlaybackFailed = 4,
};
pub const PlayToConnectionErrorEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCode(self: *@This()) core.HResult!PlayToConnectionError {
        const this: *IPlayToConnectionErrorEventArgs = @ptrCast(self);
        return try this.getCode();
    }
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayToConnectionErrorEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToConnectionErrorEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToConnectionErrorEventArgs.GUID;
    pub const IID: Guid = IPlayToConnectionErrorEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToConnectionErrorEventArgs.SIGNATURE);
};
pub const PlayToConnectionState = enum(i32) {
    Disconnected = 0,
    Connected = 1,
    Rendering = 2,
};
pub const PlayToConnectionStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreviousState(self: *@This()) core.HResult!PlayToConnectionState {
        const this: *IPlayToConnectionStateChangedEventArgs = @ptrCast(self);
        return try this.getPreviousState();
    }
    pub fn getCurrentState(self: *@This()) core.HResult!PlayToConnectionState {
        const this: *IPlayToConnectionStateChangedEventArgs = @ptrCast(self);
        return try this.getCurrentState();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToConnectionStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToConnectionStateChangedEventArgs.GUID;
    pub const IID: Guid = IPlayToConnectionStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToConnectionStateChangedEventArgs.SIGNATURE);
};
pub const PlayToConnectionTransferredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreviousSource(self: *@This()) core.HResult!*PlayToSource {
        const this: *IPlayToConnectionTransferredEventArgs = @ptrCast(self);
        return try this.getPreviousSource();
    }
    pub fn getCurrentSource(self: *@This()) core.HResult!*PlayToSource {
        const this: *IPlayToConnectionTransferredEventArgs = @ptrCast(self);
        return try this.getCurrentSource();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToConnectionTransferredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToConnectionTransferredEventArgs.GUID;
    pub const IID: Guid = IPlayToConnectionTransferredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToConnectionTransferredEventArgs.SIGNATURE);
};
pub const PlayToManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceRequested(self: *@This(), handler: *TypedEventHandler(PlayToManager,PlayToSourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.addSourceRequested(handler);
    }
    pub fn removeSourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.removeSourceRequested(token);
    }
    pub fn addSourceSelected(self: *@This(), handler: *TypedEventHandler(PlayToManager,PlayToSourceSelectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.addSourceSelected(handler);
    }
    pub fn removeSourceSelected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.removeSourceSelected(token);
    }
    pub fn putDefaultSourceSelection(self: *@This(), value: bool) core.HResult!void {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.putDefaultSourceSelection(value);
    }
    pub fn getDefaultSourceSelection(self: *@This()) core.HResult!bool {
        const this: *IPlayToManager = @ptrCast(self);
        return try this.getDefaultSourceSelection();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*PlayToManager {
        const _f = @This().IPlayToManagerStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub fn ShowPlayToUI() core.HResult!void {
        const _f = @This().IPlayToManagerStaticsCache.get();
        return try _f.ShowPlayToUI();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToManager.GUID;
    pub const IID: Guid = IPlayToManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToManager.SIGNATURE);
    var _IPlayToManagerStaticsCache: FactoryCache(IPlayToManagerStatics, RUNTIME_NAME) = .{};
};
pub const PlayToReceiver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPlayRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addPlayRequested(handler);
    }
    pub fn removePlayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removePlayRequested(token);
    }
    pub fn addPauseRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addPauseRequested(handler);
    }
    pub fn removePauseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removePauseRequested(token);
    }
    pub fn addSourceChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,SourceChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addSourceChangeRequested(handler);
    }
    pub fn removeSourceChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeSourceChangeRequested(token);
    }
    pub fn addPlaybackRateChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,PlaybackRateChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addPlaybackRateChangeRequested(handler);
    }
    pub fn removePlaybackRateChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removePlaybackRateChangeRequested(token);
    }
    pub fn addCurrentTimeChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,CurrentTimeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addCurrentTimeChangeRequested(handler);
    }
    pub fn removeCurrentTimeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeCurrentTimeChangeRequested(token);
    }
    pub fn addMuteChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,MuteChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addMuteChangeRequested(handler);
    }
    pub fn removeMuteChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeMuteChangeRequested(token);
    }
    pub fn addVolumeChangeRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,VolumeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addVolumeChangeRequested(handler);
    }
    pub fn removeVolumeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeVolumeChangeRequested(token);
    }
    pub fn addTimeUpdateRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addTimeUpdateRequested(handler);
    }
    pub fn removeTimeUpdateRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeTimeUpdateRequested(token);
    }
    pub fn addStopRequested(self: *@This(), handler: *TypedEventHandler(PlayToReceiver,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.addStopRequested(handler);
    }
    pub fn removeStopRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.removeStopRequested(token);
    }
    pub fn NotifyVolumeChange(self: *@This(), volume: f64, mute: bool) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyVolumeChange(volume, mute);
    }
    pub fn NotifyRateChange(self: *@This(), rate: f64) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyRateChange(rate);
    }
    pub fn NotifyLoadedMetadata(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyLoadedMetadata();
    }
    pub fn NotifyTimeUpdate(self: *@This(), currentTime: TimeSpan) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyTimeUpdate(currentTime);
    }
    pub fn NotifyDurationChange(self: *@This(), duration: TimeSpan) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyDurationChange(duration);
    }
    pub fn NotifySeeking(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifySeeking();
    }
    pub fn NotifySeeked(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifySeeked();
    }
    pub fn NotifyPaused(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyPaused();
    }
    pub fn NotifyPlaying(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyPlaying();
    }
    pub fn NotifyEnded(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyEnded();
    }
    pub fn NotifyError(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyError();
    }
    pub fn NotifyStopped(self: *@This()) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.NotifyStopped();
    }
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn putFriendlyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.putFriendlyName(value);
    }
    pub fn putSupportsImage(self: *@This(), value: bool) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.putSupportsImage(value);
    }
    pub fn getSupportsImage(self: *@This()) core.HResult!bool {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.getSupportsImage();
    }
    pub fn putSupportsAudio(self: *@This(), value: bool) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.putSupportsAudio(value);
    }
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.getSupportsAudio();
    }
    pub fn putSupportsVideo(self: *@This(), value: bool) core.HResult!void {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.putSupportsVideo(value);
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.getSupportsVideo();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IPlayToReceiver = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlayToReceiver.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToReceiver.GUID;
    pub const IID: Guid = IPlayToReceiver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToReceiver.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlayToSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*PlayToConnection {
        const this: *IPlayToSource = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn getNext(self: *@This()) core.HResult!*PlayToSource {
        const this: *IPlayToSource = @ptrCast(self);
        return try this.getNext();
    }
    pub fn putNext(self: *@This(), value: *PlayToSource) core.HResult!void {
        const this: *IPlayToSource = @ptrCast(self);
        return try this.putNext(value);
    }
    pub fn PlayNext(self: *@This()) core.HResult!void {
        const this: *IPlayToSource = @ptrCast(self);
        return try this.PlayNext();
    }
    pub fn getPreferredSourceUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IPlayToSourceWithPreferredSourceUri = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayToSourceWithPreferredSourceUri.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferredSourceUri();
    }
    pub fn putPreferredSourceUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IPlayToSourceWithPreferredSourceUri = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPlayToSourceWithPreferredSourceUri.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreferredSourceUri(value);
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToSource.GUID;
    pub const IID: Guid = IPlayToSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToSource.SIGNATURE);
};
pub const PlayToSourceDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IPlayToSourceDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToSourceDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToSourceDeferral.GUID;
    pub const IID: Guid = IPlayToSourceDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToSourceDeferral.SIGNATURE);
};
pub const PlayToSourceRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeadline(self: *@This()) core.HResult!DateTime {
        const this: *IPlayToSourceRequest = @ptrCast(self);
        return try this.getDeadline();
    }
    pub fn DisplayErrorString(self: *@This(), errorString: HSTRING) core.HResult!void {
        const this: *IPlayToSourceRequest = @ptrCast(self);
        return try this.DisplayErrorString(errorString);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*PlayToSourceDeferral {
        const this: *IPlayToSourceRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetSource(self: *@This(), value: *PlayToSource) core.HResult!void {
        const this: *IPlayToSourceRequest = @ptrCast(self);
        return try this.SetSource(value);
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToSourceRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToSourceRequest.GUID;
    pub const IID: Guid = IPlayToSourceRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToSourceRequest.SIGNATURE);
};
pub const PlayToSourceRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceRequest(self: *@This()) core.HResult!*PlayToSourceRequest {
        const this: *IPlayToSourceRequestedEventArgs = @ptrCast(self);
        return try this.getSourceRequest();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToSourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToSourceRequestedEventArgs.GUID;
    pub const IID: Guid = IPlayToSourceRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToSourceRequestedEventArgs.SIGNATURE);
};
pub const PlayToSourceSelectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFriendlyName(self: *@This()) core.HResult!HSTRING {
        const this: *IPlayToSourceSelectedEventArgs = @ptrCast(self);
        return try this.getFriendlyName();
    }
    pub fn getIcon(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *IPlayToSourceSelectedEventArgs = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn getSupportsImage(self: *@This()) core.HResult!bool {
        const this: *IPlayToSourceSelectedEventArgs = @ptrCast(self);
        return try this.getSupportsImage();
    }
    pub fn getSupportsAudio(self: *@This()) core.HResult!bool {
        const this: *IPlayToSourceSelectedEventArgs = @ptrCast(self);
        return try this.getSupportsAudio();
    }
    pub fn getSupportsVideo(self: *@This()) core.HResult!bool {
        const this: *IPlayToSourceSelectedEventArgs = @ptrCast(self);
        return try this.getSupportsVideo();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlayToSourceSelectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlayToSourceSelectedEventArgs.GUID;
    pub const IID: Guid = IPlayToSourceSelectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlayToSourceSelectedEventArgs.SIGNATURE);
};
pub const PlaybackRateChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRate(self: *@This()) core.HResult!f64 {
        const this: *IPlaybackRateChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRate();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.PlaybackRateChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackRateChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IPlaybackRateChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackRateChangeRequestedEventArgs.SIGNATURE);
};
pub const SourceChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStream(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getStream();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getAuthor(self: *@This()) core.HResult!HSTRING {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getAuthor();
    }
    pub fn getAlbum(self: *@This()) core.HResult!HSTRING {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getAlbum();
    }
    pub fn getGenre(self: *@This()) core.HResult!HSTRING {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getGenre();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getDate();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn getRating(self: *@This()) core.HResult!*IReference(u32) {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRating();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,IInspectable) {
        const this: *ISourceChangeRequestedEventArgs = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.SourceChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISourceChangeRequestedEventArgs.GUID;
    pub const IID: Guid = ISourceChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISourceChangeRequestedEventArgs.SIGNATURE);
};
pub const VolumeChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        const this: *IVolumeChangeRequestedEventArgs = @ptrCast(self);
        return try this.getVolume();
    }
    pub const NAME: []const u8 = "Windows.Media.PlayTo.VolumeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVolumeChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IVolumeChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVolumeChangeRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
