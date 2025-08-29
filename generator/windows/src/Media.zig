pub const IMediaControl = extern struct {
    vtable: *const VTable,
    pub fn addSoundLevelChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SoundLevelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSoundLevelChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SoundLevelChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlayPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlayPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlayPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlayPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPausePressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PausePressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePausePressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PausePressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StopPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StopPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlayPauseTogglePressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlayPauseTogglePressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlayPauseTogglePressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlayPauseTogglePressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRecordPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecordPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecordPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecordPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNextTrackPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NextTrackPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNextTrackPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NextTrackPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPreviousTrackPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreviousTrackPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviousTrackPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreviousTrackPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFastForwardPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FastForwardPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFastForwardPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FastForwardPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRewindPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RewindPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRewindPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RewindPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addChannelUpPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ChannelUpPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChannelUpPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ChannelUpPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addChannelDownPressed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ChannelDownPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChannelDownPressed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ChannelDownPressed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        var _r: SoundLevel = undefined;
        const _c = self.vtable.get_SoundLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrackName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TrackName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrackName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TrackName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putArtistName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ArtistName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getArtistName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ArtistName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPlaying(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPlaying(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPlaying(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlaying(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbumArt(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_AlbumArt(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlbumArt(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_AlbumArt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98f1fbe1-7a8d-42cb-b6fe-8fe698264f13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SoundLevelChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SoundLevelChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlayPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlayPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PausePressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PausePressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StopPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StopPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlayPauseTogglePressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlayPauseTogglePressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RecordPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecordPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NextTrackPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NextTrackPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PreviousTrackPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreviousTrackPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FastForwardPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FastForwardPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RewindPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RewindPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ChannelUpPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ChannelUpPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ChannelDownPressed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ChannelDownPressed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SoundLevel: *const fn(self: *anyopaque, _r: *SoundLevel) callconv(.winapi) HRESULT,
        put_TrackName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TrackName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ArtistName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ArtistName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IsPlaying: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPlaying: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlbumArt: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_AlbumArt: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const MediaControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addSoundLevelChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addSoundLevelChanged(handler);
    }
    pub fn removeSoundLevelChanged(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeSoundLevelChanged(cookie);
    }
    pub fn addPlayPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addPlayPressed(handler);
    }
    pub fn removePlayPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removePlayPressed(cookie);
    }
    pub fn addPausePressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addPausePressed(handler);
    }
    pub fn removePausePressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removePausePressed(cookie);
    }
    pub fn addStopPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addStopPressed(handler);
    }
    pub fn removeStopPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeStopPressed(cookie);
    }
    pub fn addPlayPauseTogglePressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addPlayPauseTogglePressed(handler);
    }
    pub fn removePlayPauseTogglePressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removePlayPauseTogglePressed(cookie);
    }
    pub fn addRecordPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addRecordPressed(handler);
    }
    pub fn removeRecordPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeRecordPressed(cookie);
    }
    pub fn addNextTrackPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addNextTrackPressed(handler);
    }
    pub fn removeNextTrackPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeNextTrackPressed(cookie);
    }
    pub fn addPreviousTrackPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addPreviousTrackPressed(handler);
    }
    pub fn removePreviousTrackPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removePreviousTrackPressed(cookie);
    }
    pub fn addFastForwardPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addFastForwardPressed(handler);
    }
    pub fn removeFastForwardPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeFastForwardPressed(cookie);
    }
    pub fn addRewindPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addRewindPressed(handler);
    }
    pub fn removeRewindPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeRewindPressed(cookie);
    }
    pub fn addChannelUpPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addChannelUpPressed(handler);
    }
    pub fn removeChannelUpPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeChannelUpPressed(cookie);
    }
    pub fn addChannelDownPressed(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IMediaControlCache.get();
        return try factory.addChannelDownPressed(handler);
    }
    pub fn removeChannelDownPressed(cookie: EventRegistrationToken) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.removeChannelDownPressed(cookie);
    }
    pub fn getSoundLevel() core.HResult!SoundLevel {
        const factory = @This().IMediaControlCache.get();
        return try factory.getSoundLevel();
    }
    pub fn putTrackName(value: HSTRING) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.putTrackName(value);
    }
    pub fn getTrackName() core.HResult!HSTRING {
        const factory = @This().IMediaControlCache.get();
        return try factory.getTrackName();
    }
    pub fn putArtistName(value: HSTRING) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.putArtistName(value);
    }
    pub fn getArtistName() core.HResult!HSTRING {
        const factory = @This().IMediaControlCache.get();
        return try factory.getArtistName();
    }
    pub fn putIsPlaying(value: bool) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.putIsPlaying(value);
    }
    pub fn getIsPlaying() core.HResult!bool {
        const factory = @This().IMediaControlCache.get();
        return try factory.getIsPlaying();
    }
    pub fn putAlbumArt(value: *Uri) core.HResult!void {
        const factory = @This().IMediaControlCache.get();
        return try factory.putAlbumArt(value);
    }
    pub fn getAlbumArt() core.HResult!*Uri {
        const factory = @This().IMediaControlCache.get();
        return try factory.getAlbumArt();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMediaControlCache: FactoryCache(IMediaControl, RUNTIME_NAME) = .{};
};
pub const AudioBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCapacity(self: *@This()) core.HResult!u32 {
        const this: *IAudioBuffer = @ptrCast(self);
        return try this.getCapacity();
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        const this: *IAudioBuffer = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const this: *IAudioBuffer = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn CreateReference(self: *@This()) core.HResult!*IMemoryBufferReference {
        var this: ?*IMemoryBuffer = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMemoryBuffer.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateReference();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.AudioBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioBuffer.GUID;
    pub const IID: Guid = IAudioBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioBuffer.SIGNATURE);
};
pub const AudioBufferAccessMode = enum(i32) {
    Read = 0,
    ReadWrite = 1,
    Write = 2,
};
pub const AudioFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn LockBuffer(self: *@This(), mode: AudioBufferAccessMode) core.HResult!*AudioBuffer {
        const this: *IAudioFrame = @ptrCast(self);
        return try this.LockBuffer(mode);
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub fn putRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRelativeTime(value);
    }
    pub fn getRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRelativeTime();
    }
    pub fn putSystemRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSystemRelativeTime(value);
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemRelativeTime();
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putIsDiscontinuous(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDiscontinuous(value);
    }
    pub fn getIsDiscontinuous(self: *@This()) core.HResult!bool {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDiscontinuous();
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedProperties();
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
    pub fn Create(capacity: u32) core.HResult!*AudioFrame {
        const factory = @This().IAudioFrameFactoryCache.get();
        return try factory.Create(capacity);
    }
    pub const NAME: []const u8 = "Windows.Media.AudioFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioFrame.GUID;
    pub const IID: Guid = IAudioFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioFrame.SIGNATURE);
    var _IAudioFrameFactoryCache: FactoryCache(IAudioFrameFactory, RUNTIME_NAME) = .{};
};
pub const AudioProcessing = enum(i32) {
    Default = 0,
    Raw = 1,
};
pub const AutoRepeatModeChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestedAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        const this: *IAutoRepeatModeChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRequestedAutoRepeatMode();
    }
    pub const NAME: []const u8 = "Windows.Media.AutoRepeatModeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutoRepeatModeChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IAutoRepeatModeChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutoRepeatModeChangeRequestedEventArgs.SIGNATURE);
};
pub const IAudioBuffer = extern struct {
    vtable: *const VTable,
    pub fn getCapacity(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Capacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IAudioBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35175827-724b-4c6a-b130-f6537f9ae0d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Capacity: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFrame = extern struct {
    vtable: *const VTable,
    pub fn LockBuffer(self: *@This(), mode: AudioBufferAccessMode) core.HResult!*AudioBuffer {
        var _r: *AudioBuffer = undefined;
        const _c = self.vtable.LockBuffer(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IAudioFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e36ac304-aab2-4277-9ed0-43cedf8e29c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LockBuffer: *const fn(self: *anyopaque, mode: AudioBufferAccessMode, _r: **AudioBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IAudioFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), capacity: u32) core.HResult!*AudioFrame {
        var _r: *AudioFrame = undefined;
        const _c = self.vtable.Create(@ptrCast(self), capacity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IAudioFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91a90ade-2422-40a6-b9ad-30d02404317d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, capacity: u32, _r: **AudioFrame) callconv(.winapi) HRESULT,
    };
};
pub const IAutoRepeatModeChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestedAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        var _r: MediaPlaybackAutoRepeatMode = undefined;
        const _c = self.vtable.get_RequestedAutoRepeatMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IAutoRepeatModeChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea137efa-d852-438e-882b-c990109a78f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedAutoRepeatMode: *const fn(self: *anyopaque, _r: *MediaPlaybackAutoRepeatMode) callconv(.winapi) HRESULT,
    };
};
pub const IImageDisplayProperties = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subtitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IImageDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd0bc7ef-54e7-411f-9933-f0e98b0a96d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subtitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaExtension = extern struct {
    vtable: *const VTable,
    pub fn SetProperties(self: *@This(), configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.SetProperties(@ptrCast(self), configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaExtension";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07915118-45df-442b-8a3f-f7826a6370ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetProperties: *const fn(self: *anyopaque, configuration: *IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaExtensionManager = extern struct {
    vtable: *const VTable,
    pub fn RegisterSchemeHandler(self: *@This(), activatableClassId: HSTRING, scheme: HSTRING) core.HResult!void {
        const _c = self.vtable.RegisterSchemeHandler(@ptrCast(self), activatableClassId, scheme);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterSchemeHandlerWithSchemeWithConfiguration(self: *@This(), activatableClassId: HSTRING, scheme: HSTRING, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterSchemeHandlerWithSchemeWithConfiguration(@ptrCast(self), activatableClassId, scheme, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterByteStreamHandler(self: *@This(), activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING) core.HResult!void {
        const _c = self.vtable.RegisterByteStreamHandler(@ptrCast(self), activatableClassId, fileExtension, mimeType);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterByteStreamHandlerWithFileExtensionWithMimeTypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterByteStreamHandlerWithFileExtensionWithMimeTypeWithConfiguration(@ptrCast(self), activatableClassId, fileExtension, mimeType, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterAudioDecoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const _c = self.vtable.RegisterAudioDecoder(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterAudioDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterAudioDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterAudioEncoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const _c = self.vtable.RegisterAudioEncoder(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterAudioEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterAudioEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterVideoDecoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const _c = self.vtable.RegisterVideoDecoder(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterVideoDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterVideoDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterVideoEncoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const _c = self.vtable.RegisterVideoEncoder(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RegisterVideoEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.RegisterVideoEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(@ptrCast(self), activatableClassId, inputSubtype, outputSubtype, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaExtensionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a25eaf5-242d-4dfb-97f4-69b7c42576ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterSchemeHandler: *const fn(self: *anyopaque, activatableClassId: HSTRING, scheme: HSTRING) callconv(.winapi) HRESULT,
        RegisterSchemeHandlerWithSchemeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, scheme: HSTRING, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RegisterByteStreamHandler: *const fn(self: *anyopaque, activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING) callconv(.winapi) HRESULT,
        RegisterByteStreamHandlerWithFileExtensionWithMimeTypeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RegisterAudioDecoder: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) callconv(.winapi) HRESULT,
        RegisterAudioDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RegisterAudioEncoder: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) callconv(.winapi) HRESULT,
        RegisterAudioEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RegisterVideoDecoder: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) callconv(.winapi) HRESULT,
        RegisterVideoDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        RegisterVideoEncoder: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) callconv(.winapi) HRESULT,
        RegisterVideoEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaExtensionManager2 = extern struct {
    vtable: *const VTable,
    pub fn RegisterMediaExtensionForAppService(self: *@This(), extension: *IMediaExtension, connection: *AppServiceConnection) core.HResult!void {
        const _c = self.vtable.RegisterMediaExtensionForAppService(@ptrCast(self), extension, connection);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaExtensionManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bcebf47-4043-4fed-acaf-54ec29dfb1f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RegisterMediaExtensionForAppService: *const fn(self: *anyopaque, extension: *IMediaExtension, connection: *AppServiceConnection) callconv(.winapi) HRESULT,
    };
};
pub const IMediaFrame = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_RelativeTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_RelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_SystemRelativeTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_SystemRelativeTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDiscontinuous(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDiscontinuous(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDiscontinuous(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDiscontinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bfb52f8c-5943-47d8-8e10-05308aa5fbd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RelativeTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_RelativeTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_SystemRelativeTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_SystemRelativeTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_IsDiscontinuous: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDiscontinuous: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaMarker = extern struct {
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
    pub const NAME: []const u8 = "Windows.Media.IMediaMarker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1803def8-dca5-4b6f-9c20-e3d3c0643625";
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
pub const IMediaMarkerTypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getBookmark(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Bookmark(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaMarkerTypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb198040-482f-4743-8832-45853821ece0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bookmark: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaMarkers = extern struct {
    vtable: *const VTable,
    pub fn getMarkers(self: *@This()) core.HResult!*IVectorView(IMediaMarker) {
        var _r: *IVectorView(IMediaMarker) = undefined;
        const _c = self.vtable.get_Markers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaMarkers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "afeab189-f8dd-466e-aa10-920b52353fdf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Markers: *const fn(self: *anyopaque, _r: **IVectorView(IMediaMarker)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaProcessingTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getArguments(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_Arguments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaProcessingTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb8564ac-a351-4f4e-b4f0-9bf2408993db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Arguments: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTimelineController = extern struct {
    vtable: *const VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getClockRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ClockRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClockRate(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ClockRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!MediaTimelineControllerState {
        var _r: MediaTimelineControllerState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPositionChanged(self: *@This(), positionChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PositionChanged(@ptrCast(self), positionChangedEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePositionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PositionChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStateChanged(self: *@This(), stateChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), stateChangedEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaTimelineController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ed361f3-0b78-4360-bf71-0c841999ea1b";
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
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ClockRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ClockRate: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *MediaTimelineControllerState) callconv(.winapi) HRESULT,
        add_PositionChanged: *const fn(self: *anyopaque, positionChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PositionChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, stateChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTimelineController2 = extern struct {
    vtable: *const VTable,
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
    pub fn addFailed(self: *@This(), eventHandler: *TypedEventHandler(MediaTimelineController,MediaTimelineControllerFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Failed(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Failed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnded(self: *@This(), eventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Ended(@ptrCast(self), eventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Ended(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaTimelineController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef74ea38-9e72-4df9-8355-6e90c81bbadd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_IsLoopingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLoopingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_Failed: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(MediaTimelineController,MediaTimelineControllerFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Failed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Ended: *const fn(self: *anyopaque, eventHandler: *TypedEventHandler(MediaTimelineController,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Ended: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTimelineControllerFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMediaTimelineControllerFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8821f81d-3e77-43fb-be26-4fc87a044834";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IMusicDisplayProperties = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumArtist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbumArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AlbumArtist(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Artist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Artist(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMusicDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bbf0c59-d0a0-4d26-92a0-f978e1d18e7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AlbumArtist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AlbumArtist: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Artist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Artist: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMusicDisplayProperties2 = extern struct {
    vtable: *const VTable,
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbumTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AlbumTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrackNumber(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_TrackNumber(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGenres(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Genres(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IMusicDisplayProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00368462-97d3-44b9-b00f-008afcefaf18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlbumTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AlbumTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TrackNumber: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TrackNumber: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Genres: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IMusicDisplayProperties3 = extern struct {
    vtable: *const VTable,
    pub fn getAlbumTrackCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AlbumTrackCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlbumTrackCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_AlbumTrackCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IMusicDisplayProperties3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4db51ac1-0681-4e8c-9401-b8159d9eefc7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlbumTrackCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_AlbumTrackCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackPositionChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestedPlaybackPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RequestedPlaybackPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IPlaybackPositionChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4493f88-eb28-4961-9c14-335e44f3e125";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedPlaybackPosition: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPlaybackRateChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestedPlaybackRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RequestedPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IPlaybackRateChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ce2c41f-3cd6-4f77-9ba7-eb27c26a2140";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedPlaybackRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IShuffleEnabledChangeRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequestedShuffleEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RequestedShuffleEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IShuffleEnabledChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "49b593fe-4fd0-4666-a314-c0e01940d302";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestedShuffleEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControls = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackStatus(self: *@This()) core.HResult!MediaPlaybackStatus {
        var _r: MediaPlaybackStatus = undefined;
        const _c = self.vtable.get_PlaybackStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaybackStatus(self: *@This(), value: MediaPlaybackStatus) core.HResult!void {
        const _c = self.vtable.put_PlaybackStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayUpdater(self: *@This()) core.HResult!*SystemMediaTransportControlsDisplayUpdater {
        var _r: *SystemMediaTransportControlsDisplayUpdater = undefined;
        const _c = self.vtable.get_DisplayUpdater(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        var _r: SoundLevel = undefined;
        const _c = self.vtable.get_SoundLevel(@ptrCast(self), &_r);
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
    pub fn getIsPlayEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlayEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPlayEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPlayEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStopEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStopEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStopEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStopEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPauseEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPauseEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPauseEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPauseEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRecordEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRecordEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRecordEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRecordEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFastForwardEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFastForwardEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsFastForwardEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsFastForwardEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRewindEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRewindEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsRewindEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsRewindEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPreviousEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPreviousEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPreviousEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPreviousEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsNextEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNextEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsNextEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsNextEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsChannelUpEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsChannelUpEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsChannelUpEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsChannelUpEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsChannelDownEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsChannelDownEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsChannelDownEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsChannelDownEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addButtonPressed(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsButtonPressedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ButtonPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ButtonPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPropertyChanged(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsPropertyChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PropertyChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePropertyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PropertyChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControls";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99fa3ff4-1742-42a6-902e-087d41f965ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackStatus: *const fn(self: *anyopaque, _r: *MediaPlaybackStatus) callconv(.winapi) HRESULT,
        put_PlaybackStatus: *const fn(self: *anyopaque, value: MediaPlaybackStatus) callconv(.winapi) HRESULT,
        get_DisplayUpdater: *const fn(self: *anyopaque, _r: **SystemMediaTransportControlsDisplayUpdater) callconv(.winapi) HRESULT,
        get_SoundLevel: *const fn(self: *anyopaque, _r: *SoundLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPlayEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPlayEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsStopEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStopEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPauseEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPauseEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRecordEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRecordEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsFastForwardEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsFastForwardEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsRewindEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsRewindEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsPreviousEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPreviousEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsNextEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsNextEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsChannelUpEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsChannelUpEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsChannelDownEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsChannelDownEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_ButtonPressed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsButtonPressedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ButtonPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PropertyChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsPropertyChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PropertyChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControls2 = extern struct {
    vtable: *const VTable,
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        var _r: MediaPlaybackAutoRepeatMode = undefined;
        const _c = self.vtable.get_AutoRepeatMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoRepeatMode(self: *@This(), value: MediaPlaybackAutoRepeatMode) core.HResult!void {
        const _c = self.vtable.put_AutoRepeatMode(@ptrCast(self), value);
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
    pub fn UpdateTimelineProperties(self: *@This(), timelineProperties: *SystemMediaTransportControlsTimelineProperties) core.HResult!void {
        const _c = self.vtable.UpdateTimelineProperties(@ptrCast(self), timelineProperties);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackPositionChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackPositionChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackPositionChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackPositionChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackPositionChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackRateChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackRateChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackRateChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackRateChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackRateChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addShuffleEnabledChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,ShuffleEnabledChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ShuffleEnabledChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShuffleEnabledChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ShuffleEnabledChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAutoRepeatModeChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,AutoRepeatModeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AutoRepeatModeChangeRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAutoRepeatModeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AutoRepeatModeChangeRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControls2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea98d2f6-7f3c-4af2-a586-72889808efb1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoRepeatMode: *const fn(self: *anyopaque, _r: *MediaPlaybackAutoRepeatMode) callconv(.winapi) HRESULT,
        put_AutoRepeatMode: *const fn(self: *anyopaque, value: MediaPlaybackAutoRepeatMode) callconv(.winapi) HRESULT,
        get_ShuffleEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShuffleEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_PlaybackRate: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        UpdateTimelineProperties: *const fn(self: *anyopaque, timelineProperties: *SystemMediaTransportControlsTimelineProperties) callconv(.winapi) HRESULT,
        add_PlaybackPositionChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackPositionChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackPositionChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackRateChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackRateChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackRateChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ShuffleEnabledChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,ShuffleEnabledChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ShuffleEnabledChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AutoRepeatModeChangeRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(SystemMediaTransportControls,AutoRepeatModeChangeRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AutoRepeatModeChangeRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControlsButtonPressedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getButton(self: *@This()) core.HResult!SystemMediaTransportControlsButton {
        var _r: SystemMediaTransportControlsButton = undefined;
        const _c = self.vtable.get_Button(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControlsButtonPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7f47116-a56f-4dc8-9e11-92031f4a87c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Button: *const fn(self: *anyopaque, _r: *SystemMediaTransportControlsButton) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControlsDisplayUpdater = extern struct {
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
    pub fn getAppMediaId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppMediaId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppMediaId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AppMediaId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getImageProperties(self: *@This()) core.HResult!*ImageDisplayProperties {
        var _r: *ImageDisplayProperties = undefined;
        const _c = self.vtable.get_ImageProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyFromFileAsync(self: *@This(), ty: MediaPlaybackType, source: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.CopyFromFileAsync(@ptrCast(self), ty, source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Update(self: *@This()) core.HResult!void {
        const _c = self.vtable.Update(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControlsDisplayUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8abbc53e-fa55-4ecf-ad8e-c984e5dd1550";
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
        get_AppMediaId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AppMediaId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **RandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *RandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_MusicProperties: *const fn(self: *anyopaque, _r: **MusicDisplayProperties) callconv(.winapi) HRESULT,
        get_VideoProperties: *const fn(self: *anyopaque, _r: **VideoDisplayProperties) callconv(.winapi) HRESULT,
        get_ImageProperties: *const fn(self: *anyopaque, _r: **ImageDisplayProperties) callconv(.winapi) HRESULT,
        CopyFromFileAsync: *const fn(self: *anyopaque, ty: MediaPlaybackType, source: *StorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ClearAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Update: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControlsPropertyChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getProperty(self: *@This()) core.HResult!SystemMediaTransportControlsProperty {
        var _r: SystemMediaTransportControlsProperty = undefined;
        const _c = self.vtable.get_Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControlsPropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0ca0936-339b-4cb3-8eeb-737607f56e08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Property: *const fn(self: *anyopaque, _r: *SystemMediaTransportControlsProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControlsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*SystemMediaTransportControls {
        var _r: *SystemMediaTransportControls = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControlsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43ba380a-eca4-4832-91ab-d415fae484c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **SystemMediaTransportControls) callconv(.winapi) HRESULT,
    };
};
pub const ISystemMediaTransportControlsTimelineProperties = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_EndTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinSeekTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinSeekTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinSeekTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_MinSeekTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSeekTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxSeekTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSeekTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_MaxSeekTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub const NAME: []const u8 = "Windows.Media.ISystemMediaTransportControlsTimelineProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5125316a-c3a2-475b-8507-93534dc88f15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_EndTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_EndTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_MinSeekTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_MinSeekTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_MaxSeekTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_MaxSeekTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IVideoDisplayProperties = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Subtitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5609fdb1-5d2d-4872-8170-45dee5bc2f5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Subtitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVideoDisplayProperties2 = extern struct {
    vtable: *const VTable,
    pub fn getGenres(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_Genres(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoDisplayProperties2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b410e1ce-ab52-41ab-a486-cc10fab152f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Genres: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IVideoEffectsStatics = extern struct {
    vtable: *const VTable,
    pub fn getVideoStabilization(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoStabilization(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoEffectsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1fcda5e8-baf1-4521-980c-3bcebb44cf38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoStabilization: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IVideoFrame = extern struct {
    vtable: *const VTable,
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.get_SoftwareBitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CopyToAsync(self: *@This(), frame: *VideoFrame) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CopyToAsync(@ptrCast(self), frame, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirect3DSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.get_Direct3DSurface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cc06625-90fc-4c92-bd95-7ded21819d1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SoftwareBitmap: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
        CopyToAsync: *const fn(self: *anyopaque, frame: *VideoFrame, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_Direct3DSurface: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IVideoFrame2 = extern struct {
    vtable: *const VTable,
    pub fn CopyToAsync(self: *@This(), frame: *VideoFrame, sourceBounds: *IReference(BitmapBounds), destinationBounds: *IReference(BitmapBounds)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CopyToAsync(@ptrCast(self), frame, sourceBounds, destinationBounds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3837840d-336c-4366-8d46-060798736c5d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CopyToAsync: *const fn(self: *anyopaque, frame: *VideoFrame, sourceBounds: *IReference(BitmapBounds), destinationBounds: *IReference(BitmapBounds), _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IVideoFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.Create(@ptrCast(self), format, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithAlpha(self: *@This(), format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.CreateWithAlpha(@ptrCast(self), format, width, height, alpha, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "014b6d69-2228-4c92-92ff-50c380d3e776";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, format: BitmapPixelFormat, width: i32, height: i32, _r: **VideoFrame) callconv(.winapi) HRESULT,
        CreateWithAlpha: *const fn(self: *anyopaque, format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const IVideoFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateAsDirect3D11SurfaceBacked(self: *@This(), format: DirectXPixelFormat, width: i32, height: i32) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.CreateAsDirect3D11SurfaceBacked(@ptrCast(self), format, width, height, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAsDirect3D11SurfaceBackedWithWidthWithHeightWithDevice(self: *@This(), format: DirectXPixelFormat, width: i32, height: i32, device: *IDirect3DDevice) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.CreateAsDirect3D11SurfaceBackedWithWidthWithHeightWithDevice(@ptrCast(self), format, width, height, device, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithSoftwareBitmap(self: *@This(), bitmap: *SoftwareBitmap) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.CreateWithSoftwareBitmap(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithDirect3D11Surface(self: *@This(), surface: *IDirect3DSurface) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.CreateWithDirect3D11Surface(@ptrCast(self), surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.IVideoFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab2a556f-6111-4b33-8ec3-2b209a02e17a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAsDirect3D11SurfaceBacked: *const fn(self: *anyopaque, format: DirectXPixelFormat, width: i32, height: i32, _r: **VideoFrame) callconv(.winapi) HRESULT,
        CreateAsDirect3D11SurfaceBackedWithWidthWithHeightWithDevice: *const fn(self: *anyopaque, format: DirectXPixelFormat, width: i32, height: i32, device: *IDirect3DDevice, _r: **VideoFrame) callconv(.winapi) HRESULT,
        CreateWithSoftwareBitmap: *const fn(self: *anyopaque, bitmap: *SoftwareBitmap, _r: **VideoFrame) callconv(.winapi) HRESULT,
        CreateWithDirect3D11Surface: *const fn(self: *anyopaque, surface: *IDirect3DSurface, _r: **VideoFrame) callconv(.winapi) HRESULT,
    };
};
pub const ImageDisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IImageDisplayProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IImageDisplayProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        const this: *IImageDisplayProperties = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IImageDisplayProperties = @ptrCast(self);
        return try this.putSubtitle(value);
    }
    pub const NAME: []const u8 = "Windows.Media.ImageDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageDisplayProperties.GUID;
    pub const IID: Guid = IImageDisplayProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageDisplayProperties.SIGNATURE);
};
pub const MediaExtensionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn RegisterSchemeHandler(self: *@This(), activatableClassId: HSTRING, scheme: HSTRING) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterSchemeHandler(activatableClassId, scheme);
    }
    pub fn RegisterSchemeHandlerWithSchemeWithConfiguration(self: *@This(), activatableClassId: HSTRING, scheme: HSTRING, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterSchemeHandlerWithSchemeWithConfiguration(activatableClassId, scheme, configuration);
    }
    pub fn RegisterByteStreamHandler(self: *@This(), activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterByteStreamHandler(activatableClassId, fileExtension, mimeType);
    }
    pub fn RegisterByteStreamHandlerWithFileExtensionWithMimeTypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, fileExtension: HSTRING, mimeType: HSTRING, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterByteStreamHandlerWithFileExtensionWithMimeTypeWithConfiguration(activatableClassId, fileExtension, mimeType, configuration);
    }
    pub fn RegisterAudioDecoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterAudioDecoder(activatableClassId, inputSubtype, outputSubtype);
    }
    pub fn RegisterAudioDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterAudioDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(activatableClassId, inputSubtype, outputSubtype, configuration);
    }
    pub fn RegisterAudioEncoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterAudioEncoder(activatableClassId, inputSubtype, outputSubtype);
    }
    pub fn RegisterAudioEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterAudioEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(activatableClassId, inputSubtype, outputSubtype, configuration);
    }
    pub fn RegisterVideoDecoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterVideoDecoder(activatableClassId, inputSubtype, outputSubtype);
    }
    pub fn RegisterVideoDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterVideoDecoderWithInputSubtypeWithOutputSubtypeWithConfiguration(activatableClassId, inputSubtype, outputSubtype, configuration);
    }
    pub fn RegisterVideoEncoder(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterVideoEncoder(activatableClassId, inputSubtype, outputSubtype);
    }
    pub fn RegisterVideoEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(self: *@This(), activatableClassId: HSTRING, inputSubtype: *Guid, outputSubtype: *Guid, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaExtensionManager = @ptrCast(self);
        return try this.RegisterVideoEncoderWithInputSubtypeWithOutputSubtypeWithConfiguration(activatableClassId, inputSubtype, outputSubtype, configuration);
    }
    pub fn RegisterMediaExtensionForAppService(self: *@This(), extension: *IMediaExtension, connection: *AppServiceConnection) core.HResult!void {
        var this: ?*IMediaExtensionManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaExtensionManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RegisterMediaExtensionForAppService(extension, connection);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaExtensionManager.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.MediaExtensionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaExtensionManager.GUID;
    pub const IID: Guid = IMediaExtensionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaExtensionManager.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaMarkerTypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBookmark() core.HResult!HSTRING {
        const factory = @This().IMediaMarkerTypesStaticsCache.get();
        return try factory.getBookmark();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaMarkerTypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMediaMarkerTypesStaticsCache: FactoryCache(IMediaMarkerTypesStatics, RUNTIME_NAME) = .{};
};
pub const MediaPlaybackAutoRepeatMode = enum(i32) {
    None = 0,
    Track = 1,
    List = 2,
};
pub const MediaPlaybackStatus = enum(i32) {
    Closed = 0,
    Changing = 1,
    Stopped = 2,
    Playing = 3,
    Paused = 4,
};
pub const MediaPlaybackType = enum(i32) {
    Unknown = 0,
    Music = 1,
    Video = 2,
    Image = 3,
};
pub const MediaProcessingTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getArguments(self: *@This()) core.HResult!*ValueSet {
        const this: *IMediaProcessingTriggerDetails = @ptrCast(self);
        return try this.getArguments();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaProcessingTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaProcessingTriggerDetails.GUID;
    pub const IID: Guid = IMediaProcessingTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaProcessingTriggerDetails.SIGNATURE);
};
pub const MediaTimeRange = extern struct {
    Start: TimeSpan,
    End: TimeSpan,
};
pub const MediaTimelineController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.Start();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.Resume();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.Pause();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getClockRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.getClockRate();
    }
    pub fn putClockRate(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.putClockRate(value);
    }
    pub fn getState(self: *@This()) core.HResult!MediaTimelineControllerState {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.getState();
    }
    pub fn addPositionChanged(self: *@This(), positionChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.addPositionChanged(positionChangedEventHandler);
    }
    pub fn removePositionChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.removePositionChanged(eventCookie);
    }
    pub fn addStateChanged(self: *@This(), stateChangedEventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.addStateChanged(stateChangedEventHandler);
    }
    pub fn removeStateChanged(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaTimelineController = @ptrCast(self);
        return try this.removeStateChanged(eventCookie);
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getIsLoopingEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLoopingEnabled();
    }
    pub fn putIsLoopingEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLoopingEnabled(value);
    }
    pub fn addFailed(self: *@This(), eventHandler: *TypedEventHandler(MediaTimelineController,MediaTimelineControllerFailedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFailed(eventHandler);
    }
    pub fn removeFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFailed(token);
    }
    pub fn addEnded(self: *@This(), eventHandler: *TypedEventHandler(MediaTimelineController,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addEnded(eventHandler);
    }
    pub fn removeEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaTimelineController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTimelineController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeEnded(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaTimelineController.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.MediaTimelineController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTimelineController.GUID;
    pub const IID: Guid = IMediaTimelineController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTimelineController.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaTimelineControllerFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMediaTimelineControllerFailedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.MediaTimelineControllerFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTimelineControllerFailedEventArgs.GUID;
    pub const IID: Guid = IMediaTimelineControllerFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTimelineControllerFailedEventArgs.SIGNATURE);
};
pub const MediaTimelineControllerState = enum(i32) {
    Paused = 0,
    Running = 1,
    Stalled = 2,
    Error = 3,
};
pub const MusicDisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.getAlbumArtist();
    }
    pub fn putAlbumArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.putAlbumArtist(value);
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.getArtist();
    }
    pub fn putArtist(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMusicDisplayProperties = @ptrCast(self);
        return try this.putArtist(value);
    }
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMusicDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlbumTitle();
    }
    pub fn putAlbumTitle(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMusicDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlbumTitle(value);
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!u32 {
        var this: ?*IMusicDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrackNumber();
    }
    pub fn putTrackNumber(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IMusicDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTrackNumber(value);
    }
    pub fn getGenres(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IMusicDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGenres();
    }
    pub fn getAlbumTrackCount(self: *@This()) core.HResult!u32 {
        var this: ?*IMusicDisplayProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlbumTrackCount();
    }
    pub fn putAlbumTrackCount(self: *@This(), value: u32) core.HResult!void {
        var this: ?*IMusicDisplayProperties3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMusicDisplayProperties3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlbumTrackCount(value);
    }
    pub const NAME: []const u8 = "Windows.Media.MusicDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMusicDisplayProperties.GUID;
    pub const IID: Guid = IMusicDisplayProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMusicDisplayProperties.SIGNATURE);
};
pub const PlaybackPositionChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestedPlaybackPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IPlaybackPositionChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRequestedPlaybackPosition();
    }
    pub const NAME: []const u8 = "Windows.Media.PlaybackPositionChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackPositionChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IPlaybackPositionChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackPositionChangeRequestedEventArgs.SIGNATURE);
};
pub const PlaybackRateChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestedPlaybackRate(self: *@This()) core.HResult!f64 {
        const this: *IPlaybackRateChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRequestedPlaybackRate();
    }
    pub const NAME: []const u8 = "Windows.Media.PlaybackRateChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackRateChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IPlaybackRateChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackRateChangeRequestedEventArgs.SIGNATURE);
};
pub const ShuffleEnabledChangeRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequestedShuffleEnabled(self: *@This()) core.HResult!bool {
        const this: *IShuffleEnabledChangeRequestedEventArgs = @ptrCast(self);
        return try this.getRequestedShuffleEnabled();
    }
    pub const NAME: []const u8 = "Windows.Media.ShuffleEnabledChangeRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShuffleEnabledChangeRequestedEventArgs.GUID;
    pub const IID: Guid = IShuffleEnabledChangeRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShuffleEnabledChangeRequestedEventArgs.SIGNATURE);
};
pub const SoundLevel = enum(i32) {
    Muted = 0,
    Low = 1,
    Full = 2,
};
pub const SystemMediaTransportControls = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlaybackStatus(self: *@This()) core.HResult!MediaPlaybackStatus {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getPlaybackStatus();
    }
    pub fn putPlaybackStatus(self: *@This(), value: MediaPlaybackStatus) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putPlaybackStatus(value);
    }
    pub fn getDisplayUpdater(self: *@This()) core.HResult!*SystemMediaTransportControlsDisplayUpdater {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getDisplayUpdater();
    }
    pub fn getSoundLevel(self: *@This()) core.HResult!SoundLevel {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getSoundLevel();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getIsPlayEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsPlayEnabled();
    }
    pub fn putIsPlayEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsPlayEnabled(value);
    }
    pub fn getIsStopEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsStopEnabled();
    }
    pub fn putIsStopEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsStopEnabled(value);
    }
    pub fn getIsPauseEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsPauseEnabled();
    }
    pub fn putIsPauseEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsPauseEnabled(value);
    }
    pub fn getIsRecordEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsRecordEnabled();
    }
    pub fn putIsRecordEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsRecordEnabled(value);
    }
    pub fn getIsFastForwardEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsFastForwardEnabled();
    }
    pub fn putIsFastForwardEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsFastForwardEnabled(value);
    }
    pub fn getIsRewindEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsRewindEnabled();
    }
    pub fn putIsRewindEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsRewindEnabled(value);
    }
    pub fn getIsPreviousEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsPreviousEnabled();
    }
    pub fn putIsPreviousEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsPreviousEnabled(value);
    }
    pub fn getIsNextEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsNextEnabled();
    }
    pub fn putIsNextEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsNextEnabled(value);
    }
    pub fn getIsChannelUpEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsChannelUpEnabled();
    }
    pub fn putIsChannelUpEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsChannelUpEnabled(value);
    }
    pub fn getIsChannelDownEnabled(self: *@This()) core.HResult!bool {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.getIsChannelDownEnabled();
    }
    pub fn putIsChannelDownEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.putIsChannelDownEnabled(value);
    }
    pub fn addButtonPressed(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsButtonPressedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.addButtonPressed(handler);
    }
    pub fn removeButtonPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.removeButtonPressed(token);
    }
    pub fn addPropertyChanged(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,SystemMediaTransportControlsPropertyChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.addPropertyChanged(handler);
    }
    pub fn removePropertyChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISystemMediaTransportControls = @ptrCast(self);
        return try this.removePropertyChanged(token);
    }
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!MediaPlaybackAutoRepeatMode {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoRepeatMode();
    }
    pub fn putAutoRepeatMode(self: *@This(), value: MediaPlaybackAutoRepeatMode) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAutoRepeatMode(value);
    }
    pub fn getShuffleEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShuffleEnabled();
    }
    pub fn putShuffleEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShuffleEnabled(value);
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!f64 {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackRate();
    }
    pub fn putPlaybackRate(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPlaybackRate(value);
    }
    pub fn UpdateTimelineProperties(self: *@This(), timelineProperties: *SystemMediaTransportControlsTimelineProperties) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UpdateTimelineProperties(timelineProperties);
    }
    pub fn addPlaybackPositionChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackPositionChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPlaybackPositionChangeRequested(handler);
    }
    pub fn removePlaybackPositionChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePlaybackPositionChangeRequested(token);
    }
    pub fn addPlaybackRateChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,PlaybackRateChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPlaybackRateChangeRequested(handler);
    }
    pub fn removePlaybackRateChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePlaybackRateChangeRequested(token);
    }
    pub fn addShuffleEnabledChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,ShuffleEnabledChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addShuffleEnabledChangeRequested(handler);
    }
    pub fn removeShuffleEnabledChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeShuffleEnabledChangeRequested(token);
    }
    pub fn addAutoRepeatModeChangeRequested(self: *@This(), handler: *TypedEventHandler(SystemMediaTransportControls,AutoRepeatModeChangeRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAutoRepeatModeChangeRequested(handler);
    }
    pub fn removeAutoRepeatModeChangeRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ISystemMediaTransportControls2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISystemMediaTransportControls2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAutoRepeatModeChangeRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*SystemMediaTransportControls {
        const factory = @This().ISystemMediaTransportControlsStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.Media.SystemMediaTransportControls";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaTransportControls.GUID;
    pub const IID: Guid = ISystemMediaTransportControls.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaTransportControls.SIGNATURE);
    var _ISystemMediaTransportControlsStaticsCache: FactoryCache(ISystemMediaTransportControlsStatics, RUNTIME_NAME) = .{};
};
pub const SystemMediaTransportControlsButton = enum(i32) {
    Play = 0,
    Pause = 1,
    Stop = 2,
    Record = 3,
    FastForward = 4,
    Rewind = 5,
    Next = 6,
    Previous = 7,
    ChannelUp = 8,
    ChannelDown = 9,
};
pub const SystemMediaTransportControlsButtonPressedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getButton(self: *@This()) core.HResult!SystemMediaTransportControlsButton {
        const this: *ISystemMediaTransportControlsButtonPressedEventArgs = @ptrCast(self);
        return try this.getButton();
    }
    pub const NAME: []const u8 = "Windows.Media.SystemMediaTransportControlsButtonPressedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaTransportControlsButtonPressedEventArgs.GUID;
    pub const IID: Guid = ISystemMediaTransportControlsButtonPressedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaTransportControlsButtonPressedEventArgs.SIGNATURE);
};
pub const SystemMediaTransportControlsDisplayUpdater = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!MediaPlaybackType {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: MediaPlaybackType) core.HResult!void {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getAppMediaId(self: *@This()) core.HResult!HSTRING {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getAppMediaId();
    }
    pub fn putAppMediaId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.putAppMediaId(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*RandomAccessStreamReference {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn putThumbnail(self: *@This(), value: *RandomAccessStreamReference) core.HResult!void {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicDisplayProperties {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getMusicProperties();
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoDisplayProperties {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getVideoProperties();
    }
    pub fn getImageProperties(self: *@This()) core.HResult!*ImageDisplayProperties {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.getImageProperties();
    }
    pub fn CopyFromFileAsync(self: *@This(), ty: MediaPlaybackType, source: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.CopyFromFileAsync(ty, source);
    }
    pub fn ClearAll(self: *@This()) core.HResult!void {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.ClearAll();
    }
    pub fn Update(self: *@This()) core.HResult!void {
        const this: *ISystemMediaTransportControlsDisplayUpdater = @ptrCast(self);
        return try this.Update();
    }
    pub const NAME: []const u8 = "Windows.Media.SystemMediaTransportControlsDisplayUpdater";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaTransportControlsDisplayUpdater.GUID;
    pub const IID: Guid = ISystemMediaTransportControlsDisplayUpdater.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaTransportControlsDisplayUpdater.SIGNATURE);
};
pub const SystemMediaTransportControlsProperty = enum(i32) {
    SoundLevel = 0,
};
pub const SystemMediaTransportControlsPropertyChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProperty(self: *@This()) core.HResult!SystemMediaTransportControlsProperty {
        const this: *ISystemMediaTransportControlsPropertyChangedEventArgs = @ptrCast(self);
        return try this.getProperty();
    }
    pub const NAME: []const u8 = "Windows.Media.SystemMediaTransportControlsPropertyChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaTransportControlsPropertyChangedEventArgs.GUID;
    pub const IID: Guid = ISystemMediaTransportControlsPropertyChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaTransportControlsPropertyChangedEventArgs.SIGNATURE);
};
pub const SystemMediaTransportControlsTimelineProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.putStartTime(value);
    }
    pub fn getEndTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn putEndTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.putEndTime(value);
    }
    pub fn getMinSeekTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.getMinSeekTime();
    }
    pub fn putMinSeekTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.putMinSeekTime(value);
    }
    pub fn getMaxSeekTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.getMaxSeekTime();
    }
    pub fn putMaxSeekTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.putMaxSeekTime(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISystemMediaTransportControlsTimelineProperties = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISystemMediaTransportControlsTimelineProperties.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.SystemMediaTransportControlsTimelineProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISystemMediaTransportControlsTimelineProperties.GUID;
    pub const IID: Guid = ISystemMediaTransportControlsTimelineProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISystemMediaTransportControlsTimelineProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VideoDisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoDisplayProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVideoDisplayProperties = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoDisplayProperties = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn putSubtitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IVideoDisplayProperties = @ptrCast(self);
        return try this.putSubtitle(value);
    }
    pub fn getGenres(self: *@This()) core.HResult!*IVector(HSTRING) {
        var this: ?*IVideoDisplayProperties2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoDisplayProperties2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGenres();
    }
    pub const NAME: []const u8 = "Windows.Media.VideoDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoDisplayProperties.GUID;
    pub const IID: Guid = IVideoDisplayProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoDisplayProperties.SIGNATURE);
};
pub const VideoEffects = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getVideoStabilization() core.HResult!HSTRING {
        const factory = @This().IVideoEffectsStaticsCache.get();
        return try factory.getVideoStabilization();
    }
    pub const NAME: []const u8 = "Windows.Media.VideoEffects";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IVideoEffectsStaticsCache: FactoryCache(IVideoEffectsStatics, RUNTIME_NAME) = .{};
};
pub const VideoFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        const this: *IVideoFrame = @ptrCast(self);
        return try this.getSoftwareBitmap();
    }
    pub fn CopyToAsync(self: *@This(), frame: *VideoFrame) core.HResult!*IAsyncAction {
        var this: ?*IVideoFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyToAsync(frame);
    }
    pub fn getDirect3DSurface(self: *@This()) core.HResult!*IDirect3DSurface {
        const this: *IVideoFrame = @ptrCast(self);
        return try this.getDirect3DSurface();
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getType();
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub fn putRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRelativeTime(value);
    }
    pub fn getRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRelativeTime();
    }
    pub fn putSystemRelativeTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSystemRelativeTime(value);
    }
    pub fn getSystemRelativeTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemRelativeTime();
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putIsDiscontinuous(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsDiscontinuous(value);
    }
    pub fn getIsDiscontinuous(self: *@This()) core.HResult!bool {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDiscontinuous();
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*IMediaFrame = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaFrame.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedProperties();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn CopyToAsyncWithDestinationBounds(self: *@This(), frame: *VideoFrame, sourceBounds: *IReference(BitmapBounds), destinationBounds: *IReference(BitmapBounds)) core.HResult!*IAsyncAction {
        var this: ?*IVideoFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CopyToAsyncWithDestinationBounds(frame, sourceBounds, destinationBounds);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(format: BitmapPixelFormat, width: i32, height: i32) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameFactoryCache.get();
        return try factory.Create(format, width, height);
    }
    pub fn CreateWithAlpha(format: BitmapPixelFormat, width: i32, height: i32, alpha: BitmapAlphaMode) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameFactoryCache.get();
        return try factory.CreateWithAlpha(format, width, height, alpha);
    }
    pub fn CreateAsDirect3D11SurfaceBacked(format: DirectXPixelFormat, width: i32, height: i32) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameStaticsCache.get();
        return try factory.CreateAsDirect3D11SurfaceBacked(format, width, height);
    }
    pub fn CreateAsDirect3D11SurfaceBackedWithWidthWithHeightWithDevice(format: DirectXPixelFormat, width: i32, height: i32, device: *IDirect3DDevice) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameStaticsCache.get();
        return try factory.CreateAsDirect3D11SurfaceBackedWithWidthWithHeightWithDevice(format, width, height, device);
    }
    pub fn CreateWithSoftwareBitmap(bitmap: *SoftwareBitmap) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameStaticsCache.get();
        return try factory.CreateWithSoftwareBitmap(bitmap);
    }
    pub fn CreateWithDirect3D11Surface(surface: *IDirect3DSurface) core.HResult!*VideoFrame {
        const factory = @This().IVideoFrameStaticsCache.get();
        return try factory.CreateWithDirect3D11Surface(surface);
    }
    pub const NAME: []const u8 = "Windows.Media.VideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoFrame.GUID;
    pub const IID: Guid = IVideoFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoFrame.SIGNATURE);
    var _IVideoFrameFactoryCache: FactoryCache(IVideoFrameFactory, RUNTIME_NAME) = .{};
    var _IVideoFrameStaticsCache: FactoryCache(IVideoFrameStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("./root.zig").IUnknown;
const IActivationFactory = @import("./Foundation.zig").IActivationFactory;
const Guid = @import("./root.zig").Guid;
const IVectorView = @import("./Foundation/Collections.zig").IVectorView;
const RandomAccessStreamReference = @import("./Storage/Streams.zig").RandomAccessStreamReference;
const IVector = @import("./Foundation/Collections.zig").IVector;
const DirectXPixelFormat = @import("./Graphics/DirectX.zig").DirectXPixelFormat;
const IReference = @import("./Foundation.zig").IReference;
const IDirect3DSurface = @import("./Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const IMemoryBuffer = @import("./Foundation.zig").IMemoryBuffer;
const AppServiceConnection = @import("./ApplicationModel/AppService.zig").AppServiceConnection;
const FactoryCache = @import("./core.zig").FactoryCache;
const ValueSet = @import("./Foundation/Collections.zig").ValueSet;
const IDirect3DDevice = @import("./Graphics/DirectX/Direct3D11.zig").IDirect3DDevice;
const TrustLevel = @import("./root.zig").TrustLevel;
const IClosable = @import("./Foundation.zig").IClosable;
const TypedEventHandler = @import("./Foundation.zig").TypedEventHandler;
const HSTRING = @import("./root.zig").HSTRING;
const SoftwareBitmap = @import("./Graphics/Imaging.zig").SoftwareBitmap;
const BitmapPixelFormat = @import("./Graphics/Imaging.zig").BitmapPixelFormat;
const IInspectable = @import("./Foundation.zig").IInspectable;
const TimeSpan = @import("./Foundation.zig").TimeSpan;
const IMemoryBufferReference = @import("./Foundation.zig").IMemoryBufferReference;
const Uri = @import("./Foundation.zig").Uri;
const HResult = @import("./Foundation.zig").HResult;
const EventHandler = @import("./Foundation.zig").EventHandler;
const BitmapBounds = @import("./Graphics/Imaging.zig").BitmapBounds;
const BitmapAlphaMode = @import("./Graphics/Imaging.zig").BitmapAlphaMode;
const HRESULT = @import("./root.zig").HRESULT;
const IAsyncOperation = @import("./Foundation.zig").IAsyncOperation;
const core = @import("./root.zig").core;
const EventRegistrationToken = @import("./Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("./Foundation/Collections.zig").IPropertySet;
const IAsyncAction = @import("./Foundation.zig").IAsyncAction;
const StorageFile = @import("./Storage.zig").StorageFile;
pub const AppBroadcasting = @import("./Media/AppBroadcasting.zig");
pub const AppRecording = @import("./Media/AppRecording.zig");
pub const Audio = @import("./Media/Audio.zig");
pub const Capture = @import("./Media/Capture.zig");
pub const Casting = @import("./Media/Casting.zig");
pub const ClosedCaptioning = @import("./Media/ClosedCaptioning.zig");
pub const ContentRestrictions = @import("./Media/ContentRestrictions.zig");
pub const Control = @import("./Media/Control.zig");
pub const Core = @import("./Media/Core.zig");
pub const Devices = @import("./Media/Devices.zig");
pub const DialProtocol = @import("./Media/DialProtocol.zig");
pub const Editing = @import("./Media/Editing.zig");
pub const Effects = @import("./Media/Effects.zig");
pub const FaceAnalysis = @import("./Media/FaceAnalysis.zig");
pub const Import = @import("./Media/Import.zig");
pub const MediaProperties = @import("./Media/MediaProperties.zig");
pub const Miracast = @import("./Media/Miracast.zig");
pub const Ocr = @import("./Media/Ocr.zig");
pub const Playback = @import("./Media/Playback.zig");
pub const Playlists = @import("./Media/Playlists.zig");
pub const PlayTo = @import("./Media/PlayTo.zig");
pub const Protection = @import("./Media/Protection.zig");
pub const Render = @import("./Media/Render.zig");
pub const SpeechRecognition = @import("./Media/SpeechRecognition.zig");
pub const SpeechSynthesis = @import("./Media/SpeechSynthesis.zig");
pub const Transcoding = @import("./Media/Transcoding.zig");
