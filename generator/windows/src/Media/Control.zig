pub const CurrentSessionChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.CurrentSessionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICurrentSessionChangedEventArgs.GUID;
    pub const IID: Guid = ICurrentSessionChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICurrentSessionChangedEventArgs.SIGNATURE);
};
pub const GlobalSystemMediaTransportControlsSession = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.getSourceAppUserModelId();
    }
    pub fn TryGetMediaPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(GlobalSystemMediaTransportControlsSessionMediaProperties) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryGetMediaPropertiesAsync();
    }
    pub fn GetTimelineProperties(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionTimelineProperties {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.GetTimelineProperties();
    }
    pub fn GetPlaybackInfo(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionPlaybackInfo {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.GetPlaybackInfo();
    }
    pub fn TryPlayAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryPlayAsync();
    }
    pub fn TryPauseAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryPauseAsync();
    }
    pub fn TryStopAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryStopAsync();
    }
    pub fn TryRecordAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryRecordAsync();
    }
    pub fn TryFastForwardAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryFastForwardAsync();
    }
    pub fn TryRewindAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryRewindAsync();
    }
    pub fn TrySkipNextAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TrySkipNextAsync();
    }
    pub fn TrySkipPreviousAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TrySkipPreviousAsync();
    }
    pub fn TryChangeChannelUpAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangeChannelUpAsync();
    }
    pub fn TryChangeChannelDownAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangeChannelDownAsync();
    }
    pub fn TryTogglePlayPauseAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryTogglePlayPauseAsync();
    }
    pub fn TryChangeAutoRepeatModeAsync(self: *@This(), requestedAutoRepeatMode: MediaPlaybackAutoRepeatMode) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangeAutoRepeatModeAsync(requestedAutoRepeatMode);
    }
    pub fn TryChangePlaybackRateAsync(self: *@This(), requestedPlaybackRate: f64) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangePlaybackRateAsync(requestedPlaybackRate);
    }
    pub fn TryChangeShuffleActiveAsync(self: *@This(), requestedShuffleState: bool) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangeShuffleActiveAsync(requestedShuffleState);
    }
    pub fn TryChangePlaybackPositionAsync(self: *@This(), requestedPlaybackPosition: i64) core.HResult!*IAsyncOperation(bool) {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.TryChangePlaybackPositionAsync(requestedPlaybackPosition);
    }
    pub fn addTimelinePropertiesChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,TimelinePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.addTimelinePropertiesChanged(handler);
    }
    pub fn removeTimelinePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.removeTimelinePropertiesChanged(token);
    }
    pub fn addPlaybackInfoChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,PlaybackInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.addPlaybackInfoChanged(handler);
    }
    pub fn removePlaybackInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.removePlaybackInfoChanged(token);
    }
    pub fn addMediaPropertiesChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,MediaPropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.addMediaPropertiesChanged(handler);
    }
    pub fn removeMediaPropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGlobalSystemMediaTransportControlsSession = @ptrCast(self);
        return try this.removeMediaPropertiesChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSession.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSession.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSession.SIGNATURE);
};
pub const GlobalSystemMediaTransportControlsSessionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentSession(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSession {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.GetCurrentSession();
    }
    pub fn GetSessions(self: *@This()) core.HResult!*IVectorView(GlobalSystemMediaTransportControlsSession) {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.GetSessions();
    }
    pub fn addCurrentSessionChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,CurrentSessionChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.addCurrentSessionChanged(handler);
    }
    pub fn removeCurrentSessionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.removeCurrentSessionChanged(token);
    }
    pub fn addSessionsChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,SessionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.addSessionsChanged(handler);
    }
    pub fn removeSessionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGlobalSystemMediaTransportControlsSessionManager = @ptrCast(self);
        return try this.removeSessionsChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAsync() core.HResult!*IAsyncOperation(GlobalSystemMediaTransportControlsSessionManager) {
        const _f = @This().IGlobalSystemMediaTransportControlsSessionManagerStaticsCache.get();
        return try _f.RequestAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSessionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSessionManager.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSessionManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSessionManager.SIGNATURE);
    var _IGlobalSystemMediaTransportControlsSessionManagerStaticsCache: FactoryCache(IGlobalSystemMediaTransportControlsSessionManagerStatics, RUNTIME_NAME) = .{};
};
pub const GlobalSystemMediaTransportControlsSessionMediaProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getSubtitle();
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getAlbumArtist();
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getArtist();
    }
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getAlbumTitle();
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!i32 {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getTrackNumber();
    }
    pub fn getGenres(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getGenres();
    }
    pub fn getAlbumTrackCount(self: *@This()) core.HResult!i32 {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getAlbumTrackCount();
    }
    pub fn getPlaybackType(self: *@This()) core.HResult!*IReference(MediaPlaybackType) {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getPlaybackType();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IGlobalSystemMediaTransportControlsSessionMediaProperties = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSessionMediaProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSessionMediaProperties.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSessionMediaProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSessionMediaProperties.SIGNATURE);
};
pub const GlobalSystemMediaTransportControlsSessionPlaybackControls = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPlayEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPlayEnabled();
    }
    pub fn getIsPauseEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPauseEnabled();
    }
    pub fn getIsStopEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsStopEnabled();
    }
    pub fn getIsRecordEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsRecordEnabled();
    }
    pub fn getIsFastForwardEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsFastForwardEnabled();
    }
    pub fn getIsRewindEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsRewindEnabled();
    }
    pub fn getIsNextEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsNextEnabled();
    }
    pub fn getIsPreviousEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPreviousEnabled();
    }
    pub fn getIsChannelUpEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsChannelUpEnabled();
    }
    pub fn getIsChannelDownEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsChannelDownEnabled();
    }
    pub fn getIsPlayPauseToggleEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPlayPauseToggleEnabled();
    }
    pub fn getIsShuffleEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsShuffleEnabled();
    }
    pub fn getIsRepeatEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsRepeatEnabled();
    }
    pub fn getIsPlaybackRateEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPlaybackRateEnabled();
    }
    pub fn getIsPlaybackPositionEnabled(self: *@This()) core.HResult!bool {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackControls = @ptrCast(self);
        return try this.getIsPlaybackPositionEnabled();
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSessionPlaybackControls";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSessionPlaybackControls.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSessionPlaybackControls.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSessionPlaybackControls.SIGNATURE);
};
pub const GlobalSystemMediaTransportControlsSessionPlaybackInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControls(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionPlaybackControls {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getControls();
    }
    pub fn getPlaybackStatus(self: *@This()) core.HResult!GlobalSystemMediaTransportControlsSessionPlaybackStatus {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getPlaybackStatus();
    }
    pub fn getPlaybackType(self: *@This()) core.HResult!*IReference(MediaPlaybackType) {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getPlaybackType();
    }
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!*IReference(MediaPlaybackAutoRepeatMode) {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getAutoRepeatMode();
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getPlaybackRate();
    }
    pub fn getIsShuffleActive(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IGlobalSystemMediaTransportControlsSessionPlaybackInfo = @ptrCast(self);
        return try this.getIsShuffleActive();
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSessionPlaybackInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSessionPlaybackInfo.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSessionPlaybackInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSessionPlaybackInfo.SIGNATURE);
};
pub const GlobalSystemMediaTransportControlsSessionPlaybackStatus = enum(i32) {
    Closed = 0,
    Opened = 1,
    Changing = 2,
    Stopped = 3,
    Playing = 4,
    Paused = 5,
};
pub const GlobalSystemMediaTransportControlsSessionTimelineProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getStartTime();
    }
    pub fn getEndTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getEndTime();
    }
    pub fn getMinSeekTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getMinSeekTime();
    }
    pub fn getMaxSeekTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getMaxSeekTime();
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        const this: *IGlobalSystemMediaTransportControlsSessionTimelineProperties = @ptrCast(self);
        return try this.getLastUpdatedTime();
    }
    pub const NAME: []const u8 = "Windows.Media.Control.GlobalSystemMediaTransportControlsSessionTimelineProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlobalSystemMediaTransportControlsSessionTimelineProperties.GUID;
    pub const IID: Guid = IGlobalSystemMediaTransportControlsSessionTimelineProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlobalSystemMediaTransportControlsSessionTimelineProperties.SIGNATURE);
};
pub const ICurrentSessionChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.ICurrentSessionChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6969cb39-0bfa-5fe0-8d73-09cc5e5408e1";
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
pub const IGlobalSystemMediaTransportControlsSession = extern struct {
    vtable: *const VTable,
    pub fn getSourceAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SourceAppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetMediaPropertiesAsync(self: *@This()) core.HResult!*IAsyncOperation(GlobalSystemMediaTransportControlsSessionMediaProperties) {
        var _r: *IAsyncOperation(GlobalSystemMediaTransportControlsSessionMediaProperties) = undefined;
        const _c = self.vtable.TryGetMediaPropertiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTimelineProperties(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionTimelineProperties {
        var _r: *GlobalSystemMediaTransportControlsSessionTimelineProperties = undefined;
        const _c = self.vtable.GetTimelineProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPlaybackInfo(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionPlaybackInfo {
        var _r: *GlobalSystemMediaTransportControlsSessionPlaybackInfo = undefined;
        const _c = self.vtable.GetPlaybackInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPlayAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPlayAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryPauseAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryPauseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStopAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryStopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRecordAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRecordAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryFastForwardAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryFastForwardAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRewindAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRewindAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySkipNextAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySkipNextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySkipPreviousAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySkipPreviousAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangeChannelUpAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangeChannelUpAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangeChannelDownAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangeChannelDownAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTogglePlayPauseAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryTogglePlayPauseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangeAutoRepeatModeAsync(self: *@This(), requestedAutoRepeatMode: MediaPlaybackAutoRepeatMode) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangeAutoRepeatModeAsync(@ptrCast(self), requestedAutoRepeatMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangePlaybackRateAsync(self: *@This(), requestedPlaybackRate: f64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangePlaybackRateAsync(@ptrCast(self), requestedPlaybackRate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangeShuffleActiveAsync(self: *@This(), requestedShuffleState: bool) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangeShuffleActiveAsync(@ptrCast(self), requestedShuffleState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryChangePlaybackPositionAsync(self: *@This(), requestedPlaybackPosition: i64) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryChangePlaybackPositionAsync(@ptrCast(self), requestedPlaybackPosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTimelinePropertiesChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,TimelinePropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TimelinePropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTimelinePropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TimelinePropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackInfoChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,PlaybackInfoChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackInfoChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackInfoChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackInfoChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMediaPropertiesChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,MediaPropertiesChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MediaPropertiesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMediaPropertiesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MediaPropertiesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSession";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7148c835-9b14-5ae2-ab85-dc9b1c14e1a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceAppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TryGetMediaPropertiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GlobalSystemMediaTransportControlsSessionMediaProperties)) callconv(.winapi) HRESULT,
        GetTimelineProperties: *const fn(self: *anyopaque, _r: **GlobalSystemMediaTransportControlsSessionTimelineProperties) callconv(.winapi) HRESULT,
        GetPlaybackInfo: *const fn(self: *anyopaque, _r: **GlobalSystemMediaTransportControlsSessionPlaybackInfo) callconv(.winapi) HRESULT,
        TryPlayAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryPauseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryStopAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryRecordAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryFastForwardAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryRewindAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySkipNextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySkipPreviousAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangeChannelUpAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangeChannelDownAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryTogglePlayPauseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangeAutoRepeatModeAsync: *const fn(self: *anyopaque, requestedAutoRepeatMode: MediaPlaybackAutoRepeatMode, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangePlaybackRateAsync: *const fn(self: *anyopaque, requestedPlaybackRate: f64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangeShuffleActiveAsync: *const fn(self: *anyopaque, requestedShuffleState: bool, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryChangePlaybackPositionAsync: *const fn(self: *anyopaque, requestedPlaybackPosition: i64, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_TimelinePropertiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,TimelinePropertiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TimelinePropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackInfoChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,PlaybackInfoChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackInfoChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MediaPropertiesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSession,MediaPropertiesChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MediaPropertiesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionManager = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentSession(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSession {
        var _r: *GlobalSystemMediaTransportControlsSession = undefined;
        const _c = self.vtable.GetCurrentSession(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSessions(self: *@This()) core.HResult!*IVectorView(GlobalSystemMediaTransportControlsSession) {
        var _r: *IVectorView(GlobalSystemMediaTransportControlsSession) = undefined;
        const _c = self.vtable.GetSessions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCurrentSessionChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,CurrentSessionChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CurrentSessionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCurrentSessionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CurrentSessionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSessionsChanged(self: *@This(), handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,SessionsChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SessionsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSessionsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SessionsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cace8eac-e86e-504a-ab31-5ff8ff1bce49";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentSession: *const fn(self: *anyopaque, _r: **GlobalSystemMediaTransportControlsSession) callconv(.winapi) HRESULT,
        GetSessions: *const fn(self: *anyopaque, _r: **IVectorView(GlobalSystemMediaTransportControlsSession)) callconv(.winapi) HRESULT,
        add_CurrentSessionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,CurrentSessionChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CurrentSessionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SessionsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(GlobalSystemMediaTransportControlsSessionManager,SessionsChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SessionsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAsync(self: *@This()) core.HResult!*IAsyncOperation(GlobalSystemMediaTransportControlsSessionManager) {
        var _r: *IAsyncOperation(GlobalSystemMediaTransportControlsSessionManager) = undefined;
        const _c = self.vtable.RequestAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2050c4ee-11a0-57de-aed7-c97c70338245";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(GlobalSystemMediaTransportControlsSessionManager)) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionMediaProperties = extern struct {
    vtable: *const VTable,
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbumArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumArtist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getArtist(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Artist(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbumTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AlbumTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackNumber(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TrackNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGenres(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Genres(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlbumTrackCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_AlbumTrackCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackType(self: *@This()) core.HResult!*IReference(MediaPlaybackType) {
        var _r: *IReference(MediaPlaybackType) = undefined;
        const _c = self.vtable.get_PlaybackType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionMediaProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68856cf6-adb4-54b2-ac16-05837907acb6";
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
        get_Subtitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AlbumArtist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Artist: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AlbumTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TrackNumber: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Genres: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_AlbumTrackCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_PlaybackType: *const fn(self: *anyopaque, _r: **IReference(MediaPlaybackType)) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionPlaybackControls = extern struct {
    vtable: *const VTable,
    pub fn getIsPlayEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlayEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPauseEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPauseEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStopEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStopEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRecordEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRecordEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFastForwardEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFastForwardEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRewindEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRewindEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsNextEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsNextEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPreviousEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPreviousEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsChannelUpEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsChannelUpEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsChannelDownEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsChannelDownEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlayPauseToggleEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlayPauseToggleEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsShuffleEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShuffleEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRepeatEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRepeatEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlaybackRateEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlaybackRateEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlaybackPositionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlaybackPositionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionPlaybackControls";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6501a3e6-bc7a-503a-bb1b-68f158f3fb03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPlayEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPauseEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStopEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRecordEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsFastForwardEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRewindEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsNextEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPreviousEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsChannelUpEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsChannelDownEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlayPauseToggleEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsShuffleEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRepeatEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlaybackRateEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlaybackPositionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionPlaybackInfo = extern struct {
    vtable: *const VTable,
    pub fn getControls(self: *@This()) core.HResult!*GlobalSystemMediaTransportControlsSessionPlaybackControls {
        var _r: *GlobalSystemMediaTransportControlsSessionPlaybackControls = undefined;
        const _c = self.vtable.get_Controls(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackStatus(self: *@This()) core.HResult!GlobalSystemMediaTransportControlsSessionPlaybackStatus {
        var _r: GlobalSystemMediaTransportControlsSessionPlaybackStatus = undefined;
        const _c = self.vtable.get_PlaybackStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackType(self: *@This()) core.HResult!*IReference(MediaPlaybackType) {
        var _r: *IReference(MediaPlaybackType) = undefined;
        const _c = self.vtable.get_PlaybackType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutoRepeatMode(self: *@This()) core.HResult!*IReference(MediaPlaybackAutoRepeatMode) {
        var _r: *IReference(MediaPlaybackAutoRepeatMode) = undefined;
        const _c = self.vtable.get_AutoRepeatMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackRate(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_PlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsShuffleActive(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsShuffleActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionPlaybackInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94b4b6cf-e8ba-51ad-87a7-c10ade106127";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Controls: *const fn(self: *anyopaque, _r: **GlobalSystemMediaTransportControlsSessionPlaybackControls) callconv(.winapi) HRESULT,
        get_PlaybackStatus: *const fn(self: *anyopaque, _r: *GlobalSystemMediaTransportControlsSessionPlaybackStatus) callconv(.winapi) HRESULT,
        get_PlaybackType: *const fn(self: *anyopaque, _r: **IReference(MediaPlaybackType)) callconv(.winapi) HRESULT,
        get_AutoRepeatMode: *const fn(self: *anyopaque, _r: **IReference(MediaPlaybackAutoRepeatMode)) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_IsShuffleActive: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IGlobalSystemMediaTransportControlsSessionTimelineProperties = extern struct {
    vtable: *const VTable,
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EndTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinSeekTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MinSeekTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSeekTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaxSeekTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLastUpdatedTime(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_LastUpdatedTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Control.IGlobalSystemMediaTransportControlsSessionTimelineProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ede34136-6f25-588d-8ecf-ea5b6735aaa5";
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
        get_EndTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MinSeekTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MaxSeekTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_LastUpdatedTime: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPropertiesChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.IMediaPropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d3741cb-adf0-5cef-91ba-cfabcdd77678";
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
pub const IPlaybackInfoChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.IPlaybackInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "786756c2-bc0d-50a5-8807-054291fef139";
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
pub const ISessionsChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.ISessionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bbf0cd32-42c4-5a58-b317-f34bbfbd26e0";
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
pub const ITimelinePropertiesChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.ITimelinePropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29033a2f-c923-5a77-bcaf-055ff415ad32";
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
pub const MediaPropertiesChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.MediaPropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPropertiesChangedEventArgs.GUID;
    pub const IID: Guid = IMediaPropertiesChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPropertiesChangedEventArgs.SIGNATURE);
};
pub const PlaybackInfoChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.PlaybackInfoChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaybackInfoChangedEventArgs.GUID;
    pub const IID: Guid = IPlaybackInfoChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaybackInfoChangedEventArgs.SIGNATURE);
};
pub const SessionsChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.SessionsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISessionsChangedEventArgs.GUID;
    pub const IID: Guid = ISessionsChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISessionsChangedEventArgs.SIGNATURE);
};
pub const TimelinePropertiesChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Media.Control.TimelinePropertiesChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimelinePropertiesChangedEventArgs.GUID;
    pub const IID: Guid = ITimelinePropertiesChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimelinePropertiesChangedEventArgs.SIGNATURE);
};
const MediaPlaybackAutoRepeatMode = @import("../Media.zig").MediaPlaybackAutoRepeatMode;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IReference = @import("../Foundation.zig").IReference;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const MediaPlaybackType = @import("../Media.zig").MediaPlaybackType;
const HSTRING = @import("../root.zig").HSTRING;
