pub const ISpatialGestureRecognizer = extern struct {
    vtable: *const VTable,
    pub fn addRecognitionStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecognitionStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecognitionStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecognitionStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRecognitionEnded(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionEndedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecognitionEnded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecognitionEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecognitionEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialTappedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Tapped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Tapped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHoldStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HoldStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHoldStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HoldStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHoldCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HoldCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHoldCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HoldCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHoldCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCanceledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HoldCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHoldCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HoldCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addManipulationCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCanceledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ManipulationCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeManipulationCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ManipulationCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationUpdated(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCanceledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationCanceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationCanceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CaptureInteraction(self: *@This(), interaction: *SpatialInteraction) core.HResult!void {
        const _c = self.vtable.CaptureInteraction(@ptrCast(self), interaction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CancelPendingGestures(self: *@This()) core.HResult!void {
        const _c = self.vtable.CancelPendingGestures(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TrySetGestureSettings(self: *@This(), settings: SpatialGestureSettings) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetGestureSettings(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGestureSettings(self: *@This()) core.HResult!SpatialGestureSettings {
        var _r: SpatialGestureSettings = undefined;
        const _c = self.vtable.get_GestureSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialGestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71605bcc-0c35-4673-adbd-cc04caa6ef45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_RecognitionStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecognitionStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RecognitionEnded: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionEndedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecognitionEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Tapped: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialTappedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Tapped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HoldStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HoldStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HoldCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HoldCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HoldCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCanceledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HoldCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ManipulationCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCanceledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ManipulationCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NavigationStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NavigationUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NavigationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NavigationCanceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCanceledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationCanceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CaptureInteraction: *const fn(self: *anyopaque, interaction: *SpatialInteraction) callconv(.winapi) HRESULT,
        CancelPendingGestures: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TrySetGestureSettings: *const fn(self: *anyopaque, settings: SpatialGestureSettings, _r: *bool) callconv(.winapi) HRESULT,
        get_GestureSettings: *const fn(self: *anyopaque, _r: *SpatialGestureSettings) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialGestureRecognizerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), settings: SpatialGestureSettings) core.HResult!*SpatialGestureRecognizer {
        var _r: *SpatialGestureRecognizer = undefined;
        const _c = self.vtable.Create(@ptrCast(self), settings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialGestureRecognizerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77214186-57b9-3150-8382-698b24e264d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, settings: SpatialGestureSettings, _r: **SpatialGestureRecognizer) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialHoldCanceledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialHoldCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5dfcb667-4caa-4093-8c35-b601a839f31b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialHoldCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialHoldCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f64470b-4cfd-43da-8dc4-e64552173971";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialHoldStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialHoldStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e343d79-acb6-4144-8615-2cfba8a3cb3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteraction = extern struct {
    vtable: *const VTable,
    pub fn getSourceState(self: *@This()) core.HResult!*SpatialInteractionSourceState {
        var _r: *SpatialInteractionSourceState = undefined;
        const _c = self.vtable.get_SourceState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteraction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc967639-88e6-4646-9112-4344aaec9dfa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceState: *const fn(self: *anyopaque, _r: **SpatialInteractionSourceState) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionController = extern struct {
    vtable: *const VTable,
    pub fn getHasTouchpad(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasTouchpad(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasThumbstick(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasThumbstick(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVendorId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_VendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductId(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVersion(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f0e5ba3-0954-4e97-86c5-e7f30b114dfd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HasTouchpad: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasThumbstick: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
        get_VendorId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionController2 = extern struct {
    vtable: *const VTable,
    pub fn TryGetRenderableModelAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var _r: *IAsyncOperation(IRandomAccessStreamWithContentType) = undefined;
        const _c = self.vtable.TryGetRenderableModelAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35b6d924-c7a2-49b7-b72e-5436b2fb8f9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetRenderableModelAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStreamWithContentType)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionController3 = extern struct {
    vtable: *const VTable,
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var _r: *BatteryReport = undefined;
        const _c = self.vtable.TryGetBatteryReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionController3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "628466a0-9d91-4a0b-888d-165e670a8cd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetBatteryReport: *const fn(self: *anyopaque, _r: **BatteryReport) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionControllerProperties = extern struct {
    vtable: *const VTable,
    pub fn getIsTouchpadTouched(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTouchpadTouched(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTouchpadPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTouchpadPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsThumbstickPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsThumbstickPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbstickX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ThumbstickX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbstickY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ThumbstickY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTouchpadX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TouchpadX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTouchpadY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TouchpadY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionControllerProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61056fb1-7ba9-4e35-b93f-9272cba9b28b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTouchpadTouched: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTouchpadPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsThumbstickPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ThumbstickX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ThumbstickY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_TouchpadX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_TouchpadY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInteraction(self: *@This()) core.HResult!*SpatialInteraction {
        var _r: *SpatialInteraction = undefined;
        const _c = self.vtable.get_Interaction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "075878e4-5961-3b41-9dfb-cea5d89cc38a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
        get_Interaction: *const fn(self: *anyopaque, _r: **SpatialInteraction) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionDetectedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        var _r: *SpatialInteractionSource = undefined;
        const _c = self.vtable.get_InteractionSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionDetectedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b263e93-5f13-419c-97d5-834678266aa6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSource: *const fn(self: *anyopaque, _r: **SpatialInteractionSource) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionManager = extern struct {
    vtable: *const VTable,
    pub fn addSourceDetected(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceLost(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceUpdated(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourcePressed(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourcePressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourcePressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourcePressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceReleased(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInteractionDetected(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InteractionDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInteractionDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InteractionDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDetectedSourcesAtTimestamp(self: *@This(), timeStamp: *PerceptionTimestamp) core.HResult!*IVectorView(SpatialInteractionSourceState) {
        var _r: *IVectorView(SpatialInteractionSourceState) = undefined;
        const _c = self.vtable.GetDetectedSourcesAtTimestamp(@ptrCast(self), timeStamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32a64ea8-a15a-3995-b8bd-80513cb5adef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourcePressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourcePressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceReleased: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_InteractionDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InteractionDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetDetectedSourcesAtTimestamp: *const fn(self: *anyopaque, timeStamp: *PerceptionTimestamp, _r: **IVectorView(SpatialInteractionSourceState)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SpatialInteractionManager {
        var _r: *SpatialInteractionManager = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00e31fa6-8ca2-30bf-91fe-d9cb4a008990";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SpatialInteractionManager) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn IsSourceKindSupported(self: *@This(), kind: SpatialInteractionSourceKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSourceKindSupported(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93f16c52-b88a-5929-8d7c-48cb948b081c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsSourceKindSupported: *const fn(self: *anyopaque, kind: SpatialInteractionSourceKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSource = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb5433ba-b0b3-3148-9f3b-e9f5de568f5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSource2 = extern struct {
    vtable: *const VTable,
    pub fn getIsPointingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPointingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMenuSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMenuSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGraspSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGraspSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getController(self: *@This()) core.HResult!*SpatialInteractionController {
        var _r: *SpatialInteractionController = undefined;
        const _c = self.vtable.get_Controller(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetStateAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*SpatialInteractionSourceState {
        var _r: *SpatialInteractionSourceState = undefined;
        const _c = self.vtable.TryGetStateAtTimestamp(@ptrCast(self), timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4c5b70c-0470-4028-88c0-a0eb44d34efe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPointingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMenuSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGraspSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Controller: *const fn(self: *anyopaque, _r: **SpatialInteractionController) callconv(.winapi) HRESULT,
        TryGetStateAtTimestamp: *const fn(self: *anyopaque, timestamp: *PerceptionTimestamp, _r: **SpatialInteractionSourceState) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSource3 = extern struct {
    vtable: *const VTable,
    pub fn getHandedness(self: *@This()) core.HResult!SpatialInteractionSourceHandedness {
        var _r: SpatialInteractionSourceHandedness = undefined;
        const _c = self.vtable.get_Handedness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSource3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0406d9f9-9afd-44f9-85dc-700023a962e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handedness: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceHandedness) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSource4 = extern struct {
    vtable: *const VTable,
    pub fn TryCreateHandMeshObserver(self: *@This()) core.HResult!*HandMeshObserver {
        var _r: *HandMeshObserver = undefined;
        const _c = self.vtable.TryCreateHandMeshObserver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateHandMeshObserverAsync(self: *@This()) core.HResult!*IAsyncOperation(HandMeshObserver) {
        var _r: *IAsyncOperation(HandMeshObserver) = undefined;
        const _c = self.vtable.TryCreateHandMeshObserverAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSource4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0073bc4d-df66-5a91-a2ba-cea3e5c58a19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateHandMeshObserver: *const fn(self: *anyopaque, _r: **HandMeshObserver) callconv(.winapi) HRESULT,
        TryCreateHandMeshObserverAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HandMeshObserver)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!*SpatialInteractionSourceState {
        var _r: *SpatialInteractionSourceState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23b786cf-ec23-3979-b27c-eb0e12feb7c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **SpatialInteractionSourceState) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getPressKind(self: *@This()) core.HResult!SpatialInteractionPressKind {
        var _r: SpatialInteractionPressKind = undefined;
        const _c = self.vtable.get_PressKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8b4b467-e648-4d52-ab49-e0d227199f63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PressKind: *const fn(self: *anyopaque, _r: *SpatialInteractionPressKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceLocation = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocity(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_Velocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea4696c4-7e8b-30ca-bcc5-c77189cea30a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        get_Velocity: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceLocation2 = extern struct {
    vtable: *const VTable,
    pub fn getOrientation(self: *@This()) core.HResult!*IReference(Quaternion) {
        var _r: *IReference(Quaternion) = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c671045-3917-40fc-a9ac-31c9cf5ff91b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: **IReference(Quaternion)) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceLocation3 = extern struct {
    vtable: *const VTable,
    pub fn getPositionAccuracy(self: *@This()) core.HResult!SpatialInteractionSourcePositionAccuracy {
        var _r: SpatialInteractionSourcePositionAccuracy = undefined;
        const _c = self.vtable.get_PositionAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngularVelocity(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_AngularVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePointerPose(self: *@This()) core.HResult!*SpatialPointerInteractionSourcePose {
        var _r: *SpatialPointerInteractionSourcePose = undefined;
        const _c = self.vtable.get_SourcePointerPose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceLocation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6702e65e-e915-4cfb-9c1b-0538efc86687";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionAccuracy: *const fn(self: *anyopaque, _r: *SpatialInteractionSourcePositionAccuracy) callconv(.winapi) HRESULT,
        get_AngularVelocity: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        get_SourcePointerPose: *const fn(self: *anyopaque, _r: **SpatialPointerInteractionSourcePose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceProperties = extern struct {
    vtable: *const VTable,
    pub fn TryGetSourceLossMitigationDirection(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.TryGetSourceLossMitigationDirection(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceLossRisk(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SourceLossRisk(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetLocation(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialInteractionSourceLocation {
        var _r: *SpatialInteractionSourceLocation = undefined;
        const _c = self.vtable.TryGetLocation(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05604542-3ef7-3222-9f53-63c9cb7e3bc7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetSourceLossMitigationDirection: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        get_SourceLossRisk: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        TryGetLocation: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialInteractionSourceLocation) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceState = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        var _r: *SpatialInteractionSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*SpatialInteractionSourceProperties {
        var _r: *SpatialInteractionSourceProperties = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5c475ef-4b63-37ec-98b9-9fc652b9d2f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **SpatialInteractionSource) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **SpatialInteractionSourceProperties) callconv(.winapi) HRESULT,
        get_IsPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceState2 = extern struct {
    vtable: *const VTable,
    pub fn getIsSelectPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelectPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMenuPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMenuPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGrasped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGrasped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectPressedValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SelectPressedValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControllerProperties(self: *@This()) core.HResult!*SpatialInteractionControllerProperties {
        var _r: *SpatialInteractionControllerProperties = undefined;
        const _c = self.vtable.get_ControllerProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceState2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45f6d0bd-1773-492e-9ba3-8ac1cbe77c08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelectPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMenuPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGrasped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SelectPressedValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ControllerProperties: *const fn(self: *anyopaque, _r: **SpatialInteractionControllerProperties) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialInteractionSourceState3 = extern struct {
    vtable: *const VTable,
    pub fn TryGetHandPose(self: *@This()) core.HResult!*HandPose {
        var _r: *HandPose = undefined;
        const _c = self.vtable.TryGetHandPose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialInteractionSourceState3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2f00bc2-bd2b-4a01-a8fb-323e0158527c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetHandPose: *const fn(self: *anyopaque, _r: **HandPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialManipulationCanceledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialManipulationCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d40d1cb-e7da-4220-b0bf-819301674780";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialManipulationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetCumulativeDelta(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialManipulationDelta {
        var _r: *SpatialManipulationDelta = undefined;
        const _c = self.vtable.TryGetCumulativeDelta(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialManipulationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05086802-f301-4343-9250-2fbaa5f87a37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetCumulativeDelta: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialManipulationDelta) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialManipulationDelta = extern struct {
    vtable: *const VTable,
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Translation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialManipulationDelta";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7ec967a-d123-3a81-a15b-992923dcbe91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Translation: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialManipulationStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialManipulationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1d6bbce-42a5-377b-ada6-d28e3d384737";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialManipulationUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetCumulativeDelta(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialManipulationDelta {
        var _r: *SpatialManipulationDelta = undefined;
        const _c = self.vtable.TryGetCumulativeDelta(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialManipulationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f230b9b-60c6-4dc6-bdc9-9f4a6f15fe49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetCumulativeDelta: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialManipulationDelta) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialNavigationCanceledEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialNavigationCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce503edc-e8a5-46f0-92d4-3c122b35112a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialNavigationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_NormalizedOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialNavigationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "012e80b7-af3b-42c2-9e41-baaa0e721f3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        get_NormalizedOffset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialNavigationStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNavigatingX(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNavigatingX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNavigatingY(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNavigatingY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNavigatingZ(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNavigatingZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialNavigationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "754a348a-fb64-4656-8ebd-9deecaafe475";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
        get_IsNavigatingX: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsNavigatingY: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsNavigatingZ: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialNavigationUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_NormalizedOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialNavigationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b713fd7-839d-4a74-8732-45466fc044b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        get_NormalizedOffset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerInteractionSourcePose = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForwardDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_ForwardDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_UpDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7104307-2c2b-4d3a-92a7-80ced7c4a0d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_ForwardDirection: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_UpDirection: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerInteractionSourcePose2 = extern struct {
    vtable: *const VTable,
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionAccuracy(self: *@This()) core.HResult!SpatialInteractionSourcePositionAccuracy {
        var _r: SpatialInteractionSourcePositionAccuracy = undefined;
        const _c = self.vtable.get_PositionAccuracy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerInteractionSourcePose2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eccd86b8-52db-469f-9e3f-80c47f74bce9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        get_PositionAccuracy: *const fn(self: *anyopaque, _r: *SpatialInteractionSourcePositionAccuracy) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerPose = extern struct {
    vtable: *const VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHead(self: *@This()) core.HResult!*HeadPose {
        var _r: *HeadPose = undefined;
        const _c = self.vtable.get_Head(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6953a42e-c17e-357d-97a1-7269d0ed2d10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
        get_Head: *const fn(self: *anyopaque, _r: **HeadPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerPose2 = extern struct {
    vtable: *const VTable,
    pub fn TryGetInteractionSourcePose(self: *@This(), source: *SpatialInteractionSource) core.HResult!*SpatialPointerInteractionSourcePose {
        var _r: *SpatialPointerInteractionSourcePose = undefined;
        const _c = self.vtable.TryGetInteractionSourcePose(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerPose2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d202b17-954e-4e0c-96d1-b6790b6fc2fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetInteractionSourcePose: *const fn(self: *anyopaque, source: *SpatialInteractionSource, _r: **SpatialPointerInteractionSourcePose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerPose3 = extern struct {
    vtable: *const VTable,
    pub fn getEyes(self: *@This()) core.HResult!*EyesPose {
        var _r: *EyesPose = undefined;
        const _c = self.vtable.get_Eyes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHeadCapturedBySystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHeadCapturedBySystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerPose3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6342f3f0-ec49-5b4b-b8d1-d16cbb16be84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Eyes: *const fn(self: *anyopaque, _r: **EyesPose) callconv(.winapi) HRESULT,
        get_IsHeadCapturedBySystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialPointerPoseStatics = extern struct {
    vtable: *const VTable,
    pub fn TryGetAtTimestamp(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, timestamp: *PerceptionTimestamp) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetAtTimestamp(@ptrCast(self), coordinateSystem, timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialPointerPoseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a25591a9-aca1-3ee0-9816-785cfb2e3fb8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetAtTimestamp: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, timestamp: *PerceptionTimestamp, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialRecognitionEndedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialRecognitionEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e35f5cb-3f75-43f3-ac81-d1dc2df9b1fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialRecognitionStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsGesturePossible(self: *@This(), gesture: SpatialGestureSettings) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsGesturePossible(@ptrCast(self), gesture, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialRecognitionStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24da128f-0008-4a6d-aa50-2a76f9cfb264";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
        IsGesturePossible: *const fn(self: *anyopaque, gesture: SpatialGestureSettings, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISpatialTappedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        var _r: SpatialInteractionSourceKind = undefined;
        const _c = self.vtable.get_InteractionSourceKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        var _r: *SpatialPointerPose = undefined;
        const _c = self.vtable.TryGetPointerPose(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTapCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TapCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.ISpatialTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "296d83de-f444-4aa1-b2bf-9dc88d567da6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InteractionSourceKind: *const fn(self: *anyopaque, _r: *SpatialInteractionSourceKind) callconv(.winapi) HRESULT,
        TryGetPointerPose: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **SpatialPointerPose) callconv(.winapi) HRESULT,
        get_TapCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const SpatialGestureRecognizer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addRecognitionStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addRecognitionStarted(handler);
    }
    pub fn removeRecognitionStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeRecognitionStarted(token);
    }
    pub fn addRecognitionEnded(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialRecognitionEndedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addRecognitionEnded(handler);
    }
    pub fn removeRecognitionEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeRecognitionEnded(token);
    }
    pub fn addTapped(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialTappedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addTapped(handler);
    }
    pub fn removeTapped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeTapped(token);
    }
    pub fn addHoldStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addHoldStarted(handler);
    }
    pub fn removeHoldStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeHoldStarted(token);
    }
    pub fn addHoldCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addHoldCompleted(handler);
    }
    pub fn removeHoldCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeHoldCompleted(token);
    }
    pub fn addHoldCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialHoldCanceledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addHoldCanceled(handler);
    }
    pub fn removeHoldCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeHoldCanceled(token);
    }
    pub fn addManipulationStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addManipulationStarted(handler);
    }
    pub fn removeManipulationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationStarted(token);
    }
    pub fn addManipulationUpdated(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addManipulationUpdated(handler);
    }
    pub fn removeManipulationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationUpdated(token);
    }
    pub fn addManipulationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addManipulationCompleted(handler);
    }
    pub fn removeManipulationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationCompleted(token);
    }
    pub fn addManipulationCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialManipulationCanceledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addManipulationCanceled(handler);
    }
    pub fn removeManipulationCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeManipulationCanceled(token);
    }
    pub fn addNavigationStarted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addNavigationStarted(handler);
    }
    pub fn removeNavigationStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeNavigationStarted(token);
    }
    pub fn addNavigationUpdated(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addNavigationUpdated(handler);
    }
    pub fn removeNavigationUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeNavigationUpdated(token);
    }
    pub fn addNavigationCompleted(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addNavigationCompleted(handler);
    }
    pub fn removeNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeNavigationCompleted(token);
    }
    pub fn addNavigationCanceled(self: *@This(), handler: *TypedEventHandler(SpatialGestureRecognizer,SpatialNavigationCanceledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.addNavigationCanceled(handler);
    }
    pub fn removeNavigationCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.removeNavigationCanceled(token);
    }
    pub fn CaptureInteraction(self: *@This(), interaction: *SpatialInteraction) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.CaptureInteraction(interaction);
    }
    pub fn CancelPendingGestures(self: *@This()) core.HResult!void {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.CancelPendingGestures();
    }
    pub fn TrySetGestureSettings(self: *@This(), settings: SpatialGestureSettings) core.HResult!bool {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.TrySetGestureSettings(settings);
    }
    pub fn getGestureSettings(self: *@This()) core.HResult!SpatialGestureSettings {
        const this: *ISpatialGestureRecognizer = @ptrCast(self);
        return try this.getGestureSettings();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(settings: SpatialGestureSettings) core.HResult!*SpatialGestureRecognizer {
        const _f = @This().ISpatialGestureRecognizerFactoryCache.get();
        return try _f.Create(settings);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialGestureRecognizer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialGestureRecognizer.GUID;
    pub const IID: Guid = ISpatialGestureRecognizer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialGestureRecognizer.SIGNATURE);
    var _ISpatialGestureRecognizerFactoryCache: FactoryCache(ISpatialGestureRecognizerFactory, RUNTIME_NAME) = .{};
};
pub const SpatialGestureSettings = enum(i32) {
    None = 0,
    Tap = 1,
    DoubleTap = 2,
    Hold = 4,
    ManipulationTranslate = 8,
    NavigationX = 16,
    NavigationY = 32,
    NavigationZ = 64,
    NavigationRailsX = 128,
    NavigationRailsY = 256,
    NavigationRailsZ = 512,
};
pub const SpatialHoldCanceledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialHoldCanceledEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialHoldCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialHoldCanceledEventArgs.GUID;
    pub const IID: Guid = ISpatialHoldCanceledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialHoldCanceledEventArgs.SIGNATURE);
};
pub const SpatialHoldCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialHoldCompletedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialHoldCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialHoldCompletedEventArgs.GUID;
    pub const IID: Guid = ISpatialHoldCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialHoldCompletedEventArgs.SIGNATURE);
};
pub const SpatialHoldStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialHoldStartedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialHoldStartedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialHoldStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialHoldStartedEventArgs.GUID;
    pub const IID: Guid = ISpatialHoldStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialHoldStartedEventArgs.SIGNATURE);
};
pub const SpatialInteraction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceState(self: *@This()) core.HResult!*SpatialInteractionSourceState {
        const this: *ISpatialInteraction = @ptrCast(self);
        return try this.getSourceState();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteraction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteraction.GUID;
    pub const IID: Guid = ISpatialInteraction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteraction.SIGNATURE);
};
pub const SpatialInteractionController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHasTouchpad(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getHasTouchpad();
    }
    pub fn getHasThumbstick(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getHasThumbstick();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub fn getVendorId(self: *@This()) core.HResult!u16 {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getVendorId();
    }
    pub fn getProductId(self: *@This()) core.HResult!u16 {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getVersion(self: *@This()) core.HResult!u16 {
        const this: *ISpatialInteractionController = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn TryGetRenderableModelAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamWithContentType) {
        var this: ?*ISpatialInteractionController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetRenderableModelAsync();
    }
    pub fn TryGetBatteryReport(self: *@This()) core.HResult!*BatteryReport {
        var this: ?*ISpatialInteractionController3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionController3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBatteryReport();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionController.GUID;
    pub const IID: Guid = ISpatialInteractionController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionController.SIGNATURE);
};
pub const SpatialInteractionControllerProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTouchpadTouched(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getIsTouchpadTouched();
    }
    pub fn getIsTouchpadPressed(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getIsTouchpadPressed();
    }
    pub fn getIsThumbstickPressed(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getIsThumbstickPressed();
    }
    pub fn getThumbstickX(self: *@This()) core.HResult!f64 {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getThumbstickX();
    }
    pub fn getThumbstickY(self: *@This()) core.HResult!f64 {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getThumbstickY();
    }
    pub fn getTouchpadX(self: *@This()) core.HResult!f64 {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getTouchpadX();
    }
    pub fn getTouchpadY(self: *@This()) core.HResult!f64 {
        const this: *ISpatialInteractionControllerProperties = @ptrCast(self);
        return try this.getTouchpadY();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionControllerProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionControllerProperties.GUID;
    pub const IID: Guid = ISpatialInteractionControllerProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionControllerProperties.SIGNATURE);
};
pub const SpatialInteractionDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialInteractionDetectedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialInteractionDetectedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub fn getInteraction(self: *@This()) core.HResult!*SpatialInteraction {
        const this: *ISpatialInteractionDetectedEventArgs = @ptrCast(self);
        return try this.getInteraction();
    }
    pub fn getInteractionSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        var this: ?*ISpatialInteractionDetectedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionDetectedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInteractionSource();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionDetectedEventArgs.GUID;
    pub const IID: Guid = ISpatialInteractionDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionDetectedEventArgs.SIGNATURE);
};
pub const SpatialInteractionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceDetected(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addSourceDetected(handler);
    }
    pub fn removeSourceDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeSourceDetected(token);
    }
    pub fn addSourceLost(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addSourceLost(handler);
    }
    pub fn removeSourceLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeSourceLost(token);
    }
    pub fn addSourceUpdated(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addSourceUpdated(handler);
    }
    pub fn removeSourceUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeSourceUpdated(token);
    }
    pub fn addSourcePressed(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addSourcePressed(handler);
    }
    pub fn removeSourcePressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeSourcePressed(token);
    }
    pub fn addSourceReleased(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionSourceEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addSourceReleased(handler);
    }
    pub fn removeSourceReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeSourceReleased(token);
    }
    pub fn addInteractionDetected(self: *@This(), handler: *TypedEventHandler(SpatialInteractionManager,SpatialInteractionDetectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.addInteractionDetected(handler);
    }
    pub fn removeInteractionDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.removeInteractionDetected(token);
    }
    pub fn GetDetectedSourcesAtTimestamp(self: *@This(), timeStamp: *PerceptionTimestamp) core.HResult!*IVectorView(SpatialInteractionSourceState) {
        const this: *ISpatialInteractionManager = @ptrCast(self);
        return try this.GetDetectedSourcesAtTimestamp(timeStamp);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsSourceKindSupported(kind: SpatialInteractionSourceKind) core.HResult!bool {
        const _f = @This().ISpatialInteractionManagerStatics2Cache.get();
        return try _f.IsSourceKindSupported(kind);
    }
    pub fn GetForCurrentView() core.HResult!*SpatialInteractionManager {
        const _f = @This().ISpatialInteractionManagerStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionManager.GUID;
    pub const IID: Guid = ISpatialInteractionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionManager.SIGNATURE);
    var _ISpatialInteractionManagerStatics2Cache: FactoryCache(ISpatialInteractionManagerStatics2, RUNTIME_NAME) = .{};
    var _ISpatialInteractionManagerStaticsCache: FactoryCache(ISpatialInteractionManagerStatics, RUNTIME_NAME) = .{};
};
pub const SpatialInteractionPressKind = enum(i32) {
    None = 0,
    Select = 1,
    Menu = 2,
    Grasp = 3,
    Touchpad = 4,
    Thumbstick = 5,
};
pub const SpatialInteractionSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *ISpatialInteractionSource = @ptrCast(self);
        return try this.getId();
    }
    pub fn getKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialInteractionSource = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getIsPointingSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPointingSupported();
    }
    pub fn getIsMenuSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMenuSupported();
    }
    pub fn getIsGraspSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGraspSupported();
    }
    pub fn getController(self: *@This()) core.HResult!*SpatialInteractionController {
        var this: ?*ISpatialInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getController();
    }
    pub fn TryGetStateAtTimestamp(self: *@This(), timestamp: *PerceptionTimestamp) core.HResult!*SpatialInteractionSourceState {
        var this: ?*ISpatialInteractionSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetStateAtTimestamp(timestamp);
    }
    pub fn getHandedness(self: *@This()) core.HResult!SpatialInteractionSourceHandedness {
        var this: ?*ISpatialInteractionSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHandedness();
    }
    pub fn TryCreateHandMeshObserver(self: *@This()) core.HResult!*HandMeshObserver {
        var this: ?*ISpatialInteractionSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateHandMeshObserver();
    }
    pub fn TryCreateHandMeshObserverAsync(self: *@This()) core.HResult!*IAsyncOperation(HandMeshObserver) {
        var this: ?*ISpatialInteractionSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateHandMeshObserverAsync();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionSource.GUID;
    pub const IID: Guid = ISpatialInteractionSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionSource.SIGNATURE);
};
pub const SpatialInteractionSourceEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!*SpatialInteractionSourceState {
        const this: *ISpatialInteractionSourceEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getPressKind(self: *@This()) core.HResult!SpatialInteractionPressKind {
        var this: ?*ISpatialInteractionSourceEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPressKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionSourceEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionSourceEventArgs.GUID;
    pub const IID: Guid = ISpatialInteractionSourceEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionSourceEventArgs.SIGNATURE);
};
pub const SpatialInteractionSourceHandedness = enum(i32) {
    Unspecified = 0,
    Left = 1,
    Right = 2,
};
pub const SpatialInteractionSourceKind = enum(i32) {
    Other = 0,
    Hand = 1,
    Voice = 2,
    Controller = 3,
};
pub const SpatialInteractionSourceLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *ISpatialInteractionSourceLocation = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getVelocity(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *ISpatialInteractionSourceLocation = @ptrCast(self);
        return try this.getVelocity();
    }
    pub fn getOrientation(self: *@This()) core.HResult!*IReference(Quaternion) {
        var this: ?*ISpatialInteractionSourceLocation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceLocation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrientation();
    }
    pub fn getPositionAccuracy(self: *@This()) core.HResult!SpatialInteractionSourcePositionAccuracy {
        var this: ?*ISpatialInteractionSourceLocation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceLocation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPositionAccuracy();
    }
    pub fn getAngularVelocity(self: *@This()) core.HResult!*IReference(Vector3) {
        var this: ?*ISpatialInteractionSourceLocation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceLocation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAngularVelocity();
    }
    pub fn getSourcePointerPose(self: *@This()) core.HResult!*SpatialPointerInteractionSourcePose {
        var this: ?*ISpatialInteractionSourceLocation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceLocation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourcePointerPose();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionSourceLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionSourceLocation.GUID;
    pub const IID: Guid = ISpatialInteractionSourceLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionSourceLocation.SIGNATURE);
};
pub const SpatialInteractionSourcePositionAccuracy = enum(i32) {
    High = 0,
    Approximate = 1,
};
pub const SpatialInteractionSourceProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn TryGetSourceLossMitigationDirection(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(Vector3) {
        const this: *ISpatialInteractionSourceProperties = @ptrCast(self);
        return try this.TryGetSourceLossMitigationDirection(coordinateSystem);
    }
    pub fn getSourceLossRisk(self: *@This()) core.HResult!f64 {
        const this: *ISpatialInteractionSourceProperties = @ptrCast(self);
        return try this.getSourceLossRisk();
    }
    pub fn TryGetLocation(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialInteractionSourceLocation {
        const this: *ISpatialInteractionSourceProperties = @ptrCast(self);
        return try this.TryGetLocation(coordinateSystem);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionSourceProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionSourceProperties.GUID;
    pub const IID: Guid = ISpatialInteractionSourceProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionSourceProperties.SIGNATURE);
};
pub const SpatialInteractionSourceState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*SpatialInteractionSource {
        const this: *ISpatialInteractionSourceState = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getProperties(self: *@This()) core.HResult!*SpatialInteractionSourceProperties {
        const this: *ISpatialInteractionSourceState = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getIsPressed(self: *@This()) core.HResult!bool {
        const this: *ISpatialInteractionSourceState = @ptrCast(self);
        return try this.getIsPressed();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        const this: *ISpatialInteractionSourceState = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialInteractionSourceState = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub fn getIsSelectPressed(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSourceState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelectPressed();
    }
    pub fn getIsMenuPressed(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSourceState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMenuPressed();
    }
    pub fn getIsGrasped(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialInteractionSourceState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGrasped();
    }
    pub fn getSelectPressedValue(self: *@This()) core.HResult!f64 {
        var this: ?*ISpatialInteractionSourceState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectPressedValue();
    }
    pub fn getControllerProperties(self: *@This()) core.HResult!*SpatialInteractionControllerProperties {
        var this: ?*ISpatialInteractionSourceState2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControllerProperties();
    }
    pub fn TryGetHandPose(self: *@This()) core.HResult!*HandPose {
        var this: ?*ISpatialInteractionSourceState3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialInteractionSourceState3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetHandPose();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialInteractionSourceState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialInteractionSourceState.GUID;
    pub const IID: Guid = ISpatialInteractionSourceState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialInteractionSourceState.SIGNATURE);
};
pub const SpatialManipulationCanceledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialManipulationCanceledEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialManipulationCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialManipulationCanceledEventArgs.GUID;
    pub const IID: Guid = ISpatialManipulationCanceledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialManipulationCanceledEventArgs.SIGNATURE);
};
pub const SpatialManipulationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialManipulationCompletedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetCumulativeDelta(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialManipulationDelta {
        const this: *ISpatialManipulationCompletedEventArgs = @ptrCast(self);
        return try this.TryGetCumulativeDelta(coordinateSystem);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialManipulationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialManipulationCompletedEventArgs.GUID;
    pub const IID: Guid = ISpatialManipulationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialManipulationCompletedEventArgs.SIGNATURE);
};
pub const SpatialManipulationDelta = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTranslation(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialManipulationDelta = @ptrCast(self);
        return try this.getTranslation();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialManipulationDelta";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialManipulationDelta.GUID;
    pub const IID: Guid = ISpatialManipulationDelta.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialManipulationDelta.SIGNATURE);
};
pub const SpatialManipulationStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialManipulationStartedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialManipulationStartedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialManipulationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialManipulationStartedEventArgs.GUID;
    pub const IID: Guid = ISpatialManipulationStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialManipulationStartedEventArgs.SIGNATURE);
};
pub const SpatialManipulationUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetCumulativeDelta(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialManipulationDelta {
        const this: *ISpatialManipulationUpdatedEventArgs = @ptrCast(self);
        return try this.TryGetCumulativeDelta(coordinateSystem);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialManipulationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialManipulationUpdatedEventArgs.GUID;
    pub const IID: Guid = ISpatialManipulationUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialManipulationUpdatedEventArgs.SIGNATURE);
};
pub const SpatialNavigationCanceledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialNavigationCanceledEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialNavigationCanceledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialNavigationCanceledEventArgs.GUID;
    pub const IID: Guid = ISpatialNavigationCanceledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialNavigationCanceledEventArgs.SIGNATURE);
};
pub const SpatialNavigationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialNavigationCompletedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn getNormalizedOffset(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialNavigationCompletedEventArgs = @ptrCast(self);
        return try this.getNormalizedOffset();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialNavigationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialNavigationCompletedEventArgs.GUID;
    pub const IID: Guid = ISpatialNavigationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialNavigationCompletedEventArgs.SIGNATURE);
};
pub const SpatialNavigationStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialNavigationStartedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialNavigationStartedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub fn getIsNavigatingX(self: *@This()) core.HResult!bool {
        const this: *ISpatialNavigationStartedEventArgs = @ptrCast(self);
        return try this.getIsNavigatingX();
    }
    pub fn getIsNavigatingY(self: *@This()) core.HResult!bool {
        const this: *ISpatialNavigationStartedEventArgs = @ptrCast(self);
        return try this.getIsNavigatingY();
    }
    pub fn getIsNavigatingZ(self: *@This()) core.HResult!bool {
        const this: *ISpatialNavigationStartedEventArgs = @ptrCast(self);
        return try this.getIsNavigatingZ();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialNavigationStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialNavigationStartedEventArgs.GUID;
    pub const IID: Guid = ISpatialNavigationStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialNavigationStartedEventArgs.SIGNATURE);
};
pub const SpatialNavigationUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialNavigationUpdatedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn getNormalizedOffset(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialNavigationUpdatedEventArgs = @ptrCast(self);
        return try this.getNormalizedOffset();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialNavigationUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialNavigationUpdatedEventArgs.GUID;
    pub const IID: Guid = ISpatialNavigationUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialNavigationUpdatedEventArgs.SIGNATURE);
};
pub const SpatialPointerInteractionSourcePose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialPointerInteractionSourcePose = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getForwardDirection(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialPointerInteractionSourcePose = @ptrCast(self);
        return try this.getForwardDirection();
    }
    pub fn getUpDirection(self: *@This()) core.HResult!Vector3 {
        const this: *ISpatialPointerInteractionSourcePose = @ptrCast(self);
        return try this.getUpDirection();
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var this: ?*ISpatialPointerInteractionSourcePose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialPointerInteractionSourcePose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOrientation();
    }
    pub fn getPositionAccuracy(self: *@This()) core.HResult!SpatialInteractionSourcePositionAccuracy {
        var this: ?*ISpatialPointerInteractionSourcePose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialPointerInteractionSourcePose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPositionAccuracy();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialPointerInteractionSourcePose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialPointerInteractionSourcePose.GUID;
    pub const IID: Guid = ISpatialPointerInteractionSourcePose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialPointerInteractionSourcePose.SIGNATURE);
};
pub const SpatialPointerPose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        const this: *ISpatialPointerPose = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getHead(self: *@This()) core.HResult!*HeadPose {
        const this: *ISpatialPointerPose = @ptrCast(self);
        return try this.getHead();
    }
    pub fn TryGetInteractionSourcePose(self: *@This(), source: *SpatialInteractionSource) core.HResult!*SpatialPointerInteractionSourcePose {
        var this: ?*ISpatialPointerPose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialPointerPose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetInteractionSourcePose(source);
    }
    pub fn getEyes(self: *@This()) core.HResult!*EyesPose {
        var this: ?*ISpatialPointerPose3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialPointerPose3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEyes();
    }
    pub fn getIsHeadCapturedBySystem(self: *@This()) core.HResult!bool {
        var this: ?*ISpatialPointerPose3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpatialPointerPose3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHeadCapturedBySystem();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryGetAtTimestamp(coordinateSystem: *SpatialCoordinateSystem, timestamp: *PerceptionTimestamp) core.HResult!*SpatialPointerPose {
        const _f = @This().ISpatialPointerPoseStaticsCache.get();
        return try _f.TryGetAtTimestamp(coordinateSystem, timestamp);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialPointerPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialPointerPose.GUID;
    pub const IID: Guid = ISpatialPointerPose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialPointerPose.SIGNATURE);
    var _ISpatialPointerPoseStaticsCache: FactoryCache(ISpatialPointerPoseStatics, RUNTIME_NAME) = .{};
};
pub const SpatialRecognitionEndedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialRecognitionEndedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialRecognitionEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialRecognitionEndedEventArgs.GUID;
    pub const IID: Guid = ISpatialRecognitionEndedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialRecognitionEndedEventArgs.SIGNATURE);
};
pub const SpatialRecognitionStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialRecognitionStartedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialRecognitionStartedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub fn IsGesturePossible(self: *@This(), gesture: SpatialGestureSettings) core.HResult!bool {
        const this: *ISpatialRecognitionStartedEventArgs = @ptrCast(self);
        return try this.IsGesturePossible(gesture);
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialRecognitionStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialRecognitionStartedEventArgs.GUID;
    pub const IID: Guid = ISpatialRecognitionStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialRecognitionStartedEventArgs.SIGNATURE);
};
pub const SpatialTappedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInteractionSourceKind(self: *@This()) core.HResult!SpatialInteractionSourceKind {
        const this: *ISpatialTappedEventArgs = @ptrCast(self);
        return try this.getInteractionSourceKind();
    }
    pub fn TryGetPointerPose(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*SpatialPointerPose {
        const this: *ISpatialTappedEventArgs = @ptrCast(self);
        return try this.TryGetPointerPose(coordinateSystem);
    }
    pub fn getTapCount(self: *@This()) core.HResult!u32 {
        const this: *ISpatialTappedEventArgs = @ptrCast(self);
        return try this.getTapCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Input.Spatial.SpatialTappedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpatialTappedEventArgs.GUID;
    pub const IID: Guid = ISpatialTappedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpatialTappedEventArgs.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const EyesPose = @import("../../Perception/People.zig").EyesPose;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const PerceptionTimestamp = @import("../../Perception.zig").PerceptionTimestamp;
const HRESULT = @import("../../root.zig").HRESULT;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const HandPose = @import("../../Perception/People.zig").HandPose;
const IReference = @import("../../Foundation.zig").IReference;
const SimpleHapticsController = @import("../../Devices/Haptics.zig").SimpleHapticsController;
const SpatialCoordinateSystem = @import("../../Perception/Spatial.zig").SpatialCoordinateSystem;
const HandMeshObserver = @import("../../Perception/People.zig").HandMeshObserver;
const FactoryCache = @import("../../core.zig").FactoryCache;
const BatteryReport = @import("../../Devices/Power.zig").BatteryReport;
const HeadPose = @import("../../Perception/People.zig").HeadPose;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const IRandomAccessStreamWithContentType = @import("../../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const Quaternion = @import("../../Foundation/Numerics.zig").Quaternion;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
