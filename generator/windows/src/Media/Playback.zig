pub const AutoLoadedDisplayPropertyKind = enum(i32) {
    None = 0,
    MusicOrVideo = 1,
    Music = 2,
    Video = 3,
};
pub const BackgroundMediaPlayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*MediaPlayer {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.getCurrent();
    }
    pub fn addMessageReceivedFromBackground(value: *EventHandler(MediaPlayerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.addMessageReceivedFromBackground(value);
    }
    pub fn removeMessageReceivedFromBackground(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.removeMessageReceivedFromBackground(token);
    }
    pub fn addMessageReceivedFromForeground(value: *EventHandler(MediaPlayerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.addMessageReceivedFromForeground(value);
    }
    pub fn removeMessageReceivedFromForeground(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.removeMessageReceivedFromForeground(token);
    }
    pub fn SendMessageToBackground(value: *ValueSet) core.HResult!void {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.SendMessageToBackground(value);
    }
    pub fn SendMessageToForeground(value: *ValueSet) core.HResult!void {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.SendMessageToForeground(value);
    }
    pub fn IsMediaPlaying() core.HResult!bool {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.IsMediaPlaying();
    }
    pub fn Shutdown() core.HResult!void {
        const factory = @This().IBackgroundMediaPlayerStaticsCache.get();
        return try factory.Shutdown();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.BackgroundMediaPlayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBackgroundMediaPlayerStaticsCache: FactoryCache(IBackgroundMediaPlayerStatics, RUNTIME_NAME) = .{};
};
pub const CurrentMediaPlaybackItemChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *ICurrentMediaPlaybackItemChangedEventArgs = @ptrCast(self);
        return try this.getNewItem();
    }
    pub fn getOldItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *ICurrentMediaPlaybackItemChangedEventArgs = @ptrCast(self);
        return try this.getOldItem();
    }
    pub fn getReason(self: *@This()) core.HResult!MediaPlaybackItemChangedReason {
        var this: ?*ICurrentMediaPlaybackItemChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICurrentMediaPlaybackItemChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReason();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.CurrentMediaPlaybackItemChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrentMediaPlaybackItemChangedEventArgs.GUID;
    pub const IID: Guid = ICurrentMediaPlaybackItemChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrentMediaPlaybackItemChangedEventArgs.SIGNATURE);
};
pub const FailedMediaStreamKind = enum(i32) {
    Unknown = 0,
    Audio = 1,
    Video = 2,
};
pub const IBackgroundMediaPlayerStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*MediaPlayer {
        var _r: *MediaPlayer = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMessageReceivedFromBackground(self: *@This(), value: *EventHandler(MediaPlayerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceivedFromBackground(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceivedFromBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceivedFromBackground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMessageReceivedFromForeground(self: *@This(), value: *EventHandler(MediaPlayerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageReceivedFromForeground(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageReceivedFromForeground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageReceivedFromForeground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendMessageToBackground(self: *@This(), value: *ValueSet) core.HResult!void {
        const _c = self.vtable.SendMessageToBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendMessageToForeground(self: *@This(), value: *ValueSet) core.HResult!void {
        const _c = self.vtable.SendMessageToForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsMediaPlaying(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsMediaPlaying(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Shutdown(self: *@This()) core.HResult!void {
        const _c = self.vtable.Shutdown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IBackgroundMediaPlayerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "856ddbc1-55f7-471f-a0f2-68ac4c904592";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **MediaPlayer) callconv(.winapi) HRESULT,
        add_MessageReceivedFromBackground: *const fn(self: *anyopaque, value: *EventHandler(MediaPlayerDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceivedFromBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MessageReceivedFromForeground: *const fn(self: *anyopaque, value: *EventHandler(MediaPlayerDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageReceivedFromForeground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SendMessageToBackground: *const fn(self: *anyopaque, value: *ValueSet) callconv(.winapi) HRESULT,
        SendMessageToForeground: *const fn(self: *anyopaque, value: *ValueSet) callconv(.winapi) HRESULT,
        IsMediaPlaying: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        Shutdown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentMediaPlaybackItemChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_NewItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_OldItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1743a892-5c43-4a15-967a-572d2d0f26c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_OldItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentMediaPlaybackItemChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!MediaPlaybackItemChangedReason {
        var _r: MediaPlaybackItemChangedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.ICurrentMediaPlaybackItemChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d80a51e-996e-40a9-be48-e66ec90b2b7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *MediaPlaybackItemChangedReason) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreak = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackList(self: *@This()) core.HResult!*MediaPlaybackList {
        var _r: *MediaPlaybackList = undefined;
        const _c = self.vtable.get_PlaybackList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PresentationPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInsertionMethod(self: *@This()) core.HResult!MediaBreakInsertionMethod {
        var _r: MediaBreakInsertionMethod = undefined;
        const _c = self.vtable.get_InsertionMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_CustomProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanStart(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanStart(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreak";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "714be270-0def-4ebc-a489-6b34930e1558";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackList: *const fn(self: *anyopaque, _r: **MediaPlaybackList) callconv(.winapi) HRESULT,
        get_PresentationPosition: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_InsertionMethod: *const fn(self: *anyopaque, _r: *MediaBreakInsertionMethod) callconv(.winapi) HRESULT,
        get_CustomProperties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_CanStart: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanStart: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakEndedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_MediaBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32b93276-1c5d-4fee-8732-236dc3a88580";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), insertionMethod: MediaBreakInsertionMethod) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.Create(@ptrCast(self), insertionMethod, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPresentationPosition(self: *@This(), insertionMethod: MediaBreakInsertionMethod, presentationPosition: TimeSpan) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.CreateWithPresentationPosition(@ptrCast(self), insertionMethod, presentationPosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4516e002-18e0-4079-8b5f-d33495c15d2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, insertionMethod: MediaBreakInsertionMethod, _r: **MediaBreak) callconv(.winapi) HRESULT,
        CreateWithPresentationPosition: *const fn(self: *anyopaque, insertionMethod: MediaBreakInsertionMethod, presentationPosition: TimeSpan, _r: **MediaBreak) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakManager = extern struct {
    vtable: *const VTable,
    pub fn addBreaksSeekedOver(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakSeekedOverEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BreaksSeekedOver(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBreaksSeekedOver(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BreaksSeekedOver(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBreakStarted(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakStartedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BreakStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBreakStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BreakStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBreakEnded(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakEndedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BreakEnded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBreakEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BreakEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBreakSkipped(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakSkippedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BreakSkipped(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBreakSkipped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BreakSkipped(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_CurrentBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackSession(self: *@This()) core.HResult!*MediaPlaybackSession {
        var _r: *MediaPlaybackSession = undefined;
        const _c = self.vtable.get_PlaybackSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PlayBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const _c = self.vtable.PlayBreak(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SkipCurrentBreak(self: *@This()) core.HResult!void {
        const _c = self.vtable.SkipCurrentBreak(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a854ddb1-feb4-4d9b-9d97-0fdbe58e5e39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BreaksSeekedOver: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBreakManager,MediaBreakSeekedOverEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BreaksSeekedOver: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BreakStarted: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBreakManager,MediaBreakStartedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BreakStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BreakEnded: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBreakManager,MediaBreakEndedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BreakEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BreakSkipped: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBreakManager,MediaBreakSkippedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BreakSkipped: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CurrentBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
        get_PlaybackSession: *const fn(self: *anyopaque, _r: **MediaPlaybackSession) callconv(.winapi) HRESULT,
        PlayBreak: *const fn(self: *anyopaque, value: *MediaBreak) callconv(.winapi) HRESULT,
        SkipCurrentBreak: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakSchedule = extern struct {
    vtable: *const VTable,
    pub fn addScheduleChanged(self: *@This(), handler: *TypedEventHandler(MediaBreakSchedule,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScheduleChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScheduleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScheduleChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertMidrollBreak(self: *@This(), mediaBreak: *MediaBreak) core.HResult!void {
        const _c = self.vtable.InsertMidrollBreak(@ptrCast(self), mediaBreak);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveMidrollBreak(self: *@This(), mediaBreak: *MediaBreak) core.HResult!void {
        const _c = self.vtable.RemoveMidrollBreak(@ptrCast(self), mediaBreak);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMidrollBreaks(self: *@This()) core.HResult!*IVectorView(MediaBreak) {
        var _r: *IVectorView(MediaBreak) = undefined;
        const _c = self.vtable.get_MidrollBreaks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPrerollBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const _c = self.vtable.put_PrerollBreak(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPrerollBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_PrerollBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPostrollBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const _c = self.vtable.put_PostrollBreak(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPostrollBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_PostrollBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_PlaybackItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakSchedule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a19a5813-98b6-41d8-83da-f971d22b7bba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ScheduleChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBreakSchedule,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScheduleChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        InsertMidrollBreak: *const fn(self: *anyopaque, mediaBreak: *MediaBreak) callconv(.winapi) HRESULT,
        RemoveMidrollBreak: *const fn(self: *anyopaque, mediaBreak: *MediaBreak) callconv(.winapi) HRESULT,
        get_MidrollBreaks: *const fn(self: *anyopaque, _r: **IVectorView(MediaBreak)) callconv(.winapi) HRESULT,
        put_PrerollBreak: *const fn(self: *anyopaque, value: *MediaBreak) callconv(.winapi) HRESULT,
        get_PrerollBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
        put_PostrollBreak: *const fn(self: *anyopaque, value: *MediaBreak) callconv(.winapi) HRESULT,
        get_PostrollBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
        get_PlaybackItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakSeekedOverEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSeekedOverBreaks(self: *@This()) core.HResult!*IVectorView(MediaBreak) {
        var _r: *IVectorView(MediaBreak) = undefined;
        const _c = self.vtable.get_SeekedOverBreaks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_OldPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_NewPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakSeekedOverEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5aa6746-0606-4492-b9d3-c3c8fde0a4ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SeekedOverBreaks: *const fn(self: *anyopaque, _r: **IVectorView(MediaBreak)) callconv(.winapi) HRESULT,
        get_OldPosition: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_NewPosition: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakSkippedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_MediaBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakSkippedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ee94c05-2f54-4a3e-a3ab-24c3b270b4a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBreakStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        var _r: *MediaBreak = undefined;
        const _c = self.vtable.get_MediaBreak(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaBreakStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a87efe71-dfd4-454a-956e-0a4a648395f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MediaBreak: *const fn(self: *anyopaque, _r: **MediaBreak) callconv(.winapi) HRESULT,
    };
};
pub const IMediaEnginePlaybackSource = extern struct {
    vtable: *const VTable,
    pub fn getCurrentItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_CurrentItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPlaybackSource(self: *@This(), source: *IMediaPlaybackSource) core.HResult!void {
        const _c = self.vtable.SetPlaybackSource(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaEnginePlaybackSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c1d0ba7-3856-48b9-8dc6-244bf107bf8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        SetPlaybackSource: *const fn(self: *anyopaque, source: *IMediaPlaybackSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaItemDisplayProperties = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!MediaPlaybackType {
        var _r: MediaPlaybackType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: MediaPlaybackType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicDisplayProperties {
        var _r: *MusicDisplayProperties = undefined;
        const _c = self.vtable.get_MusicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoDisplayProperties {
        var _r: *VideoDisplayProperties = undefined;
        const _c = self.vtable.get_VideoProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        var _r: *RandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaItemDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e3c1b48-7097-4384-a217-c1291dfa8c16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *MediaPlaybackType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: MediaPlaybackType) callconv(.winapi) HRESULT,
        get_MusicProperties: *const fn(self: *anyopaque, _r: **MusicDisplayProperties) callconv(.winapi) HRESULT,
        get_VideoProperties: *const fn(self: *anyopaque, _r: **VideoDisplayProperties) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *RandomAccessStreamReference) callconv(.winapi) HRESULT,
        ClearAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManager = extern struct {
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
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        var _r: *MediaPlayer = undefined;
        const _c = self.vtable.get_MediaPlayer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlayBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_PlayBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPauseBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_PauseBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNextBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_NextBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviousBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_PreviousBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFastForwardBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_FastForwardBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRewindBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_RewindBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShuffleBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_ShuffleBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoRepeatModeBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_AutoRepeatModeBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPositionBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_PositionBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRateBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        var _r: *MediaPlaybackCommandManagerCommandBehavior = undefined;
        const _c = self.vtable.get_RateBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPlayReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPlayReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlayReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlayReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlayReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPauseReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPauseReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PauseReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePauseReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PauseReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNextReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerNextReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NextReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNextReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NextReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPreviousReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPreviousReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreviousReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviousReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreviousReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFastForwardReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerFastForwardReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FastForwardReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFastForwardReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FastForwardReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRewindReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRewindReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RewindReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRewindReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RewindReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addShuffleReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerShuffleReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShuffleReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShuffleReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShuffleReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAutoRepeatModeReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AutoRepeatModeReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAutoRepeatModeReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AutoRepeatModeReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPositionReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPositionReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRateReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRateReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RateReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRateReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RateReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5acee5a6-5cb6-4a5a-8521-cc86b1c1ed37";
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
        get_MediaPlayer: *const fn(self: *anyopaque, _r: **MediaPlayer) callconv(.winapi) HRESULT,
        get_PlayBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_PauseBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_NextBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_PreviousBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_FastForwardBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_RewindBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_ShuffleBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_AutoRepeatModeBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_PositionBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        get_RateBehavior: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManagerCommandBehavior) callconv(.winapi) HRESULT,
        add_PlayReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPlayReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlayReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PauseReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPauseReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PauseReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NextReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerNextReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NextReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PreviousReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPreviousReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreviousReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FastForwardReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerFastForwardReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FastForwardReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RewindReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRewindReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RewindReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ShuffleReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerShuffleReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShuffleReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AutoRepeatModeReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AutoRepeatModeReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PositionReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPositionReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RateReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRateReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RateReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        var _r: MediaPlaybackAutoRepeatMode = undefined;
        const _c = self.vtable.get_AutoRepeatMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d6f4f23-5230-4411-a0e9-bad94c2a045c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoRepeatMode: *const fn(self: *anyopaque, _r: *MediaPlaybackAutoRepeatMode) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerCommandBehavior = extern struct {
    vtable: *const VTable,
    pub fn getCommandManager(self: *@This()) core.HResult!*MediaPlaybackCommandManager {
        var _r: *MediaPlaybackCommandManager = undefined;
        const _c = self.vtable.get_CommandManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnablingRule(self: *@This()) core.HResult!MediaCommandEnablingRule {
        var _r: MediaCommandEnablingRule = undefined;
        const _c = self.vtable.get_EnablingRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnablingRule(self: *@This(), value: MediaCommandEnablingRule) core.HResult!void {
        const _c = self.vtable.put_EnablingRule(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIsEnabledChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManagerCommandBehavior,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerCommandBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "786c1e78-ce78-4a10-afd6-843fcbb90c2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CommandManager: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManager) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_EnablingRule: *const fn(self: *anyopaque, _r: *MediaCommandEnablingRule) callconv(.winapi) HRESULT,
        put_EnablingRule: *const fn(self: *anyopaque, value: MediaCommandEnablingRule) callconv(.winapi) HRESULT,
        add_IsEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackCommandManagerCommandBehavior,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerFastForwardReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerFastForwardReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30f064d9-b491-4d0a-bc21-3098bd1332e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerNextReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerNextReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1504433-a2b0-45d4-b9de-5f42ac14a839";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerPauseReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerPauseReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ceccd1c-c25c-4221-b16c-c3c98ce012d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerPlayReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerPlayReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9af0004e-578b-4c56-a006-16159d888a48";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerPositionReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerPositionReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5591a754-d627-4bdd-a90d-86a015b24902";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerPreviousReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerPreviousReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "525e3081-4632-4f76-99b1-d771623f6287";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerRateReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerRateReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18ea3939-4a16-4169-8b05-3eb9f5ff78eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerRewindReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerRewindReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f085947-a3c0-425d-aaef-97ba7898b141";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackCommandManagerShuffleReceivedEventArgs = extern struct {
    vtable: *const VTable,
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
    pub fn getIsShuffleRequested(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShuffleRequested(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackCommandManagerShuffleReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50a05cef-63ee-4a96-b7b5-fee08b9ff90c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsShuffleRequested: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItem = extern struct {
    vtable: *const VTable,
    pub fn addAudioTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioTracksChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioTracksChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoTracksChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoTracksChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTimedMetadataTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TimedMetadataTracksChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTimedMetadataTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TimedMetadataTracksChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioTracks(self: *@This()) core.HResult!*MediaPlaybackAudioTrackList {
        var _r: *MediaPlaybackAudioTrackList = undefined;
        const _c = self.vtable.get_AudioTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoTracks(self: *@This()) core.HResult!*MediaPlaybackVideoTrackList {
        var _r: *MediaPlaybackVideoTrackList = undefined;
        const _c = self.vtable.get_VideoTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimedMetadataTracks(self: *@This()) core.HResult!*MediaPlaybackTimedMetadataTrackList {
        var _r: *MediaPlaybackTimedMetadataTrackList = undefined;
        const _c = self.vtable.get_TimedMetadataTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "047097d2-e4af-48ab-b283-6929e674ece2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AudioTracksChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioTracksChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoTracksChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoTracksChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TimedMetadataTracksChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TimedMetadataTracksChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **MediaSource) callconv(.winapi) HRESULT,
        get_AudioTracks: *const fn(self: *anyopaque, _r: **MediaPlaybackAudioTrackList) callconv(.winapi) HRESULT,
        get_VideoTracks: *const fn(self: *anyopaque, _r: **MediaPlaybackVideoTrackList) callconv(.winapi) HRESULT,
        get_TimedMetadataTracks: *const fn(self: *anyopaque, _r: **MediaPlaybackTimedMetadataTrackList) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItem2 = extern struct {
    vtable: *const VTable,
    pub fn getBreakSchedule(self: *@This()) core.HResult!*MediaBreakSchedule {
        var _r: *MediaBreakSchedule = undefined;
        const _c = self.vtable.get_BreakSchedule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDurationLimit(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_DurationLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSkip(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSkip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanSkip(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanSkip(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDisplayProperties(self: *@This()) core.HResult!*MediaItemDisplayProperties {
        var _r: *MediaItemDisplayProperties = undefined;
        const _c = self.vtable.GetDisplayProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyDisplayProperties(self: *@This(), value: *MediaItemDisplayProperties) core.HResult!void {
        const _c = self.vtable.ApplyDisplayProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d859d171-d7ef-4b81-ac1f-f40493cbb091";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BreakSchedule: *const fn(self: *anyopaque, _r: **MediaBreakSchedule) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_DurationLimit: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_CanSkip: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanSkip: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetDisplayProperties: *const fn(self: *anyopaque, _r: **MediaItemDisplayProperties) callconv(.winapi) HRESULT,
        ApplyDisplayProperties: *const fn(self: *anyopaque, value: *MediaItemDisplayProperties) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItem3 = extern struct {
    vtable: *const VTable,
    pub fn getIsDisabledInPlaybackList(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledInPlaybackList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDisabledInPlaybackList(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDisabledInPlaybackList(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTotalDownloadProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TotalDownloadProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoLoadedDisplayProperties(self: *@This()) core.HResult!AutoLoadedDisplayPropertyKind {
        var _r: AutoLoadedDisplayPropertyKind = undefined;
        const _c = self.vtable.get_AutoLoadedDisplayProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoLoadedDisplayProperties(self: *@This(), value: AutoLoadedDisplayPropertyKind) core.HResult!void {
        const _c = self.vtable.put_AutoLoadedDisplayProperties(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItem3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d328220-b80a-4d09-9ff8-f87094a1c831";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDisabledInPlaybackList: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDisabledInPlaybackList: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TotalDownloadProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_AutoLoadedDisplayProperties: *const fn(self: *anyopaque, _r: *AutoLoadedDisplayPropertyKind) callconv(.winapi) HRESULT,
        put_AutoLoadedDisplayProperties: *const fn(self: *anyopaque, value: AutoLoadedDisplayPropertyKind) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemError = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!MediaPlaybackItemErrorCode {
        var _r: MediaPlaybackItemErrorCode = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69fbef2b-dcd6-4df9-a450-dbf4c6f1c2c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *MediaPlaybackItemErrorCode) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), source: *MediaSource) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.Create(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7133fce1-1769-4ff9-a7c1-38d2c4d42360";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, source: *MediaSource, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemFactory2 = extern struct {
    vtable: *const VTable,
    pub fn CreateWithStartTime(self: *@This(), source: *MediaSource, startTime: TimeSpan) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.CreateWithStartTime(@ptrCast(self), source, startTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithStartTimeAndDurationLimit(self: *@This(), source: *MediaSource, startTime: TimeSpan, durationLimit: TimeSpan) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.CreateWithStartTimeAndDurationLimit(@ptrCast(self), source, startTime, durationLimit, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemFactory2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d77cdf3a-b947-4972-b35d-adfb931a71e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithStartTime: *const fn(self: *anyopaque, source: *MediaSource, startTime: TimeSpan, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        CreateWithStartTimeAndDurationLimit: *const fn(self: *anyopaque, source: *MediaSource, startTime: TimeSpan, durationLimit: TimeSpan, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_Item(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!*MediaPlaybackItemError {
        var _r: *MediaPlaybackItemError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7703134a-e9a7-47c3-862c-c656d30683d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Item: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: **MediaPlaybackItemError) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemOpenedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_Item(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemOpenedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbd9bd82-3037-4fbe-ae8f-39fc39edf4ef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Item: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackItemStatics = extern struct {
    vtable: *const VTable,
    pub fn FindFromMediaSource(self: *@This(), source: *MediaSource) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.FindFromMediaSource(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackItemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b1be7f4-4345-403c-8a67-f5de91df4c86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindFromMediaSource: *const fn(self: *anyopaque, source: *MediaSource, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackList = extern struct {
    vtable: *const VTable,
    pub fn addItemFailed(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentItemChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,CurrentMediaPlaybackItemChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentItemChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentItemChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentItemChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addItemOpened(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemOpenedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemOpened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemOpened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItems(self: *@This()) core.HResult!*IObservableVector(MediaPlaybackItem) {
        var _r: *IObservableVector(MediaPlaybackItem) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoRepeatEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoRepeatEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoRepeatEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoRepeatEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShuffleEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShuffleEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShuffleEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShuffleEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_CurrentItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentItemIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentItemIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveNext(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.MoveNext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MovePrevious(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.MovePrevious(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MoveTo(self: *@This(), itemIndex: u32) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.MoveTo(@ptrCast(self), itemIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f77ee9c-dc42-4e26-a98d-7850df8ec925";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ItemFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentItemChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackList,CurrentMediaPlaybackItemChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentItemChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ItemOpened: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemOpenedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemOpened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IObservableVector(MediaPlaybackItem)) callconv(.winapi) HRESULT,
        get_AutoRepeatEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoRepeatEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ShuffleEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShuffleEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_CurrentItemIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        MoveNext: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        MovePrevious: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        MoveTo: *const fn(self: *anyopaque, itemIndex: u32, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackList2 = extern struct {
    vtable: *const VTable,
    pub fn getMaxPrefetchTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MaxPrefetchTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPrefetchTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_MaxPrefetchTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartingItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_StartingItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartingItem(self: *@This(), value: *MediaPlaybackItem) core.HResult!void {
        const _c = self.vtable.put_StartingItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShuffledItems(self: *@This()) core.HResult!*IVectorView(MediaPlaybackItem) {
        var _r: *IVectorView(MediaPlaybackItem) = undefined;
        const _c = self.vtable.get_ShuffledItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetShuffledItems(self: *@This(), value: *IIterable(MediaPlaybackItem)) core.HResult!void {
        const _c = self.vtable.SetShuffledItems(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackList2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e09b478-600a-4274-a14b-0b6723d0f48b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPrefetchTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_MaxPrefetchTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_StartingItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        put_StartingItem: *const fn(self: *anyopaque, value: *MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_ShuffledItems: *const fn(self: *anyopaque, _r: **IVectorView(MediaPlaybackItem)) callconv(.winapi) HRESULT,
        SetShuffledItems: *const fn(self: *anyopaque, value: *IIterable(MediaPlaybackItem)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackList3 = extern struct {
    vtable: *const VTable,
    pub fn getMaxPlayedItemsToKeepOpen(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_MaxPlayedItemsToKeepOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxPlayedItemsToKeepOpen(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_MaxPlayedItemsToKeepOpen(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackList3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd24bba9-bc47-4463-aa90-c18b7e5ffde1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPlayedItemsToKeepOpen: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_MaxPlayedItemsToKeepOpen: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSession = extern struct {
    vtable: *const VTable,
    pub fn addPlaybackStateChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackRateChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackRateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackRateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackRateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSeekCompleted(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SeekCompleted(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSeekCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SeekCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBufferingStarted(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferingStarted(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferingStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferingStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBufferingEnded(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferingEnded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferingEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferingEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBufferingProgressChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferingProgressChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferingProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferingProgressChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadProgressChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadProgressChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadProgressChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNaturalDurationChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NaturalDurationChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNaturalDurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NaturalDurationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPositionChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNaturalVideoSizeChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NaturalVideoSizeChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNaturalVideoSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NaturalVideoSizeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        var _r: *MediaPlayer = undefined;
        const _c = self.vtable.get_MediaPlayer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_NaturalDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackState(self: *@This()) core.HResult!MediaPlaybackState {
        var _r: MediaPlaybackState = undefined;
        const _c = self.vtable.get_PlaybackState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanPause(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanPause(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsProtected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProtected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaybackRate(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_PlaybackRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBufferingProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BufferingProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloadProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DownloadProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalVideoHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NaturalVideoHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalVideoWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NaturalVideoWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNormalizedSourceRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_NormalizedSourceRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNormalizedSourceRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_NormalizedSourceRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStereoscopicVideoPackingMode(self: *@This()) core.HResult!StereoscopicVideoPackingMode {
        var _r: StereoscopicVideoPackingMode = undefined;
        const _c = self.vtable.get_StereoscopicVideoPackingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStereoscopicVideoPackingMode(self: *@This(), value: StereoscopicVideoPackingMode) core.HResult!void {
        const _c = self.vtable.put_StereoscopicVideoPackingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c32b683d-0407-41ba-8946-8b345a5a5435";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PlaybackStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackRateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackRateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SeekCompleted: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SeekCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BufferingStarted: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferingStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BufferingEnded: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferingEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BufferingProgressChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferingProgressChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadProgressChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadProgressChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NaturalDurationChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NaturalDurationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PositionChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NaturalVideoSizeChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NaturalVideoSizeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MediaPlayer: *const fn(self: *anyopaque, _r: **MediaPlayer) callconv(.winapi) HRESULT,
        get_NaturalDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_PlaybackState: *const fn(self: *anyopaque, _r: *MediaPlaybackState) callconv(.winapi) HRESULT,
        get_CanSeek: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanPause: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsProtected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_PlaybackRate: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_BufferingProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DownloadProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NaturalVideoHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NaturalVideoWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NormalizedSourceRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_NormalizedSourceRect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_StereoscopicVideoPackingMode: *const fn(self: *anyopaque, _r: *StereoscopicVideoPackingMode) callconv(.winapi) HRESULT,
        put_StereoscopicVideoPackingMode: *const fn(self: *anyopaque, value: StereoscopicVideoPackingMode) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSession2 = extern struct {
    vtable: *const VTable,
    pub fn addBufferedRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferedRangesChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferedRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferedRangesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlayedRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlayedRangesChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlayedRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlayedRangesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSeekableRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SeekableRangesChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSeekableRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SeekableRangesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSupportedPlaybackRatesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SupportedPlaybackRatesChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSupportedPlaybackRatesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SupportedPlaybackRatesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSphericalVideoProjection(self: *@This()) core.HResult!*MediaPlaybackSphericalVideoProjection {
        var _r: *MediaPlaybackSphericalVideoProjection = undefined;
        const _c = self.vtable.get_SphericalVideoProjection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMirroring(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMirroring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMirroring(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMirroring(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetBufferedRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var _r: *IVectorView(MediaTimeRange) = undefined;
        const _c = self.vtable.GetBufferedRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPlayedRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var _r: *IVectorView(MediaTimeRange) = undefined;
        const _c = self.vtable.GetPlayedRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSeekableRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var _r: *IVectorView(MediaTimeRange) = undefined;
        const _c = self.vtable.GetSeekableRanges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSupportedPlaybackRateRange(self: *@This(), rate1: f64, rate2: f64) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSupportedPlaybackRateRange(@ptrCast(self), rate1, rate2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSession2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8ba7c79-1fc8-4097-ad70-c0fa18cc0050";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BufferedRangesChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferedRangesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlayedRangesChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlayedRangesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SeekableRangesChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SeekableRangesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SupportedPlaybackRatesChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlaybackSession,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SupportedPlaybackRatesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SphericalVideoProjection: *const fn(self: *anyopaque, _r: **MediaPlaybackSphericalVideoProjection) callconv(.winapi) HRESULT,
        get_IsMirroring: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMirroring: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetBufferedRanges: *const fn(self: *anyopaque, _r: **IVectorView(MediaTimeRange)) callconv(.winapi) HRESULT,
        GetPlayedRanges: *const fn(self: *anyopaque, _r: **IVectorView(MediaTimeRange)) callconv(.winapi) HRESULT,
        GetSeekableRanges: *const fn(self: *anyopaque, _r: **IVectorView(MediaTimeRange)) callconv(.winapi) HRESULT,
        IsSupportedPlaybackRateRange: *const fn(self: *anyopaque, rate1: f64, rate2: f64, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSession3 = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackRotation(self: *@This()) core.HResult!MediaRotation {
        var _r: MediaRotation = undefined;
        const _c = self.vtable.get_PlaybackRotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaybackRotation(self: *@This(), value: MediaRotation) core.HResult!void {
        const _c = self.vtable.put_PlaybackRotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetOutputDegradationPolicyState(self: *@This()) core.HResult!*MediaPlaybackSessionOutputDegradationPolicyState {
        var _r: *MediaPlaybackSessionOutputDegradationPolicyState = undefined;
        const _c = self.vtable.GetOutputDegradationPolicyState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSession3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ba2b41a-a3e2-405f-b77b-a4812c238b66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackRotation: *const fn(self: *anyopaque, _r: *MediaRotation) callconv(.winapi) HRESULT,
        put_PlaybackRotation: *const fn(self: *anyopaque, value: MediaRotation) callconv(.winapi) HRESULT,
        GetOutputDegradationPolicyState: *const fn(self: *anyopaque, _r: **MediaPlaybackSessionOutputDegradationPolicyState) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSessionBufferingStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsPlaybackInterruption(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlaybackInterruption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSessionBufferingStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd6aafed-74e2-43b5-b115-76236c33791a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPlaybackInterruption: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSessionOutputDegradationPolicyState = extern struct {
    vtable: *const VTable,
    pub fn getVideoConstrictionReason(self: *@This()) core.HResult!MediaPlaybackSessionVideoConstrictionReason {
        var _r: MediaPlaybackSessionVideoConstrictionReason = undefined;
        const _c = self.vtable.get_VideoConstrictionReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSessionOutputDegradationPolicyState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "558e727d-f633-49f9-965a-abaa1db709be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoConstrictionReason: *const fn(self: *anyopaque, _r: *MediaPlaybackSessionVideoConstrictionReason) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef9dc2bc-9317-4696-b051-2bad643177b5";
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
pub const IMediaPlaybackSphericalVideoProjection = extern struct {
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
    pub fn getFrameFormat(self: *@This()) core.HResult!SphericalVideoFrameFormat {
        var _r: SphericalVideoFrameFormat = undefined;
        const _c = self.vtable.get_FrameFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrameFormat(self: *@This(), value: SphericalVideoFrameFormat) core.HResult!void {
        const _c = self.vtable.put_FrameFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHorizontalFieldOfViewInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalFieldOfViewInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalFieldOfViewInDegrees(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_HorizontalFieldOfViewInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getViewOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_ViewOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const _c = self.vtable.put_ViewOrientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProjectionMode(self: *@This()) core.HResult!SphericalVideoProjectionMode {
        var _r: SphericalVideoProjectionMode = undefined;
        const _c = self.vtable.get_ProjectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProjectionMode(self: *@This(), value: SphericalVideoProjectionMode) core.HResult!void {
        const _c = self.vtable.put_ProjectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackSphericalVideoProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d405b37c-6f0e-4661-b8ee-d487ba9752d5";
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
        get_FrameFormat: *const fn(self: *anyopaque, _r: *SphericalVideoFrameFormat) callconv(.winapi) HRESULT,
        put_FrameFormat: *const fn(self: *anyopaque, value: SphericalVideoFrameFormat) callconv(.winapi) HRESULT,
        get_HorizontalFieldOfViewInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalFieldOfViewInDegrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ViewOrientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_ViewOrientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
        get_ProjectionMode: *const fn(self: *anyopaque, _r: *SphericalVideoProjectionMode) callconv(.winapi) HRESULT,
        put_ProjectionMode: *const fn(self: *anyopaque, value: SphericalVideoProjectionMode) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlaybackTimedMetadataTrackList = extern struct {
    vtable: *const VTable,
    pub fn addPresentationModeChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackTimedMetadataTrackList,TimedMetadataPresentationModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PresentationModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePresentationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PresentationModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPresentationMode(self: *@This(), index: u32) core.HResult!TimedMetadataTrackPresentationMode {
        var _r: TimedMetadataTrackPresentationMode = undefined;
        const _c = self.vtable.GetPresentationMode(@ptrCast(self), index, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPresentationMode(self: *@This(), index: u32, value: TimedMetadataTrackPresentationMode) core.HResult!void {
        const _c = self.vtable.SetPresentationMode(@ptrCast(self), index, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlaybackTimedMetadataTrackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72b41319-bbfb-46a3-9372-9c9c744b9438";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_PresentationModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlaybackTimedMetadataTrackList,TimedMetadataPresentationModeChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PresentationModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetPresentationMode: *const fn(self: *anyopaque, index: u32, _r: *TimedMetadataTrackPresentationMode) callconv(.winapi) HRESULT,
        SetPresentationMode: *const fn(self: *anyopaque, index: u32, value: TimedMetadataTrackPresentationMode) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer = extern struct {
    vtable: *const VTable,
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoPlay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoPlay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNaturalDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_NaturalDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBufferingProgress(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_BufferingProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentState(self: *@This()) core.HResult!MediaPlayerState {
        var _r: MediaPlayerState = undefined;
        const _c = self.vtable.get_CurrentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanPause(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanPause(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLoopingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLoopingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLoopingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLoopingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsProtected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsProtected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMuted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMuted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMuted(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMuted(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_PlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaybackRate(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_PlaybackRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getPlaybackMediaMarkers(self: *@This()) core.HResult!*PlaybackMediaMarkerSequence {
        var _r: *PlaybackMediaMarkerSequence = undefined;
        const _c = self.vtable.get_PlaybackMediaMarkers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMediaOpened(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaOpened(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaOpened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMediaEnded(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaEnded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMediaFailed(self: *@This(), value: *TypedEventHandler(MediaPlayer,MediaPlayerFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaFailed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCurrentStateChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackMediaMarkerReached(self: *@This(), value: *TypedEventHandler(MediaPlayer,PlaybackMediaMarkerReachedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackMediaMarkerReached(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackMediaMarkerReached(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackMediaMarkerReached(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMediaPlayerRateChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,MediaPlayerRateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaPlayerRateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaPlayerRateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaPlayerRateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVolumeChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VolumeChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVolumeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VolumeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSeekCompleted(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SeekCompleted(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSeekCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SeekCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBufferingStarted(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferingStarted(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferingStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferingStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBufferingEnded(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BufferingEnded(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBufferingEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BufferingEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Play(self: *@This()) core.HResult!void {
        const _c = self.vtable.Play(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.SetUriSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "381a83cb-6fff-499b-8d64-2885dfc1249e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoPlay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoPlay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_NaturalDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_BufferingProgress: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurrentState: *const fn(self: *anyopaque, _r: *MediaPlayerState) callconv(.winapi) HRESULT,
        get_CanSeek: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanPause: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLoopingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLoopingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsProtected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMuted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMuted: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_PlaybackRate: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Volume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_PlaybackMediaMarkers: *const fn(self: *anyopaque, _r: **PlaybackMediaMarkerSequence) callconv(.winapi) HRESULT,
        add_MediaOpened: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaOpened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MediaEnded: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MediaFailed: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,MediaPlayerFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CurrentStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackMediaMarkerReached: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,PlaybackMediaMarkerReachedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackMediaMarkerReached: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MediaPlayerRateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,MediaPlayerRateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaPlayerRateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VolumeChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VolumeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SeekCompleted: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SeekCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BufferingStarted: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferingStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BufferingEnded: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BufferingEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Play: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetUriSource: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer2 = extern struct {
    vtable: *const VTable,
    pub fn getSystemMediaTransportControls(self: *@This()) core.HResult!*SystemMediaTransportControls {
        var _r: *SystemMediaTransportControls = undefined;
        const _c = self.vtable.get_SystemMediaTransportControls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioCategory(self: *@This()) core.HResult!MediaPlayerAudioCategory {
        var _r: MediaPlayerAudioCategory = undefined;
        const _c = self.vtable.get_AudioCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioCategory(self: *@This(), value: MediaPlayerAudioCategory) core.HResult!void {
        const _c = self.vtable.put_AudioCategory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioDeviceType(self: *@This()) core.HResult!MediaPlayerAudioDeviceType {
        var _r: MediaPlayerAudioDeviceType = undefined;
        const _c = self.vtable.get_AudioDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioDeviceType(self: *@This(), value: MediaPlayerAudioDeviceType) core.HResult!void {
        const _c = self.vtable.put_AudioDeviceType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c841218-2123-4fc5-9082-2f883f77bdf5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemMediaTransportControls: *const fn(self: *anyopaque, _r: **SystemMediaTransportControls) callconv(.winapi) HRESULT,
        get_AudioCategory: *const fn(self: *anyopaque, _r: *MediaPlayerAudioCategory) callconv(.winapi) HRESULT,
        put_AudioCategory: *const fn(self: *anyopaque, value: MediaPlayerAudioCategory) callconv(.winapi) HRESULT,
        get_AudioDeviceType: *const fn(self: *anyopaque, _r: *MediaPlayerAudioDeviceType) callconv(.winapi) HRESULT,
        put_AudioDeviceType: *const fn(self: *anyopaque, value: MediaPlayerAudioDeviceType) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer3 = extern struct {
    vtable: *const VTable,
    pub fn addIsMutedChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsMutedChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsMutedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsMutedChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioBalance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AudioBalance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioBalance(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_AudioBalance(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRealTimePlayback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RealTimePlayback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRealTimePlayback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RealTimePlayback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStereoscopicVideoRenderMode(self: *@This()) core.HResult!StereoscopicVideoRenderMode {
        var _r: StereoscopicVideoRenderMode = undefined;
        const _c = self.vtable.get_StereoscopicVideoRenderMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStereoscopicVideoRenderMode(self: *@This(), value: StereoscopicVideoRenderMode) core.HResult!void {
        const _c = self.vtable.put_StereoscopicVideoRenderMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBreakManager(self: *@This()) core.HResult!*MediaBreakManager {
        var _r: *MediaBreakManager = undefined;
        const _c = self.vtable.get_BreakManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommandManager(self: *@This()) core.HResult!*MediaPlaybackCommandManager {
        var _r: *MediaPlaybackCommandManager = undefined;
        const _c = self.vtable.get_CommandManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioDevice(self: *@This()) core.HResult!*DeviceInformation {
        var _r: *DeviceInformation = undefined;
        const _c = self.vtable.get_AudioDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioDevice(self: *@This(), value: *DeviceInformation) core.HResult!void {
        const _c = self.vtable.put_AudioDevice(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimelineController(self: *@This()) core.HResult!*MediaTimelineController {
        var _r: *MediaTimelineController = undefined;
        const _c = self.vtable.get_TimelineController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimelineController(self: *@This(), value: *MediaTimelineController) core.HResult!void {
        const _c = self.vtable.put_TimelineController(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTimelineControllerPositionOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TimelineControllerPositionOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimelineControllerPositionOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TimelineControllerPositionOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaybackSession(self: *@This()) core.HResult!*MediaPlaybackSession {
        var _r: *MediaPlaybackSession = undefined;
        const _c = self.vtable.get_PlaybackSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StepForwardOneFrame(self: *@This()) core.HResult!void {
        const _c = self.vtable.StepForwardOneFrame(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StepBackwardOneFrame(self: *@This()) core.HResult!void {
        const _c = self.vtable.StepBackwardOneFrame(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAsCastingSource(self: *@This()) core.HResult!*CastingSource {
        var _r: *CastingSource = undefined;
        const _c = self.vtable.GetAsCastingSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee0660da-031b-4feb-bd9b-92e0a0a8d299";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_IsMutedChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsMutedChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_AudioBalance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_AudioBalance: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RealTimePlayback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RealTimePlayback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StereoscopicVideoRenderMode: *const fn(self: *anyopaque, _r: *StereoscopicVideoRenderMode) callconv(.winapi) HRESULT,
        put_StereoscopicVideoRenderMode: *const fn(self: *anyopaque, value: StereoscopicVideoRenderMode) callconv(.winapi) HRESULT,
        get_BreakManager: *const fn(self: *anyopaque, _r: **MediaBreakManager) callconv(.winapi) HRESULT,
        get_CommandManager: *const fn(self: *anyopaque, _r: **MediaPlaybackCommandManager) callconv(.winapi) HRESULT,
        get_AudioDevice: *const fn(self: *anyopaque, _r: **DeviceInformation) callconv(.winapi) HRESULT,
        put_AudioDevice: *const fn(self: *anyopaque, value: *DeviceInformation) callconv(.winapi) HRESULT,
        get_TimelineController: *const fn(self: *anyopaque, _r: **MediaTimelineController) callconv(.winapi) HRESULT,
        put_TimelineController: *const fn(self: *anyopaque, value: *MediaTimelineController) callconv(.winapi) HRESULT,
        get_TimelineControllerPositionOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TimelineControllerPositionOffset: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_PlaybackSession: *const fn(self: *anyopaque, _r: **MediaPlaybackSession) callconv(.winapi) HRESULT,
        StepForwardOneFrame: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StepBackwardOneFrame: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetAsCastingSource: *const fn(self: *anyopaque, _r: **CastingSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer4 = extern struct {
    vtable: *const VTable,
    pub fn SetSurfaceSize(self: *@This(), size: Size) core.HResult!void {
        const _c = self.vtable.SetSurfaceSize(@ptrCast(self), size);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSurface(self: *@This(), compositor: *Compositor) core.HResult!*MediaPlayerSurface {
        var _r: *MediaPlayerSurface = undefined;
        const _c = self.vtable.GetSurface(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80035db0-7448-4770-afcf-2a57450914c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSurfaceSize: *const fn(self: *anyopaque, size: Size) callconv(.winapi) HRESULT,
        GetSurface: *const fn(self: *anyopaque, compositor: *Compositor, _r: **MediaPlayerSurface) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer5 = extern struct {
    vtable: *const VTable,
    pub fn addVideoFrameAvailable(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoFrameAvailable(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoFrameAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoFrameAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVideoFrameServerEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVideoFrameServerEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVideoFrameServerEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVideoFrameServerEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyFrameToVideoSurface(self: *@This(), destination: *IDirect3DSurface) core.HResult!void {
        const _c = self.vtable.CopyFrameToVideoSurface(@ptrCast(self), destination);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyFrameToVideoSurface(self: *@This(), destination: *IDirect3DSurface, targetRectangle: Rect) core.HResult!void {
        const _c = self.vtable.CopyFrameToVideoSurface(@ptrCast(self), destination, targetRectangle);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CopyFrameToStereoscopicVideoSurfaces(self: *@This(), destinationLeftEye: *IDirect3DSurface, destinationRightEye: *IDirect3DSurface) core.HResult!void {
        const _c = self.vtable.CopyFrameToStereoscopicVideoSurfaces(@ptrCast(self), destinationLeftEye, destinationRightEye);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfe537fd-f86a-4446-bf4d-c8e792b7b4b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_VideoFrameAvailable: *const fn(self: *anyopaque, value: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoFrameAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsVideoFrameServerEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsVideoFrameServerEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        CopyFrameToVideoSurface: *const fn(self: *anyopaque, destination: *IDirect3DSurface) callconv(.winapi) HRESULT,
        CopyFrameToVideoSurface: *const fn(self: *anyopaque, destination: *IDirect3DSurface, targetRectangle: Rect) callconv(.winapi) HRESULT,
        CopyFrameToStereoscopicVideoSurfaces: *const fn(self: *anyopaque, destinationLeftEye: *IDirect3DSurface, destinationRightEye: *IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer6 = extern struct {
    vtable: *const VTable,
    pub fn addSubtitleFrameChanged(self: *@This(), handler: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SubtitleFrameChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSubtitleFrameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SubtitleFrameChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RenderSubtitlesToSurface(self: *@This(), destination: *IDirect3DSurface) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.RenderSubtitlesToSurface(@ptrCast(self), destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderSubtitlesToSurface(self: *@This(), destination: *IDirect3DSurface, targetRectangle: Rect) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.RenderSubtitlesToSurface(@ptrCast(self), destination, targetRectangle, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0caa086-ae65-414c-b010-8bc55f00e692";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SubtitleFrameChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaPlayer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SubtitleFrameChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        RenderSubtitlesToSurface: *const fn(self: *anyopaque, destination: *IDirect3DSurface, _r: *bool) callconv(.winapi) HRESULT,
        RenderSubtitlesToSurface: *const fn(self: *anyopaque, destination: *IDirect3DSurface, targetRectangle: Rect, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayer7 = extern struct {
    vtable: *const VTable,
    pub fn getAudioStateMonitor(self: *@This()) core.HResult!*AudioStateMonitor {
        var _r: *AudioStateMonitor = undefined;
        const _c = self.vtable.get_AudioStateMonitor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayer7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d1dc478-4500-4531-b3f4-777a71491f7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioStateMonitor: *const fn(self: *anyopaque, _r: **AudioStateMonitor) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c75a9405-c801-412a-835b-83fc0e622a8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerEffects = extern struct {
    vtable: *const VTable,
    pub fn AddAudioEffect(self: *@This(), activatableClassId: HSTRING, effectOptional: bool, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.AddAudioEffect(@ptrCast(self), activatableClassId, effectOptional, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAllEffects(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAllEffects(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerEffects";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85a1deda-cab6-4cc0-8be3-6035f4de2591";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAudioEffect: *const fn(self: *anyopaque, activatableClassId: HSTRING, effectOptional: bool, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RemoveAllEffects: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerEffects2 = extern struct {
    vtable: *const VTable,
    pub fn AddVideoEffect(self: *@This(), activatableClassId: HSTRING, effectOptional: bool, effectConfiguration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.AddVideoEffect(@ptrCast(self), activatableClassId, effectOptional, effectConfiguration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerEffects2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa419a79-1bbe-46c5-ae1f-8ee69fb3c2c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddVideoEffect: *const fn(self: *anyopaque, activatableClassId: HSTRING, effectOptional: bool, effectConfiguration: *IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!MediaPlayerError {
        var _r: MediaPlayerError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ErrorMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2744e9b9-a7e3-4f16-bac4-7914ebc08301";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *MediaPlayerError) callconv(.winapi) HRESULT,
        get_ExtendedErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_ErrorMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerRateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NewRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerRateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40600d58-3b61-4bb2-989f-fc65608b6cab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerSource = extern struct {
    vtable: *const VTable,
    pub fn getProtectionManager(self: *@This()) core.HResult!*MediaProtectionManager {
        var _r: *MediaProtectionManager = undefined;
        const _c = self.vtable.get_ProtectionManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProtectionManager(self: *@This(), value: *MediaProtectionManager) core.HResult!void {
        const _c = self.vtable.put_ProtectionManager(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFileSource(self: *@This(), file: *IStorageFile) core.HResult!void {
        const _c = self.vtable.SetFileSource(@ptrCast(self), file);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStreamSource(self: *@This(), stream: *IRandomAccessStream) core.HResult!void {
        const _c = self.vtable.SetStreamSource(@ptrCast(self), stream);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMediaSource(self: *@This(), source: *IMediaSource) core.HResult!void {
        const _c = self.vtable.SetMediaSource(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd4f8897-1423-4c3e-82c5-0fb1af94f715";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProtectionManager: *const fn(self: *anyopaque, _r: **MediaProtectionManager) callconv(.winapi) HRESULT,
        put_ProtectionManager: *const fn(self: *anyopaque, value: *MediaProtectionManager) callconv(.winapi) HRESULT,
        SetFileSource: *const fn(self: *anyopaque, file: *IStorageFile) callconv(.winapi) HRESULT,
        SetStreamSource: *const fn(self: *anyopaque, stream: *IRandomAccessStream) callconv(.winapi) HRESULT,
        SetMediaSource: *const fn(self: *anyopaque, source: *IMediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerSource2 = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*IMediaPlaybackSource {
        var _r: *IMediaPlaybackSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *IMediaPlaybackSource) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82449b9f-7322-4c0b-b03b-3e69a48260c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **IMediaPlaybackSource) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *IMediaPlaybackSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerSurface = extern struct {
    vtable: *const VTable,
    pub fn getCompositionSurface(self: *@This()) core.HResult!*ICompositionSurface {
        var _r: *ICompositionSurface = undefined;
        const _c = self.vtable.get_CompositionSurface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        var _r: *Compositor = undefined;
        const _c = self.vtable.get_Compositor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        var _r: *MediaPlayer = undefined;
        const _c = self.vtable.get_MediaPlayer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IMediaPlayerSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ed653bc-b736-49c3-830b-764a3845313a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositionSurface: *const fn(self: *anyopaque, _r: **ICompositionSurface) callconv(.winapi) HRESULT,
        get_Compositor: *const fn(self: *anyopaque, _r: **Compositor) callconv(.winapi) HRESULT,
        get_MediaPlayer: *const fn(self: *anyopaque, _r: **MediaPlayer) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackMediaMarker = extern struct {
    vtable: *const VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Time(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaMarkerType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaMarkerType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IPlaybackMediaMarker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4d22f5c-3c1c-4444-b6b9-778b0422d41a";
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
        get_MediaMarkerType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackMediaMarkerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromTime(self: *@This(), value: TimeSpan) core.HResult!*PlaybackMediaMarker {
        var _r: *PlaybackMediaMarker = undefined;
        const _c = self.vtable.CreateFromTime(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Create(self: *@This(), value: TimeSpan, mediaMarketType: HSTRING, text: HSTRING) core.HResult!*PlaybackMediaMarker {
        var _r: *PlaybackMediaMarker = undefined;
        const _c = self.vtable.Create(@ptrCast(self), value, mediaMarketType, text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IPlaybackMediaMarkerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c530a78-e0ae-4e1a-a8c8-e23f982a937b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromTime: *const fn(self: *anyopaque, value: TimeSpan, _r: **PlaybackMediaMarker) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, value: TimeSpan, mediaMarketType: HSTRING, text: HSTRING, _r: **PlaybackMediaMarker) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackMediaMarkerReachedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackMediaMarker(self: *@This()) core.HResult!*PlaybackMediaMarker {
        var _r: *PlaybackMediaMarker = undefined;
        const _c = self.vtable.get_PlaybackMediaMarker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IPlaybackMediaMarkerReachedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "578cd1b9-90e2-4e60-abc4-8740b01f6196";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackMediaMarker: *const fn(self: *anyopaque, _r: **PlaybackMediaMarker) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackMediaMarkerSequence = extern struct {
    vtable: *const VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Insert(self: *@This(), value: *PlaybackMediaMarker) core.HResult!void {
        const _c = self.vtable.Insert(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const _c = self.vtable.Clear(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.IPlaybackMediaMarkerSequence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2810cee-638b-46cf-8817-1d111fe9d8c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        Insert: *const fn(self: *anyopaque, value: *PlaybackMediaMarker) callconv(.winapi) HRESULT,
        Clear: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataPresentationModeChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTrack(self: *@This()) core.HResult!*TimedMetadataTrack {
        var _r: *TimedMetadataTrack = undefined;
        const _c = self.vtable.get_Track(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldPresentationMode(self: *@This()) core.HResult!TimedMetadataTrackPresentationMode {
        var _r: TimedMetadataTrackPresentationMode = undefined;
        const _c = self.vtable.get_OldPresentationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewPresentationMode(self: *@This()) core.HResult!TimedMetadataTrackPresentationMode {
        var _r: TimedMetadataTrackPresentationMode = undefined;
        const _c = self.vtable.get_NewPresentationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.ITimedMetadataPresentationModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1636099-65df-45ae-8cef-dc0b53fdc2bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Track: *const fn(self: *anyopaque, _r: **TimedMetadataTrack) callconv(.winapi) HRESULT,
        get_OldPresentationMode: *const fn(self: *anyopaque, _r: *TimedMetadataTrackPresentationMode) callconv(.winapi) HRESULT,
        get_NewPresentationMode: *const fn(self: *anyopaque, _r: *TimedMetadataTrackPresentationMode) callconv(.winapi) HRESULT,
    };
};
pub const MediaBreak = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlaybackList(self: *@This()) core.HResult!*MediaPlaybackList {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.getPlaybackList();
    }
    pub fn getPresentationPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.getPresentationPosition();
    }
    pub fn getInsertionMethod(self: *@This()) core.HResult!MediaBreakInsertionMethod {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.getInsertionMethod();
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.getCustomProperties();
    }
    pub fn getCanStart(self: *@This()) core.HResult!bool {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.getCanStart();
    }
    pub fn putCanStart(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaBreak = @ptrCast(self);
        return try this.putCanStart(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(insertionMethod: MediaBreakInsertionMethod) core.HResult!*MediaBreak {
        const factory = @This().IMediaBreakFactoryCache.get();
        return try factory.Create(insertionMethod);
    }
    pub fn CreateWithPresentationPosition(insertionMethod: MediaBreakInsertionMethod, presentationPosition: TimeSpan) core.HResult!*MediaBreak {
        const factory = @This().IMediaBreakFactoryCache.get();
        return try factory.CreateWithPresentationPosition(insertionMethod, presentationPosition);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreak";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreak.GUID;
    pub const IID: Guid = IMediaBreak.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreak.SIGNATURE);
    var _IMediaBreakFactoryCache: FactoryCache(IMediaBreakFactory, RUNTIME_NAME) = .{};
};
pub const MediaBreakEndedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakEndedEventArgs = @ptrCast(self);
        return try this.getMediaBreak();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakEndedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakEndedEventArgs.GUID;
    pub const IID: Guid = IMediaBreakEndedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakEndedEventArgs.SIGNATURE);
};
pub const MediaBreakInsertionMethod = enum(i32) {
    Interrupt = 0,
    Replace = 1,
};
pub const MediaBreakManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addBreaksSeekedOver(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakSeekedOverEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.addBreaksSeekedOver(handler);
    }
    pub fn removeBreaksSeekedOver(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.removeBreaksSeekedOver(token);
    }
    pub fn addBreakStarted(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakStartedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.addBreakStarted(handler);
    }
    pub fn removeBreakStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.removeBreakStarted(token);
    }
    pub fn addBreakEnded(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakEndedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.addBreakEnded(handler);
    }
    pub fn removeBreakEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.removeBreakEnded(token);
    }
    pub fn addBreakSkipped(self: *@This(), handler: *TypedEventHandler(MediaBreakManager,MediaBreakSkippedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.addBreakSkipped(handler);
    }
    pub fn removeBreakSkipped(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.removeBreakSkipped(token);
    }
    pub fn getCurrentBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.getCurrentBreak();
    }
    pub fn getPlaybackSession(self: *@This()) core.HResult!*MediaPlaybackSession {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.getPlaybackSession();
    }
    pub fn PlayBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.PlayBreak(value);
    }
    pub fn SkipCurrentBreak(self: *@This()) core.HResult!void {
        const this: *IMediaBreakManager = @ptrCast(self);
        return try this.SkipCurrentBreak();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakManager.GUID;
    pub const IID: Guid = IMediaBreakManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakManager.SIGNATURE);
};
pub const MediaBreakSchedule = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addScheduleChanged(self: *@This(), handler: *TypedEventHandler(MediaBreakSchedule,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.addScheduleChanged(handler);
    }
    pub fn removeScheduleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.removeScheduleChanged(token);
    }
    pub fn InsertMidrollBreak(self: *@This(), mediaBreak: *MediaBreak) core.HResult!void {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.InsertMidrollBreak(mediaBreak);
    }
    pub fn RemoveMidrollBreak(self: *@This(), mediaBreak: *MediaBreak) core.HResult!void {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.RemoveMidrollBreak(mediaBreak);
    }
    pub fn getMidrollBreaks(self: *@This()) core.HResult!*IVectorView(MediaBreak) {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.getMidrollBreaks();
    }
    pub fn putPrerollBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.putPrerollBreak(value);
    }
    pub fn getPrerollBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.getPrerollBreak();
    }
    pub fn putPostrollBreak(self: *@This(), value: *MediaBreak) core.HResult!void {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.putPostrollBreak(value);
    }
    pub fn getPostrollBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.getPostrollBreak();
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaBreakSchedule = @ptrCast(self);
        return try this.getPlaybackItem();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakSchedule";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakSchedule.GUID;
    pub const IID: Guid = IMediaBreakSchedule.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakSchedule.SIGNATURE);
};
pub const MediaBreakSeekedOverEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSeekedOverBreaks(self: *@This()) core.HResult!*IVectorView(MediaBreak) {
        const this: *IMediaBreakSeekedOverEventArgs = @ptrCast(self);
        return try this.getSeekedOverBreaks();
    }
    pub fn getOldPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaBreakSeekedOverEventArgs = @ptrCast(self);
        return try this.getOldPosition();
    }
    pub fn getNewPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaBreakSeekedOverEventArgs = @ptrCast(self);
        return try this.getNewPosition();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakSeekedOverEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakSeekedOverEventArgs.GUID;
    pub const IID: Guid = IMediaBreakSeekedOverEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakSeekedOverEventArgs.SIGNATURE);
};
pub const MediaBreakSkippedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakSkippedEventArgs = @ptrCast(self);
        return try this.getMediaBreak();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakSkippedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakSkippedEventArgs.GUID;
    pub const IID: Guid = IMediaBreakSkippedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakSkippedEventArgs.SIGNATURE);
};
pub const MediaBreakStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMediaBreak(self: *@This()) core.HResult!*MediaBreak {
        const this: *IMediaBreakStartedEventArgs = @ptrCast(self);
        return try this.getMediaBreak();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaBreakStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBreakStartedEventArgs.GUID;
    pub const IID: Guid = IMediaBreakStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBreakStartedEventArgs.SIGNATURE);
};
pub const MediaCommandEnablingRule = enum(i32) {
    Auto = 0,
    Always = 1,
    Never = 2,
};
pub const MediaItemDisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!MediaPlaybackType {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: MediaPlaybackType) core.HResult!void {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicDisplayProperties {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.getMusicProperties();
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoDisplayProperties {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.getVideoProperties();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn ClearAll(self: *@This()) core.HResult!void {
        const this: *IMediaItemDisplayProperties = @ptrCast(self);
        return try this.ClearAll();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaItemDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaItemDisplayProperties.GUID;
    pub const IID: Guid = IMediaItemDisplayProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaItemDisplayProperties.SIGNATURE);
};
pub const MediaPlaybackAudioTrackList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*AudioTrack {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *AudioTrack, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]AudioTrack) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(AudioTrack) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn addSelectedIndexChanged(self: *@This(), handler: *TypedEventHandler(ISingleSelectMediaTrackList,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSelectedIndexChanged(handler);
    }
    pub fn removeSelectedIndexChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSelectedIndexChanged(token);
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedIndex(value);
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedIndex();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackAudioTrackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const MediaPlaybackCommandManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getMediaPlayer();
    }
    pub fn getPlayBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getPlayBehavior();
    }
    pub fn getPauseBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getPauseBehavior();
    }
    pub fn getNextBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getNextBehavior();
    }
    pub fn getPreviousBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getPreviousBehavior();
    }
    pub fn getFastForwardBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getFastForwardBehavior();
    }
    pub fn getRewindBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getRewindBehavior();
    }
    pub fn getShuffleBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getShuffleBehavior();
    }
    pub fn getAutoRepeatModeBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getAutoRepeatModeBehavior();
    }
    pub fn getPositionBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getPositionBehavior();
    }
    pub fn getRateBehavior(self: *@This()) core.HResult!*MediaPlaybackCommandManagerCommandBehavior {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.getRateBehavior();
    }
    pub fn addPlayReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPlayReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addPlayReceived(handler);
    }
    pub fn removePlayReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removePlayReceived(token);
    }
    pub fn addPauseReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPauseReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addPauseReceived(handler);
    }
    pub fn removePauseReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removePauseReceived(token);
    }
    pub fn addNextReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerNextReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addNextReceived(handler);
    }
    pub fn removeNextReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeNextReceived(token);
    }
    pub fn addPreviousReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPreviousReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addPreviousReceived(handler);
    }
    pub fn removePreviousReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removePreviousReceived(token);
    }
    pub fn addFastForwardReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerFastForwardReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addFastForwardReceived(handler);
    }
    pub fn removeFastForwardReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeFastForwardReceived(token);
    }
    pub fn addRewindReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRewindReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addRewindReceived(handler);
    }
    pub fn removeRewindReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeRewindReceived(token);
    }
    pub fn addShuffleReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerShuffleReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addShuffleReceived(handler);
    }
    pub fn removeShuffleReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeShuffleReceived(token);
    }
    pub fn addAutoRepeatModeReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addAutoRepeatModeReceived(handler);
    }
    pub fn removeAutoRepeatModeReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeAutoRepeatModeReceived(token);
    }
    pub fn addPositionReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerPositionReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addPositionReceived(handler);
    }
    pub fn removePositionReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removePositionReceived(token);
    }
    pub fn addRateReceived(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManager,MediaPlaybackCommandManagerRateReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.addRateReceived(handler);
    }
    pub fn removeRateReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManager = @ptrCast(self);
        return try this.removeRateReceived(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManager.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManager.SIGNATURE);
};
pub const MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        const this: *IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = @ptrCast(self);
        return try this.getAutoRepeatMode();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerAutoRepeatModeReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerCommandBehavior = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommandManager(self: *@This()) core.HResult!*MediaPlaybackCommandManager {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.getCommandManager();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getEnablingRule(self: *@This()) core.HResult!MediaCommandEnablingRule {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.getEnablingRule();
    }
    pub fn putEnablingRule(self: *@This(), value: MediaCommandEnablingRule) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.putEnablingRule(value);
    }
    pub fn addIsEnabledChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackCommandManagerCommandBehavior,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.addIsEnabledChanged(handler);
    }
    pub fn removeIsEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerCommandBehavior = @ptrCast(self);
        return try this.removeIsEnabledChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerCommandBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerCommandBehavior.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerCommandBehavior.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerCommandBehavior.SIGNATURE);
};
pub const MediaPlaybackCommandManagerFastForwardReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerFastForwardReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerFastForwardReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerFastForwardReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerFastForwardReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerFastForwardReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerFastForwardReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerFastForwardReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerNextReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerNextReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerNextReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerNextReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerNextReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerNextReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerNextReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerNextReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerPauseReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerPauseReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerPauseReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerPauseReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerPauseReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerPauseReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerPauseReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerPauseReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerPlayReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerPlayReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerPlayReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerPlayReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerPlayReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerPlayReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerPlayReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerPlayReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerPositionReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerPositionReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerPositionReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaPlaybackCommandManagerPositionReceivedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerPositionReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerPositionReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerPositionReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerPositionReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerPositionReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerPreviousReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerPreviousReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerPreviousReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerPreviousReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerPreviousReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerPreviousReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerPreviousReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerPreviousReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerRateReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerRateReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerRateReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlaybackCommandManagerRateReceivedEventArgs = @ptrCast(self);
        return try this.getPlaybackRate();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerRateReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerRateReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerRateReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerRateReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerRateReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerRewindReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerRewindReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerRewindReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerRewindReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerRewindReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerRewindReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerRewindReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerRewindReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackCommandManagerShuffleReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerShuffleReceivedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackCommandManagerShuffleReceivedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getIsShuffleRequested(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackCommandManagerShuffleReceivedEventArgs = @ptrCast(self);
        return try this.getIsShuffleRequested();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaPlaybackCommandManagerShuffleReceivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackCommandManagerShuffleReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackCommandManagerShuffleReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackCommandManagerShuffleReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackCommandManagerShuffleReceivedEventArgs.SIGNATURE);
};
pub const MediaPlaybackItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAudioTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.addAudioTracksChanged(handler);
    }
    pub fn removeAudioTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.removeAudioTracksChanged(token);
    }
    pub fn addVideoTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.addVideoTracksChanged(handler);
    }
    pub fn removeVideoTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.removeVideoTracksChanged(token);
    }
    pub fn addTimedMetadataTracksChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackItem,IVectorChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.addTimedMetadataTracksChanged(handler);
    }
    pub fn removeTimedMetadataTracksChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.removeTimedMetadataTracksChanged(token);
    }
    pub fn getSource(self: *@This()) core.HResult!*MediaSource {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getAudioTracks(self: *@This()) core.HResult!*MediaPlaybackAudioTrackList {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.getAudioTracks();
    }
    pub fn getVideoTracks(self: *@This()) core.HResult!*MediaPlaybackVideoTrackList {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.getVideoTracks();
    }
    pub fn getTimedMetadataTracks(self: *@This()) core.HResult!*MediaPlaybackTimedMetadataTrackList {
        const this: *IMediaPlaybackItem = @ptrCast(self);
        return try this.getTimedMetadataTracks();
    }
    pub fn getBreakSchedule(self: *@This()) core.HResult!*MediaBreakSchedule {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBreakSchedule();
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn getDurationLimit(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDurationLimit();
    }
    pub fn getCanSkip(self: *@This()) core.HResult!bool {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSkip();
    }
    pub fn putCanSkip(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCanSkip(value);
    }
    pub fn GetDisplayProperties(self: *@This()) core.HResult!*MediaItemDisplayProperties {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDisplayProperties();
    }
    pub fn ApplyDisplayProperties(self: *@This(), value: *MediaItemDisplayProperties) core.HResult!void {
        var this: ?*IMediaPlaybackItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ApplyDisplayProperties(value);
    }
    pub fn getIsDisabledInPlaybackList(self: *@This()) core.HResult!bool {
        var this: ?*IMediaPlaybackItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDisabledInPlaybackList();
    }
    pub fn putIsDisabledInPlaybackList(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaPlaybackItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDisabledInPlaybackList(value);
    }
    pub fn getTotalDownloadProgress(self: *@This()) core.HResult!f64 {
        var this: ?*IMediaPlaybackItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTotalDownloadProgress();
    }
    pub fn getAutoLoadedDisplayProperties(self: *@This()) core.HResult!AutoLoadedDisplayPropertyKind {
        var this: ?*IMediaPlaybackItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoLoadedDisplayProperties();
    }
    pub fn putAutoLoadedDisplayProperties(self: *@This(), value: AutoLoadedDisplayPropertyKind) core.HResult!void {
        var this: ?*IMediaPlaybackItem3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackItem3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoLoadedDisplayProperties(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(source: *MediaSource) core.HResult!*MediaPlaybackItem {
        const factory = @This().IMediaPlaybackItemFactoryCache.get();
        return try factory.Create(source);
    }
    pub fn CreateWithStartTime(source: *MediaSource, startTime: TimeSpan) core.HResult!*MediaPlaybackItem {
        const factory = @This().IMediaPlaybackItemFactory2Cache.get();
        return try factory.CreateWithStartTime(source, startTime);
    }
    pub fn CreateWithStartTimeAndDurationLimit(source: *MediaSource, startTime: TimeSpan, durationLimit: TimeSpan) core.HResult!*MediaPlaybackItem {
        const factory = @This().IMediaPlaybackItemFactory2Cache.get();
        return try factory.CreateWithStartTimeAndDurationLimit(source, startTime, durationLimit);
    }
    pub fn FindFromMediaSource(source: *MediaSource) core.HResult!*MediaPlaybackItem {
        const factory = @This().IMediaPlaybackItemStaticsCache.get();
        return try factory.FindFromMediaSource(source);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackItem.GUID;
    pub const IID: Guid = IMediaPlaybackItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackItem.SIGNATURE);
    var _IMediaPlaybackItemFactoryCache: FactoryCache(IMediaPlaybackItemFactory, RUNTIME_NAME) = .{};
    var _IMediaPlaybackItemFactory2Cache: FactoryCache(IMediaPlaybackItemFactory2, RUNTIME_NAME) = .{};
    var _IMediaPlaybackItemStaticsCache: FactoryCache(IMediaPlaybackItemStatics, RUNTIME_NAME) = .{};
};
pub const MediaPlaybackItemChangedReason = enum(i32) {
    InitialItem = 0,
    EndOfStream = 1,
    Error = 2,
    AppRequested = 3,
};
pub const MediaPlaybackItemError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!MediaPlaybackItemErrorCode {
        const this: *IMediaPlaybackItemError = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMediaPlaybackItemError = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackItemError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackItemError.GUID;
    pub const IID: Guid = IMediaPlaybackItemError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackItemError.SIGNATURE);
};
pub const MediaPlaybackItemErrorCode = enum(i32) {
    None = 0,
    Aborted = 1,
    NetworkError = 2,
    DecodeError = 3,
    SourceNotSupportedError = 4,
    EncryptionError = 5,
};
pub const MediaPlaybackItemFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackItemFailedEventArgs = @ptrCast(self);
        return try this.getItem();
    }
    pub fn getError(self: *@This()) core.HResult!*MediaPlaybackItemError {
        const this: *IMediaPlaybackItemFailedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackItemFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackItemFailedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackItemFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackItemFailedEventArgs.SIGNATURE);
};
pub const MediaPlaybackItemOpenedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackItemOpenedEventArgs = @ptrCast(self);
        return try this.getItem();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackItemOpenedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackItemOpenedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackItemOpenedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackItemOpenedEventArgs.SIGNATURE);
};
pub const MediaPlaybackList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addItemFailed(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.addItemFailed(handler);
    }
    pub fn removeItemFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.removeItemFailed(token);
    }
    pub fn addCurrentItemChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,CurrentMediaPlaybackItemChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.addCurrentItemChanged(handler);
    }
    pub fn removeCurrentItemChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.removeCurrentItemChanged(token);
    }
    pub fn addItemOpened(self: *@This(), handler: *TypedEventHandler(MediaPlaybackList,MediaPlaybackItemOpenedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.addItemOpened(handler);
    }
    pub fn removeItemOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.removeItemOpened(token);
    }
    pub fn getItems(self: *@This()) core.HResult!*IObservableVector(MediaPlaybackItem) {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.getItems();
    }
    pub fn getAutoRepeatEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.getAutoRepeatEnabled();
    }
    pub fn putAutoRepeatEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.putAutoRepeatEnabled(value);
    }
    pub fn getShuffleEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.getShuffleEnabled();
    }
    pub fn putShuffleEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.putShuffleEnabled(value);
    }
    pub fn getCurrentItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.getCurrentItem();
    }
    pub fn getCurrentItemIndex(self: *@This()) core.HResult!u32 {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.getCurrentItemIndex();
    }
    pub fn MoveNext(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.MoveNext();
    }
    pub fn MovePrevious(self: *@This()) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.MovePrevious();
    }
    pub fn MoveTo(self: *@This(), itemIndex: u32) core.HResult!*MediaPlaybackItem {
        const this: *IMediaPlaybackList = @ptrCast(self);
        return try this.MoveTo(itemIndex);
    }
    pub fn getMaxPrefetchTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxPrefetchTime();
    }
    pub fn putMaxPrefetchTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxPrefetchTime(value);
    }
    pub fn getStartingItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartingItem();
    }
    pub fn putStartingItem(self: *@This(), value: *MediaPlaybackItem) core.HResult!void {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartingItem(value);
    }
    pub fn getShuffledItems(self: *@This()) core.HResult!*IVectorView(MediaPlaybackItem) {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShuffledItems();
    }
    pub fn SetShuffledItems(self: *@This(), value: *IIterable(MediaPlaybackItem)) core.HResult!void {
        var this: ?*IMediaPlaybackList2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetShuffledItems(value);
    }
    pub fn getMaxPlayedItemsToKeepOpen(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IMediaPlaybackList3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxPlayedItemsToKeepOpen();
    }
    pub fn putMaxPlayedItemsToKeepOpen(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*IMediaPlaybackList3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackList3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxPlayedItemsToKeepOpen(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaPlaybackList.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackList.GUID;
    pub const IID: Guid = IMediaPlaybackList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackList.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaPlaybackSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addPlaybackStateChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addPlaybackStateChanged(value);
    }
    pub fn removePlaybackStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removePlaybackStateChanged(token);
    }
    pub fn addPlaybackRateChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addPlaybackRateChanged(value);
    }
    pub fn removePlaybackRateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removePlaybackRateChanged(token);
    }
    pub fn addSeekCompleted(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addSeekCompleted(value);
    }
    pub fn removeSeekCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeSeekCompleted(token);
    }
    pub fn addBufferingStarted(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addBufferingStarted(value);
    }
    pub fn removeBufferingStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeBufferingStarted(token);
    }
    pub fn addBufferingEnded(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addBufferingEnded(value);
    }
    pub fn removeBufferingEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeBufferingEnded(token);
    }
    pub fn addBufferingProgressChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addBufferingProgressChanged(value);
    }
    pub fn removeBufferingProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeBufferingProgressChanged(token);
    }
    pub fn addDownloadProgressChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addDownloadProgressChanged(value);
    }
    pub fn removeDownloadProgressChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeDownloadProgressChanged(token);
    }
    pub fn addNaturalDurationChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addNaturalDurationChanged(value);
    }
    pub fn removeNaturalDurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeNaturalDurationChanged(token);
    }
    pub fn addPositionChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addPositionChanged(value);
    }
    pub fn removePositionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removePositionChanged(token);
    }
    pub fn addNaturalVideoSizeChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.addNaturalVideoSizeChanged(value);
    }
    pub fn removeNaturalVideoSizeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.removeNaturalVideoSizeChanged(token);
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getMediaPlayer();
    }
    pub fn getNaturalDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getNaturalDuration();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getPlaybackState(self: *@This()) core.HResult!MediaPlaybackState {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getPlaybackState();
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getCanSeek();
    }
    pub fn getCanPause(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getCanPause();
    }
    pub fn getIsProtected(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getIsProtected();
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getPlaybackRate();
    }
    pub fn putPlaybackRate(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.putPlaybackRate(value);
    }
    pub fn getBufferingProgress(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getBufferingProgress();
    }
    pub fn getDownloadProgress(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getDownloadProgress();
    }
    pub fn getNaturalVideoHeight(self: *@This()) core.HResult!u32 {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getNaturalVideoHeight();
    }
    pub fn getNaturalVideoWidth(self: *@This()) core.HResult!u32 {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getNaturalVideoWidth();
    }
    pub fn getNormalizedSourceRect(self: *@This()) core.HResult!Rect {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getNormalizedSourceRect();
    }
    pub fn putNormalizedSourceRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.putNormalizedSourceRect(value);
    }
    pub fn getStereoscopicVideoPackingMode(self: *@This()) core.HResult!StereoscopicVideoPackingMode {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.getStereoscopicVideoPackingMode();
    }
    pub fn putStereoscopicVideoPackingMode(self: *@This(), value: StereoscopicVideoPackingMode) core.HResult!void {
        const this: *IMediaPlaybackSession = @ptrCast(self);
        return try this.putStereoscopicVideoPackingMode(value);
    }
    pub fn addBufferedRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBufferedRangesChanged(value);
    }
    pub fn removeBufferedRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBufferedRangesChanged(token);
    }
    pub fn addPlayedRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPlayedRangesChanged(value);
    }
    pub fn removePlayedRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePlayedRangesChanged(token);
    }
    pub fn addSeekableRangesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSeekableRangesChanged(value);
    }
    pub fn removeSeekableRangesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSeekableRangesChanged(token);
    }
    pub fn addSupportedPlaybackRatesChanged(self: *@This(), value: *TypedEventHandler(MediaPlaybackSession,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSupportedPlaybackRatesChanged(value);
    }
    pub fn removeSupportedPlaybackRatesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSupportedPlaybackRatesChanged(token);
    }
    pub fn getSphericalVideoProjection(self: *@This()) core.HResult!*MediaPlaybackSphericalVideoProjection {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSphericalVideoProjection();
    }
    pub fn getIsMirroring(self: *@This()) core.HResult!bool {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMirroring();
    }
    pub fn putIsMirroring(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsMirroring(value);
    }
    pub fn GetBufferedRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBufferedRanges();
    }
    pub fn GetPlayedRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPlayedRanges();
    }
    pub fn GetSeekableRanges(self: *@This()) core.HResult!*IVectorView(MediaTimeRange) {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSeekableRanges();
    }
    pub fn IsSupportedPlaybackRateRange(self: *@This(), rate1: f64, rate2: f64) core.HResult!bool {
        var this: ?*IMediaPlaybackSession2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsSupportedPlaybackRateRange(rate1, rate2);
    }
    pub fn getPlaybackRotation(self: *@This()) core.HResult!MediaRotation {
        var this: ?*IMediaPlaybackSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackRotation();
    }
    pub fn putPlaybackRotation(self: *@This(), value: MediaRotation) core.HResult!void {
        var this: ?*IMediaPlaybackSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPlaybackRotation(value);
    }
    pub fn GetOutputDegradationPolicyState(self: *@This()) core.HResult!*MediaPlaybackSessionOutputDegradationPolicyState {
        var this: ?*IMediaPlaybackSession3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackSession3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOutputDegradationPolicyState();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackSession.GUID;
    pub const IID: Guid = IMediaPlaybackSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackSession.SIGNATURE);
};
pub const MediaPlaybackSessionBufferingStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPlaybackInterruption(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackSessionBufferingStartedEventArgs = @ptrCast(self);
        return try this.getIsPlaybackInterruption();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackSessionBufferingStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackSessionBufferingStartedEventArgs.GUID;
    pub const IID: Guid = IMediaPlaybackSessionBufferingStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackSessionBufferingStartedEventArgs.SIGNATURE);
};
pub const MediaPlaybackSessionOutputDegradationPolicyState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoConstrictionReason(self: *@This()) core.HResult!MediaPlaybackSessionVideoConstrictionReason {
        const this: *IMediaPlaybackSessionOutputDegradationPolicyState = @ptrCast(self);
        return try this.getVideoConstrictionReason();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackSessionOutputDegradationPolicyState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackSessionOutputDegradationPolicyState.GUID;
    pub const IID: Guid = IMediaPlaybackSessionOutputDegradationPolicyState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackSessionOutputDegradationPolicyState.SIGNATURE);
};
pub const MediaPlaybackSessionVideoConstrictionReason = enum(i32) {
    None = 0,
    VirtualMachine = 1,
    UnsupportedDisplayAdapter = 2,
    UnsignedDriver = 3,
    FrameServerEnabled = 4,
    OutputProtectionFailed = 5,
    Unknown = 6,
};
pub const MediaPlaybackSphericalVideoProjection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getFrameFormat(self: *@This()) core.HResult!SphericalVideoFrameFormat {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.getFrameFormat();
    }
    pub fn putFrameFormat(self: *@This(), value: SphericalVideoFrameFormat) core.HResult!void {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.putFrameFormat(value);
    }
    pub fn getHorizontalFieldOfViewInDegrees(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.getHorizontalFieldOfViewInDegrees();
    }
    pub fn putHorizontalFieldOfViewInDegrees(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.putHorizontalFieldOfViewInDegrees(value);
    }
    pub fn getViewOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.getViewOrientation();
    }
    pub fn putViewOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.putViewOrientation(value);
    }
    pub fn getProjectionMode(self: *@This()) core.HResult!SphericalVideoProjectionMode {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.getProjectionMode();
    }
    pub fn putProjectionMode(self: *@This(), value: SphericalVideoProjectionMode) core.HResult!void {
        const this: *IMediaPlaybackSphericalVideoProjection = @ptrCast(self);
        return try this.putProjectionMode(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackSphericalVideoProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlaybackSphericalVideoProjection.GUID;
    pub const IID: Guid = IMediaPlaybackSphericalVideoProjection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlaybackSphericalVideoProjection.SIGNATURE);
};
pub const MediaPlaybackState = enum(i32) {
    None = 0,
    Opening = 1,
    Buffering = 2,
    Playing = 3,
    Paused = 4,
};
pub const MediaPlaybackTimedMetadataTrackList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*TimedMetadataTrack {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *TimedMetadataTrack, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]TimedMetadataTrack) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(TimedMetadataTrack) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn addPresentationModeChanged(self: *@This(), handler: *TypedEventHandler(MediaPlaybackTimedMetadataTrackList,TimedMetadataPresentationModeChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlaybackTimedMetadataTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackTimedMetadataTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPresentationModeChanged(handler);
    }
    pub fn removePresentationModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlaybackTimedMetadataTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackTimedMetadataTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePresentationModeChanged(token);
    }
    pub fn GetPresentationMode(self: *@This(), index: u32) core.HResult!TimedMetadataTrackPresentationMode {
        var this: ?*IMediaPlaybackTimedMetadataTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackTimedMetadataTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPresentationMode(index);
    }
    pub fn SetPresentationMode(self: *@This(), index: u32, value: TimedMetadataTrackPresentationMode) core.HResult!void {
        var this: ?*IMediaPlaybackTimedMetadataTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlaybackTimedMetadataTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPresentationMode(index, value);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackTimedMetadataTrackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const MediaPlaybackVideoTrackList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*VideoTrack {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.getSize();
    }
    pub fn IndexOf(self: *@This(), value: *VideoTrack, index: u32) core.HResult!bool {
        const this: *IVectorView = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]VideoTrack) core.HResult!u32 {
        const this: *IVectorView = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(VideoTrack) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn addSelectedIndexChanged(self: *@This(), handler: *TypedEventHandler(ISingleSelectMediaTrackList,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSelectedIndexChanged(handler);
    }
    pub fn removeSelectedIndexChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSelectedIndexChanged(token);
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedIndex(value);
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        var this: ?*ISingleSelectMediaTrackList = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISingleSelectMediaTrackList.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedIndex();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlaybackVideoTrackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVectorView.GUID;
    pub const IID: Guid = IVectorView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVectorView.SIGNATURE);
};
pub const MediaPlayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutoPlay(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getAutoPlay();
    }
    pub fn putAutoPlay(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putAutoPlay(value);
    }
    pub fn getNaturalDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getNaturalDuration();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getBufferingProgress(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getBufferingProgress();
    }
    pub fn getCurrentState(self: *@This()) core.HResult!MediaPlayerState {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getCurrentState();
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getCanSeek();
    }
    pub fn getCanPause(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getCanPause();
    }
    pub fn getIsLoopingEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getIsLoopingEnabled();
    }
    pub fn putIsLoopingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putIsLoopingEnabled(value);
    }
    pub fn getIsProtected(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getIsProtected();
    }
    pub fn getIsMuted(self: *@This()) core.HResult!bool {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getIsMuted();
    }
    pub fn putIsMuted(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putIsMuted(value);
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getPlaybackRate();
    }
    pub fn putPlaybackRate(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putPlaybackRate(value);
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getVolume();
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.putVolume(value);
    }
    pub fn getPlaybackMediaMarkers(self: *@This()) core.HResult!*PlaybackMediaMarkerSequence {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.getPlaybackMediaMarkers();
    }
    pub fn addMediaOpened(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addMediaOpened(value);
    }
    pub fn removeMediaOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeMediaOpened(token);
    }
    pub fn addMediaEnded(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addMediaEnded(value);
    }
    pub fn removeMediaEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeMediaEnded(token);
    }
    pub fn addMediaFailed(self: *@This(), value: *TypedEventHandler(MediaPlayer,MediaPlayerFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addMediaFailed(value);
    }
    pub fn removeMediaFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeMediaFailed(token);
    }
    pub fn addCurrentStateChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addCurrentStateChanged(value);
    }
    pub fn removeCurrentStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeCurrentStateChanged(token);
    }
    pub fn addPlaybackMediaMarkerReached(self: *@This(), value: *TypedEventHandler(MediaPlayer,PlaybackMediaMarkerReachedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addPlaybackMediaMarkerReached(value);
    }
    pub fn removePlaybackMediaMarkerReached(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removePlaybackMediaMarkerReached(token);
    }
    pub fn addMediaPlayerRateChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,MediaPlayerRateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addMediaPlayerRateChanged(value);
    }
    pub fn removeMediaPlayerRateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeMediaPlayerRateChanged(token);
    }
    pub fn addVolumeChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addVolumeChanged(value);
    }
    pub fn removeVolumeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeVolumeChanged(token);
    }
    pub fn addSeekCompleted(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addSeekCompleted(value);
    }
    pub fn removeSeekCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeSeekCompleted(token);
    }
    pub fn addBufferingStarted(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addBufferingStarted(value);
    }
    pub fn removeBufferingStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeBufferingStarted(token);
    }
    pub fn addBufferingEnded(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.addBufferingEnded(value);
    }
    pub fn removeBufferingEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.removeBufferingEnded(token);
    }
    pub fn Play(self: *@This()) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.Play();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.Pause();
    }
    pub fn SetUriSource(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IMediaPlayer = @ptrCast(self);
        return try this.SetUriSource(value);
    }
    pub fn getProtectionManager(self: *@This()) core.HResult!*MediaProtectionManager {
        var this: ?*IMediaPlayerSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProtectionManager();
    }
    pub fn putProtectionManager(self: *@This(), value: *MediaProtectionManager) core.HResult!void {
        var this: ?*IMediaPlayerSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putProtectionManager(value);
    }
    pub fn SetFileSource(self: *@This(), file: *IStorageFile) core.HResult!void {
        var this: ?*IMediaPlayerSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFileSource(file);
    }
    pub fn SetStreamSource(self: *@This(), stream: *IRandomAccessStream) core.HResult!void {
        var this: ?*IMediaPlayerSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetStreamSource(stream);
    }
    pub fn SetMediaSource(self: *@This(), source: *IMediaSource) core.HResult!void {
        var this: ?*IMediaPlayerSource = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetMediaSource(source);
    }
    pub fn getSource(self: *@This()) core.HResult!*IMediaPlaybackSource {
        var this: ?*IMediaPlayerSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSource();
    }
    pub fn putSource(self: *@This(), value: *IMediaPlaybackSource) core.HResult!void {
        var this: ?*IMediaPlayerSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSource(value);
    }
    pub fn getSystemMediaTransportControls(self: *@This()) core.HResult!*SystemMediaTransportControls {
        var this: ?*IMediaPlayer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemMediaTransportControls();
    }
    pub fn getAudioCategory(self: *@This()) core.HResult!MediaPlayerAudioCategory {
        var this: ?*IMediaPlayer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioCategory();
    }
    pub fn putAudioCategory(self: *@This(), value: MediaPlayerAudioCategory) core.HResult!void {
        var this: ?*IMediaPlayer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioCategory(value);
    }
    pub fn getAudioDeviceType(self: *@This()) core.HResult!MediaPlayerAudioDeviceType {
        var this: ?*IMediaPlayer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioDeviceType();
    }
    pub fn putAudioDeviceType(self: *@This(), value: MediaPlayerAudioDeviceType) core.HResult!void {
        var this: ?*IMediaPlayer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioDeviceType(value);
    }
    pub fn AddAudioEffect(self: *@This(), activatableClassId: HSTRING, effectOptional: bool, configuration: *IPropertySet) core.HResult!void {
        var this: ?*IMediaPlayerEffects = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerEffects.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddAudioEffect(activatableClassId, effectOptional, configuration);
    }
    pub fn RemoveAllEffects(self: *@This()) core.HResult!void {
        var this: ?*IMediaPlayerEffects = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerEffects.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAllEffects();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn addIsMutedChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addIsMutedChanged(value);
    }
    pub fn removeIsMutedChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeIsMutedChanged(token);
    }
    pub fn addSourceChanged(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSourceChanged(value);
    }
    pub fn removeSourceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSourceChanged(token);
    }
    pub fn getAudioBalance(self: *@This()) core.HResult!f64 {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioBalance();
    }
    pub fn putAudioBalance(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioBalance(value);
    }
    pub fn getRealTimePlayback(self: *@This()) core.HResult!bool {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRealTimePlayback();
    }
    pub fn putRealTimePlayback(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRealTimePlayback(value);
    }
    pub fn getStereoscopicVideoRenderMode(self: *@This()) core.HResult!StereoscopicVideoRenderMode {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStereoscopicVideoRenderMode();
    }
    pub fn putStereoscopicVideoRenderMode(self: *@This(), value: StereoscopicVideoRenderMode) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStereoscopicVideoRenderMode(value);
    }
    pub fn getBreakManager(self: *@This()) core.HResult!*MediaBreakManager {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBreakManager();
    }
    pub fn getCommandManager(self: *@This()) core.HResult!*MediaPlaybackCommandManager {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCommandManager();
    }
    pub fn getAudioDevice(self: *@This()) core.HResult!*DeviceInformation {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioDevice();
    }
    pub fn putAudioDevice(self: *@This(), value: *DeviceInformation) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioDevice(value);
    }
    pub fn getTimelineController(self: *@This()) core.HResult!*MediaTimelineController {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimelineController();
    }
    pub fn putTimelineController(self: *@This(), value: *MediaTimelineController) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTimelineController(value);
    }
    pub fn getTimelineControllerPositionOffset(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTimelineControllerPositionOffset();
    }
    pub fn putTimelineControllerPositionOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTimelineControllerPositionOffset(value);
    }
    pub fn getPlaybackSession(self: *@This()) core.HResult!*MediaPlaybackSession {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackSession();
    }
    pub fn StepForwardOneFrame(self: *@This()) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StepForwardOneFrame();
    }
    pub fn StepBackwardOneFrame(self: *@This()) core.HResult!void {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StepBackwardOneFrame();
    }
    pub fn GetAsCastingSource(self: *@This()) core.HResult!*CastingSource {
        var this: ?*IMediaPlayer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAsCastingSource();
    }
    pub fn SetSurfaceSize(self: *@This(), size: Size) core.HResult!void {
        var this: ?*IMediaPlayer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSurfaceSize(size);
    }
    pub fn GetSurface(self: *@This(), compositor: *Compositor) core.HResult!*MediaPlayerSurface {
        var this: ?*IMediaPlayer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSurface(compositor);
    }
    pub fn AddVideoEffect(self: *@This(), activatableClassId: HSTRING, effectOptional: bool, effectConfiguration: *IPropertySet) core.HResult!void {
        var this: ?*IMediaPlayerEffects2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayerEffects2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddVideoEffect(activatableClassId, effectOptional, effectConfiguration);
    }
    pub fn addVideoFrameAvailable(self: *@This(), value: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVideoFrameAvailable(value);
    }
    pub fn removeVideoFrameAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVideoFrameAvailable(token);
    }
    pub fn getIsVideoFrameServerEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVideoFrameServerEnabled();
    }
    pub fn putIsVideoFrameServerEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsVideoFrameServerEnabled(value);
    }
    pub fn CopyFrameToVideoSurface(self: *@This(), destination: *IDirect3DSurface) core.HResult!void {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyFrameToVideoSurface(destination);
    }
    pub fn CopyFrameToVideoSurface(self: *@This(), destination: *IDirect3DSurface, targetRectangle: Rect) core.HResult!void {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyFrameToVideoSurface(destination, targetRectangle);
    }
    pub fn CopyFrameToStereoscopicVideoSurfaces(self: *@This(), destinationLeftEye: *IDirect3DSurface, destinationRightEye: *IDirect3DSurface) core.HResult!void {
        var this: ?*IMediaPlayer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyFrameToStereoscopicVideoSurfaces(destinationLeftEye, destinationRightEye);
    }
    pub fn addSubtitleFrameChanged(self: *@This(), handler: *TypedEventHandler(MediaPlayer,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaPlayer6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSubtitleFrameChanged(handler);
    }
    pub fn removeSubtitleFrameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaPlayer6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSubtitleFrameChanged(token);
    }
    pub fn RenderSubtitlesToSurface(self: *@This(), destination: *IDirect3DSurface) core.HResult!bool {
        var this: ?*IMediaPlayer6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenderSubtitlesToSurface(destination);
    }
    pub fn RenderSubtitlesToSurface(self: *@This(), destination: *IDirect3DSurface, targetRectangle: Rect) core.HResult!bool {
        var this: ?*IMediaPlayer6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RenderSubtitlesToSurface(destination, targetRectangle);
    }
    pub fn getAudioStateMonitor(self: *@This()) core.HResult!*AudioStateMonitor {
        var this: ?*IMediaPlayer7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaPlayer7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioStateMonitor();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaPlayer.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayer.GUID;
    pub const IID: Guid = IMediaPlayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaPlayerAudioCategory = enum(i32) {
    Other = 0,
    Communications = 3,
    Alerts = 4,
    SoundEffects = 5,
    GameEffects = 6,
    GameMedia = 7,
    GameChat = 8,
    Speech = 9,
    Movie = 10,
    Media = 11,
};
pub const MediaPlayerAudioDeviceType = enum(i32) {
    Console = 0,
    Multimedia = 1,
    Communications = 2,
};
pub const MediaPlayerDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*ValueSet {
        const this: *IMediaPlayerDataReceivedEventArgs = @ptrCast(self);
        return try this.getData();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlayerDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayerDataReceivedEventArgs.GUID;
    pub const IID: Guid = IMediaPlayerDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayerDataReceivedEventArgs.SIGNATURE);
};
pub const MediaPlayerError = enum(i32) {
    Unknown = 0,
    Aborted = 1,
    NetworkError = 2,
    DecodingError = 3,
    SourceNotSupported = 4,
};
pub const MediaPlayerFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!MediaPlayerError {
        const this: *IMediaPlayerFailedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IMediaPlayerFailedEventArgs = @ptrCast(self);
        return try this.getExtendedErrorCode();
    }
    pub fn getErrorMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaPlayerFailedEventArgs = @ptrCast(self);
        return try this.getErrorMessage();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlayerFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayerFailedEventArgs.GUID;
    pub const IID: Guid = IMediaPlayerFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayerFailedEventArgs.SIGNATURE);
};
pub const MediaPlayerRateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaPlayerRateChangedEventArgs = @ptrCast(self);
        return try this.getNewRate();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlayerRateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayerRateChangedEventArgs.GUID;
    pub const IID: Guid = IMediaPlayerRateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayerRateChangedEventArgs.SIGNATURE);
};
pub const MediaPlayerState = enum(i32) {
    Closed = 0,
    Opening = 1,
    Buffering = 2,
    Playing = 3,
    Paused = 4,
    Stopped = 5,
};
pub const MediaPlayerSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompositionSurface(self: *@This()) core.HResult!*ICompositionSurface {
        const this: *IMediaPlayerSurface = @ptrCast(self);
        return try this.getCompositionSurface();
    }
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        const this: *IMediaPlayerSurface = @ptrCast(self);
        return try this.getCompositor();
    }
    pub fn getMediaPlayer(self: *@This()) core.HResult!*MediaPlayer {
        const this: *IMediaPlayerSurface = @ptrCast(self);
        return try this.getMediaPlayer();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.MediaPlayerSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayerSurface.GUID;
    pub const IID: Guid = IMediaPlayerSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayerSurface.SIGNATURE);
};
pub const PlaybackMediaMarker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IPlaybackMediaMarker = @ptrCast(self);
        return try this.getTime();
    }
    pub fn getMediaMarkerType(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaybackMediaMarker = @ptrCast(self);
        return try this.getMediaMarkerType();
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IPlaybackMediaMarker = @ptrCast(self);
        return try this.getText();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromTime(value: TimeSpan) core.HResult!*PlaybackMediaMarker {
        const factory = @This().IPlaybackMediaMarkerFactoryCache.get();
        return try factory.CreateFromTime(value);
    }
    pub fn Create(value: TimeSpan, mediaMarketType: HSTRING, text: HSTRING) core.HResult!*PlaybackMediaMarker {
        const factory = @This().IPlaybackMediaMarkerFactoryCache.get();
        return try factory.Create(value, mediaMarketType, text);
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.PlaybackMediaMarker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackMediaMarker.GUID;
    pub const IID: Guid = IPlaybackMediaMarker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackMediaMarker.SIGNATURE);
    var _IPlaybackMediaMarkerFactoryCache: FactoryCache(IPlaybackMediaMarkerFactory, RUNTIME_NAME) = .{};
};
pub const PlaybackMediaMarkerReachedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlaybackMediaMarker(self: *@This()) core.HResult!*PlaybackMediaMarker {
        const this: *IPlaybackMediaMarkerReachedEventArgs = @ptrCast(self);
        return try this.getPlaybackMediaMarker();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.PlaybackMediaMarkerReachedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackMediaMarkerReachedEventArgs.GUID;
    pub const IID: Guid = IPlaybackMediaMarkerReachedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackMediaMarkerReachedEventArgs.SIGNATURE);
};
pub const PlaybackMediaMarkerSequence = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IPlaybackMediaMarkerSequence = @ptrCast(self);
        return try this.getSize();
    }
    pub fn Insert(self: *@This(), value: *PlaybackMediaMarker) core.HResult!void {
        const this: *IPlaybackMediaMarkerSequence = @ptrCast(self);
        return try this.Insert(value);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IPlaybackMediaMarkerSequence = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(PlaybackMediaMarker) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.PlaybackMediaMarkerSequence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackMediaMarkerSequence.GUID;
    pub const IID: Guid = IPlaybackMediaMarkerSequence.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackMediaMarkerSequence.SIGNATURE);
};
pub const SphericalVideoProjectionMode = enum(i32) {
    Spherical = 0,
    Flat = 1,
};
pub const StereoscopicVideoRenderMode = enum(i32) {
    Mono = 0,
    Stereo = 1,
};
pub const TimedMetadataPresentationModeChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrack(self: *@This()) core.HResult!*TimedMetadataTrack {
        const this: *ITimedMetadataPresentationModeChangedEventArgs = @ptrCast(self);
        return try this.getTrack();
    }
    pub fn getOldPresentationMode(self: *@This()) core.HResult!TimedMetadataTrackPresentationMode {
        const this: *ITimedMetadataPresentationModeChangedEventArgs = @ptrCast(self);
        return try this.getOldPresentationMode();
    }
    pub fn getNewPresentationMode(self: *@This()) core.HResult!TimedMetadataTrackPresentationMode {
        const this: *ITimedMetadataPresentationModeChangedEventArgs = @ptrCast(self);
        return try this.getNewPresentationMode();
    }
    pub const NAME: []const u8 = "Windows.Media.Playback.TimedMetadataPresentationModeChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedMetadataPresentationModeChangedEventArgs.GUID;
    pub const IID: Guid = ITimedMetadataPresentationModeChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedMetadataPresentationModeChangedEventArgs.SIGNATURE);
};
pub const TimedMetadataTrackPresentationMode = enum(i32) {
    Disabled = 0,
    Hidden = 1,
    ApplicationPresented = 2,
    PlatformPresented = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const RandomAccessStreamReference = @import("../Storage/Streams.zig").RandomAccessStreamReference;
const Deferral = @import("../Foundation.zig").Deferral;
const CastingSource = @import("./Casting.zig").CastingSource;
const Size = @import("../Foundation.zig").Size;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const StereoscopicVideoPackingMode = @import("./MediaProperties.zig").StereoscopicVideoPackingMode;
const VideoDisplayProperties = @import("../Media.zig").VideoDisplayProperties;
const IClosable = @import("../Foundation.zig").IClosable;
const MediaSource = @import("./Core.zig").MediaSource;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AudioStateMonitor = @import("./Audio.zig").AudioStateMonitor;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const SystemMediaTransportControls = @import("../Media.zig").SystemMediaTransportControls;
const Uri = @import("../Foundation.zig").Uri;
const IVectorChangedEventArgs = @import("../Foundation/Collections.zig").IVectorChangedEventArgs;
const HRESULT = @import("../root.zig").HRESULT;
const AudioTrack = @import("./Core.zig").AudioTrack;
const ICompositionSurface = @import("../UI/Composition.zig").ICompositionSurface;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const MediaPlaybackAutoRepeatMode = @import("../Media.zig").MediaPlaybackAutoRepeatMode;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const MusicDisplayProperties = @import("../Media.zig").MusicDisplayProperties;
const IReference = @import("../Foundation.zig").IReference;
const IDirect3DSurface = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const MediaRotation = @import("./MediaProperties.zig").MediaRotation;
const SphericalVideoFrameFormat = @import("./MediaProperties.zig").SphericalVideoFrameFormat;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const FactoryCache = @import("../core.zig").FactoryCache;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const MediaPlaybackType = @import("../Media.zig").MediaPlaybackType;
const HSTRING = @import("../root.zig").HSTRING;
const VideoTrack = @import("./Core.zig").VideoTrack;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const MediaProtectionManager = @import("./Protection.zig").MediaProtectionManager;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const HResult = @import("../Foundation.zig").HResult;
const EventHandler = @import("../Foundation.zig").EventHandler;
const MediaTimelineController = @import("../Media.zig").MediaTimelineController;
const core = @import("../root.zig").core;
const IObservableVector = @import("../Foundation/Collections.zig").IObservableVector;
const IMediaSource = @import("./Core.zig").IMediaSource;
const MediaTimeRange = @import("../Media.zig").MediaTimeRange;
const TimedMetadataTrack = @import("./Core.zig").TimedMetadataTrack;
const ISingleSelectMediaTrackList = @import("./Core.zig").ISingleSelectMediaTrackList;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const Compositor = @import("../UI/Composition.zig").Compositor;
