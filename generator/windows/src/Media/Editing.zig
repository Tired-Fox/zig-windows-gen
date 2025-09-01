pub const BackgroundAudioTrack = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrimTimeFromStart(self: *@This()) core.HResult!TimeSpan {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getTrimTimeFromStart();
    }
    pub fn putTrimTimeFromStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.putTrimTimeFromStart(value);
    }
    pub fn getTrimTimeFromEnd(self: *@This()) core.HResult!TimeSpan {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getTrimTimeFromEnd();
    }
    pub fn putTrimTimeFromEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.putTrimTimeFromEnd(value);
    }
    pub fn getOriginalDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getOriginalDuration();
    }
    pub fn getTrimmedDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getTrimmedDuration();
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getUserData();
    }
    pub fn putDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.putDelay(value);
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.putVolume(value);
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getVolume();
    }
    pub fn Clone(self: *@This()) core.HResult!*BackgroundAudioTrack {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.Clone();
    }
    pub fn GetAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.GetAudioEncodingProperties();
    }
    pub fn getAudioEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        const this: *IBackgroundAudioTrack = @ptrCast(self);
        return try this.getAudioEffectDefinitions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromEmbeddedAudioTrack(embeddedAudioTrack: *EmbeddedAudioTrack) core.HResult!*BackgroundAudioTrack {
        const _f = @This().IBackgroundAudioTrackStaticsCache.get();
        return try _f.CreateFromEmbeddedAudioTrack(embeddedAudioTrack);
    }
    pub fn CreateFromFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(BackgroundAudioTrack) {
        const _f = @This().IBackgroundAudioTrackStaticsCache.get();
        return try _f.CreateFromFileAsync(file);
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.BackgroundAudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackgroundAudioTrack.GUID;
    pub const IID: Guid = IBackgroundAudioTrack.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackgroundAudioTrack.SIGNATURE);
    var _IBackgroundAudioTrackStaticsCache: FactoryCache(IBackgroundAudioTrackStatics, RUNTIME_NAME) = .{};
};
pub const EmbeddedAudioTrack = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IEmbeddedAudioTrack = @ptrCast(self);
        return try this.GetAudioEncodingProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.EmbeddedAudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEmbeddedAudioTrack.GUID;
    pub const IID: Guid = IEmbeddedAudioTrack.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEmbeddedAudioTrack.SIGNATURE);
};
pub const IBackgroundAudioTrack = extern struct {
    vtable: *const VTable,
    pub fn getTrimTimeFromStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimTimeFromStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimTimeFromStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimTimeFromStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimTimeFromEnd(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimTimeFromEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimTimeFromEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimTimeFromEnd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginalDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_OriginalDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrimmedDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimmedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_UserData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Delay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Volume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Volume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*BackgroundAudioTrack {
        var _r: *BackgroundAudioTrack = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.GetAudioEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var _r: *IVector(IAudioEffectDefinition) = undefined;
        const _c = self.vtable.get_AudioEffectDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IBackgroundAudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b91b3bd-9e21-4266-a9c2-67dd011a2357";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TrimTimeFromStart: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TrimTimeFromStart: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TrimTimeFromEnd: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TrimTimeFromEnd: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_OriginalDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TrimmedDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserData: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        put_Delay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Volume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **BackgroundAudioTrack) callconv(.winapi) HRESULT,
        GetAudioEncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_AudioEffectDefinitions: *const fn(self: *anyopaque, _r: **IVector(IAudioEffectDefinition)) callconv(.winapi) HRESULT,
    };
};
pub const IBackgroundAudioTrackStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromEmbeddedAudioTrack(self: *@This(), embeddedAudioTrack: *EmbeddedAudioTrack) core.HResult!*BackgroundAudioTrack {
        var _r: *BackgroundAudioTrack = undefined;
        const _c = self.vtable.CreateFromEmbeddedAudioTrack(@ptrCast(self), embeddedAudioTrack, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(BackgroundAudioTrack) {
        var _r: *IAsyncOperation(BackgroundAudioTrack) = undefined;
        const _c = self.vtable.CreateFromFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IBackgroundAudioTrackStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9b1c0d7-d018-42a8-a559-cb4d9e97e664";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromEmbeddedAudioTrack: *const fn(self: *anyopaque, embeddedAudioTrack: *EmbeddedAudioTrack, _r: **BackgroundAudioTrack) callconv(.winapi) HRESULT,
        CreateFromFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(BackgroundAudioTrack)) callconv(.winapi) HRESULT,
    };
};
pub const IEmbeddedAudioTrack = extern struct {
    vtable: *const VTable,
    pub fn GetAudioEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.GetAudioEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IEmbeddedAudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55ee5a7a-2d30-3fba-a190-4f1a6454f88f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAudioEncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IMediaClip = extern struct {
    vtable: *const VTable,
    pub fn getTrimTimeFromStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimTimeFromStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimTimeFromStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimTimeFromStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimTimeFromEnd(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimTimeFromEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimTimeFromEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimTimeFromEnd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginalDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_OriginalDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrimmedDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimmedDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_UserData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaClip {
        var _r: *MediaClip = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartTimeInComposition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartTimeInComposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndTimeInComposition(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_EndTimeInComposition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEmbeddedAudioTracks(self: *@This()) core.HResult!*IVectorView(EmbeddedAudioTrack) {
        var _r: *IVectorView(EmbeddedAudioTrack) = undefined;
        const _c = self.vtable.get_EmbeddedAudioTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedEmbeddedAudioTrackIndex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SelectedEmbeddedAudioTrackIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedEmbeddedAudioTrackIndex(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_SelectedEmbeddedAudioTrackIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Volume(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Volume(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVideoEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.GetVideoEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        var _r: *IVector(IAudioEffectDefinition) = undefined;
        const _c = self.vtable.get_AudioEffectDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoEffectDefinitions(self: *@This()) core.HResult!*IVector(IVideoEffectDefinition) {
        var _r: *IVector(IVideoEffectDefinition) = undefined;
        const _c = self.vtable.get_VideoEffectDefinitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53f25366-5fba-3ea4-8693-24761811140a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TrimTimeFromStart: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TrimTimeFromStart: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TrimTimeFromEnd: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TrimTimeFromEnd: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_OriginalDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_TrimmedDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_UserData: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **MediaClip) callconv(.winapi) HRESULT,
        get_StartTimeInComposition: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_EndTimeInComposition: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_EmbeddedAudioTracks: *const fn(self: *anyopaque, _r: **IVectorView(EmbeddedAudioTrack)) callconv(.winapi) HRESULT,
        get_SelectedEmbeddedAudioTrackIndex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_SelectedEmbeddedAudioTrackIndex: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        put_Volume: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Volume: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        GetVideoEncodingProperties: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        get_AudioEffectDefinitions: *const fn(self: *anyopaque, _r: **IVector(IAudioEffectDefinition)) callconv(.winapi) HRESULT,
        get_VideoEffectDefinitions: *const fn(self: *anyopaque, _r: **IVector(IVideoEffectDefinition)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaClipStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromColor(self: *@This(), color: Color, originalDuration: TimeSpan) core.HResult!*MediaClip {
        var _r: *MediaClip = undefined;
        const _c = self.vtable.CreateFromColor(@ptrCast(self), color, originalDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromFileAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncOperation(MediaClip) {
        var _r: *IAsyncOperation(MediaClip) = undefined;
        const _c = self.vtable.CreateFromFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromImageFileAsync(self: *@This(), file: *IStorageFile, originalDuration: TimeSpan) core.HResult!*IAsyncOperation(MediaClip) {
        var _r: *IAsyncOperation(MediaClip) = undefined;
        const _c = self.vtable.CreateFromImageFileAsync(@ptrCast(self), file, originalDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaClipStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa402b68-928f-43c4-bc6e-783a1a359656";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromColor: *const fn(self: *anyopaque, color: Color, originalDuration: TimeSpan, _r: **MediaClip) callconv(.winapi) HRESULT,
        CreateFromFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncOperation(MediaClip)) callconv(.winapi) HRESULT,
        CreateFromImageFileAsync: *const fn(self: *anyopaque, file: *IStorageFile, originalDuration: TimeSpan, _r: **IAsyncOperation(MediaClip)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaClipStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromSurface(self: *@This(), surface: *IDirect3DSurface, originalDuration: TimeSpan) core.HResult!*MediaClip {
        var _r: *MediaClip = undefined;
        const _c = self.vtable.CreateFromSurface(@ptrCast(self), surface, originalDuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaClipStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b1dd7b3-854e-4d9b-877d-4774a556cd12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromSurface: *const fn(self: *anyopaque, surface: *IDirect3DSurface, originalDuration: TimeSpan, _r: **MediaClip) callconv(.winapi) HRESULT,
    };
};
pub const IMediaComposition = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClips(self: *@This()) core.HResult!*IVector(MediaClip) {
        var _r: *IVector(MediaClip) = undefined;
        const _c = self.vtable.get_Clips(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundAudioTracks(self: *@This()) core.HResult!*IVector(BackgroundAudioTrack) {
        var _r: *IVector(BackgroundAudioTrack) = undefined;
        const _c = self.vtable.get_BackgroundAudioTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        var _r: *IMap(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_UserData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaComposition {
        var _r: *MediaComposition = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SaveAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailAsync(self: *@This(), timeFromStart: TimeSpan, scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision) core.HResult!*IAsyncOperation(ImageStream) {
        var _r: *IAsyncOperation(ImageStream) = undefined;
        const _c = self.vtable.GetThumbnailAsync(@ptrCast(self), timeFromStart, scaledWidth, scaledHeight, framePrecision, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetThumbnailsAsync(self: *@This(), timesFromStart: *IIterable(TimeSpan), scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision) core.HResult!*IAsyncOperation(IVectorView(ImageStream)) {
        var _r: *IAsyncOperation(IVectorView(ImageStream)) = undefined;
        const _c = self.vtable.GetThumbnailsAsync(@ptrCast(self), timesFromStart, scaledWidth, scaledHeight, framePrecision, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderToFileAsync(self: *@This(), destination: *IStorageFile) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        var _r: *IAsyncOperationWithProgress(TranscodeFailureReason,f64) = undefined;
        const _c = self.vtable.RenderToFileAsync(@ptrCast(self), destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderToFileAsyncWithTrimmingPreference(self: *@This(), destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        var _r: *IAsyncOperationWithProgress(TranscodeFailureReason,f64) = undefined;
        const _c = self.vtable.RenderToFileAsyncWithTrimmingPreference(@ptrCast(self), destination, trimmingPreference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RenderToFileAsyncWithTrimmingPreferenceAndEncodingProfile(self: *@This(), destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference, encodingProfile: *MediaEncodingProfile) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        var _r: *IAsyncOperationWithProgress(TranscodeFailureReason,f64) = undefined;
        const _c = self.vtable.RenderToFileAsyncWithTrimmingPreferenceAndEncodingProfile(@ptrCast(self), destination, trimmingPreference, encodingProfile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDefaultEncodingProfile(self: *@This()) core.HResult!*MediaEncodingProfile {
        var _r: *MediaEncodingProfile = undefined;
        const _c = self.vtable.CreateDefaultEncodingProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GenerateMediaStreamSource(self: *@This()) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.GenerateMediaStreamSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GenerateMediaStreamSourceWithEncodingProfile(self: *@This(), encodingProfile: *MediaEncodingProfile) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.GenerateMediaStreamSourceWithEncodingProfile(@ptrCast(self), encodingProfile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GeneratePreviewMediaStreamSource(self: *@This(), scaledWidth: i32, scaledHeight: i32) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.GeneratePreviewMediaStreamSource(@ptrCast(self), scaledWidth, scaledHeight, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaComposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e06e605-dc71-41d6-b837-2d2bc14a2947";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Clips: *const fn(self: *anyopaque, _r: **IVector(MediaClip)) callconv(.winapi) HRESULT,
        get_BackgroundAudioTracks: *const fn(self: *anyopaque, _r: **IVector(BackgroundAudioTrack)) callconv(.winapi) HRESULT,
        get_UserData: *const fn(self: *anyopaque, _r: **IMap(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **MediaComposition) callconv(.winapi) HRESULT,
        SaveAsync: *const fn(self: *anyopaque, file: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetThumbnailAsync: *const fn(self: *anyopaque, timeFromStart: TimeSpan, scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision, _r: **IAsyncOperation(ImageStream)) callconv(.winapi) HRESULT,
        GetThumbnailsAsync: *const fn(self: *anyopaque, timesFromStart: *IIterable(TimeSpan), scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision, _r: **IAsyncOperation(IVectorView(ImageStream))) callconv(.winapi) HRESULT,
        RenderToFileAsync: *const fn(self: *anyopaque, destination: *IStorageFile, _r: **IAsyncOperationWithProgress(TranscodeFailureReason,f64)) callconv(.winapi) HRESULT,
        RenderToFileAsyncWithTrimmingPreference: *const fn(self: *anyopaque, destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference, _r: **IAsyncOperationWithProgress(TranscodeFailureReason,f64)) callconv(.winapi) HRESULT,
        RenderToFileAsyncWithTrimmingPreferenceAndEncodingProfile: *const fn(self: *anyopaque, destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference, encodingProfile: *MediaEncodingProfile, _r: **IAsyncOperationWithProgress(TranscodeFailureReason,f64)) callconv(.winapi) HRESULT,
        CreateDefaultEncodingProfile: *const fn(self: *anyopaque, _r: **MediaEncodingProfile) callconv(.winapi) HRESULT,
        GenerateMediaStreamSource: *const fn(self: *anyopaque, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
        GenerateMediaStreamSourceWithEncodingProfile: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
        GeneratePreviewMediaStreamSource: *const fn(self: *anyopaque, scaledWidth: i32, scaledHeight: i32, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaComposition2 = extern struct {
    vtable: *const VTable,
    pub fn getOverlayLayers(self: *@This()) core.HResult!*IVector(MediaOverlayLayer) {
        var _r: *IVector(MediaOverlayLayer) = undefined;
        const _c = self.vtable.get_OverlayLayers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaComposition2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a59e5372-2366-492c-bec8-e6dfba6d0281";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverlayLayers: *const fn(self: *anyopaque, _r: **IVector(MediaOverlayLayer)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCompositionStatics = extern struct {
    vtable: *const VTable,
    pub fn LoadAsync(self: *@This(), file: *StorageFile) core.HResult!*IAsyncOperation(MediaComposition) {
        var _r: *IAsyncOperation(MediaComposition) = undefined;
        const _c = self.vtable.LoadAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaCompositionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87a08f04-e32a-45ce-8f66-a30df0766224";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadAsync: *const fn(self: *anyopaque, file: *StorageFile, _r: **IAsyncOperation(MediaComposition)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaOverlay = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Delay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaOverlay {
        var _r: *MediaOverlay = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClip(self: *@This()) core.HResult!*MediaClip {
        var _r: *MediaClip = undefined;
        const _c = self.vtable.get_Clip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AudioEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AudioEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaOverlay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a902ae5d-7869-4830-8ab1-94dc01c05fa4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        put_Delay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **MediaOverlay) callconv(.winapi) HRESULT,
        get_Clip: *const fn(self: *anyopaque, _r: **MediaClip) callconv(.winapi) HRESULT,
        get_AudioEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AudioEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaOverlayFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), clip: *MediaClip) core.HResult!*MediaOverlay {
        var _r: *MediaOverlay = undefined;
        const _c = self.vtable.Create(@ptrCast(self), clip, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPositionAndOpacity(self: *@This(), clip: *MediaClip, position: Rect, opacity: f64) core.HResult!*MediaOverlay {
        var _r: *MediaOverlay = undefined;
        const _c = self.vtable.CreateWithPositionAndOpacity(@ptrCast(self), clip, position, opacity, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaOverlayFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b584828a-6188-4f8f-a2e0-aa552d598e18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, clip: *MediaClip, _r: **MediaOverlay) callconv(.winapi) HRESULT,
        CreateWithPositionAndOpacity: *const fn(self: *anyopaque, clip: *MediaClip, position: Rect, opacity: f64, _r: **MediaOverlay) callconv(.winapi) HRESULT,
    };
};
pub const IMediaOverlayLayer = extern struct {
    vtable: *const VTable,
    pub fn Clone(self: *@This()) core.HResult!*MediaOverlayLayer {
        var _r: *MediaOverlayLayer = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverlays(self: *@This()) core.HResult!*IVector(MediaOverlay) {
        var _r: *IVector(MediaOverlay) = undefined;
        const _c = self.vtable.get_Overlays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomCompositorDefinition(self: *@This()) core.HResult!*IVideoCompositorDefinition {
        var _r: *IVideoCompositorDefinition = undefined;
        const _c = self.vtable.get_CustomCompositorDefinition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaOverlayLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6d9ba57-eeda-46c6-bbe5-e398c84168ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **MediaOverlayLayer) callconv(.winapi) HRESULT,
        get_Overlays: *const fn(self: *anyopaque, _r: **IVector(MediaOverlay)) callconv(.winapi) HRESULT,
        get_CustomCompositorDefinition: *const fn(self: *anyopaque, _r: **IVideoCompositorDefinition) callconv(.winapi) HRESULT,
    };
};
pub const IMediaOverlayLayerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWithCompositorDefinition(self: *@This(), compositorDefinition: *IVideoCompositorDefinition) core.HResult!*MediaOverlayLayer {
        var _r: *MediaOverlayLayer = undefined;
        const _c = self.vtable.CreateWithCompositorDefinition(@ptrCast(self), compositorDefinition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.IMediaOverlayLayerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "947cb473-a39e-4362-abbf-9f8b5070a062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithCompositorDefinition: *const fn(self: *anyopaque, compositorDefinition: *IVideoCompositorDefinition, _r: **MediaOverlayLayer) callconv(.winapi) HRESULT,
    };
};
pub const MediaClip = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrimTimeFromStart(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getTrimTimeFromStart();
    }
    pub fn putTrimTimeFromStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaClip = @ptrCast(self);
        return try this.putTrimTimeFromStart(value);
    }
    pub fn getTrimTimeFromEnd(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getTrimTimeFromEnd();
    }
    pub fn putTrimTimeFromEnd(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaClip = @ptrCast(self);
        return try this.putTrimTimeFromEnd(value);
    }
    pub fn getOriginalDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getOriginalDuration();
    }
    pub fn getTrimmedDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getTrimmedDuration();
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getUserData();
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaClip {
        const this: *IMediaClip = @ptrCast(self);
        return try this.Clone();
    }
    pub fn getStartTimeInComposition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getStartTimeInComposition();
    }
    pub fn getEndTimeInComposition(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getEndTimeInComposition();
    }
    pub fn getEmbeddedAudioTracks(self: *@This()) core.HResult!*IVectorView(EmbeddedAudioTrack) {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getEmbeddedAudioTracks();
    }
    pub fn getSelectedEmbeddedAudioTrackIndex(self: *@This()) core.HResult!u32 {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getSelectedEmbeddedAudioTrackIndex();
    }
    pub fn putSelectedEmbeddedAudioTrackIndex(self: *@This(), value: u32) core.HResult!void {
        const this: *IMediaClip = @ptrCast(self);
        return try this.putSelectedEmbeddedAudioTrackIndex(value);
    }
    pub fn putVolume(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaClip = @ptrCast(self);
        return try this.putVolume(value);
    }
    pub fn getVolume(self: *@This()) core.HResult!f64 {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getVolume();
    }
    pub fn GetVideoEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        const this: *IMediaClip = @ptrCast(self);
        return try this.GetVideoEncodingProperties();
    }
    pub fn getAudioEffectDefinitions(self: *@This()) core.HResult!*IVector(IAudioEffectDefinition) {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getAudioEffectDefinitions();
    }
    pub fn getVideoEffectDefinitions(self: *@This()) core.HResult!*IVector(IVideoEffectDefinition) {
        const this: *IMediaClip = @ptrCast(self);
        return try this.getVideoEffectDefinitions();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromSurface(surface: *IDirect3DSurface, originalDuration: TimeSpan) core.HResult!*MediaClip {
        const _f = @This().IMediaClipStatics2Cache.get();
        return try _f.CreateFromSurface(surface, originalDuration);
    }
    pub fn CreateFromColor(color: Color, originalDuration: TimeSpan) core.HResult!*MediaClip {
        const _f = @This().IMediaClipStaticsCache.get();
        return try _f.CreateFromColor(color, originalDuration);
    }
    pub fn CreateFromFileAsync(file: *IStorageFile) core.HResult!*IAsyncOperation(MediaClip) {
        const _f = @This().IMediaClipStaticsCache.get();
        return try _f.CreateFromFileAsync(file);
    }
    pub fn CreateFromImageFileAsync(file: *IStorageFile, originalDuration: TimeSpan) core.HResult!*IAsyncOperation(MediaClip) {
        const _f = @This().IMediaClipStaticsCache.get();
        return try _f.CreateFromImageFileAsync(file, originalDuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.MediaClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaClip.GUID;
    pub const IID: Guid = IMediaClip.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaClip.SIGNATURE);
    var _IMediaClipStatics2Cache: FactoryCache(IMediaClipStatics2, RUNTIME_NAME) = .{};
    var _IMediaClipStaticsCache: FactoryCache(IMediaClipStatics, RUNTIME_NAME) = .{};
};
pub const MediaComposition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getClips(self: *@This()) core.HResult!*IVector(MediaClip) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.getClips();
    }
    pub fn getBackgroundAudioTracks(self: *@This()) core.HResult!*IVector(BackgroundAudioTrack) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.getBackgroundAudioTracks();
    }
    pub fn getUserData(self: *@This()) core.HResult!*IMap(HSTRING,HSTRING) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.getUserData();
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaComposition {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.Clone();
    }
    pub fn SaveAsync(self: *@This(), file: *IStorageFile) core.HResult!*IAsyncAction {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.SaveAsync(file);
    }
    pub fn GetThumbnailAsync(self: *@This(), timeFromStart: TimeSpan, scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision) core.HResult!*IAsyncOperation(ImageStream) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.GetThumbnailAsync(timeFromStart, scaledWidth, scaledHeight, framePrecision);
    }
    pub fn GetThumbnailsAsync(self: *@This(), timesFromStart: *IIterable(TimeSpan), scaledWidth: i32, scaledHeight: i32, framePrecision: VideoFramePrecision) core.HResult!*IAsyncOperation(IVectorView(ImageStream)) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.GetThumbnailsAsync(timesFromStart, scaledWidth, scaledHeight, framePrecision);
    }
    pub fn RenderToFileAsync(self: *@This(), destination: *IStorageFile) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.RenderToFileAsync(destination);
    }
    pub fn RenderToFileAsyncWithTrimmingPreference(self: *@This(), destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.RenderToFileAsyncWithTrimmingPreference(destination, trimmingPreference);
    }
    pub fn RenderToFileAsyncWithTrimmingPreferenceAndEncodingProfile(self: *@This(), destination: *IStorageFile, trimmingPreference: MediaTrimmingPreference, encodingProfile: *MediaEncodingProfile) core.HResult!*IAsyncOperationWithProgress(TranscodeFailureReason,f64) {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.RenderToFileAsyncWithTrimmingPreferenceAndEncodingProfile(destination, trimmingPreference, encodingProfile);
    }
    pub fn CreateDefaultEncodingProfile(self: *@This()) core.HResult!*MediaEncodingProfile {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.CreateDefaultEncodingProfile();
    }
    pub fn GenerateMediaStreamSource(self: *@This()) core.HResult!*MediaStreamSource {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.GenerateMediaStreamSource();
    }
    pub fn GenerateMediaStreamSourceWithEncodingProfile(self: *@This(), encodingProfile: *MediaEncodingProfile) core.HResult!*MediaStreamSource {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.GenerateMediaStreamSourceWithEncodingProfile(encodingProfile);
    }
    pub fn GeneratePreviewMediaStreamSource(self: *@This(), scaledWidth: i32, scaledHeight: i32) core.HResult!*MediaStreamSource {
        const this: *IMediaComposition = @ptrCast(self);
        return try this.GeneratePreviewMediaStreamSource(scaledWidth, scaledHeight);
    }
    pub fn getOverlayLayers(self: *@This()) core.HResult!*IVector(MediaOverlayLayer) {
        var this: ?*IMediaComposition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaComposition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverlayLayers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaComposition.IID)));
    }
    pub fn LoadAsync(file: *StorageFile) core.HResult!*IAsyncOperation(MediaComposition) {
        const _f = @This().IMediaCompositionStaticsCache.get();
        return try _f.LoadAsync(file);
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.MediaComposition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaComposition.GUID;
    pub const IID: Guid = IMediaComposition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaComposition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMediaCompositionStaticsCache: FactoryCache(IMediaCompositionStatics, RUNTIME_NAME) = .{};
};
pub const MediaOverlay = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!Rect {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: Rect) core.HResult!void {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn putDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.putDelay(value);
    }
    pub fn getDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub fn Clone(self: *@This()) core.HResult!*MediaOverlay {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.Clone();
    }
    pub fn getClip(self: *@This()) core.HResult!*MediaClip {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.getClip();
    }
    pub fn getAudioEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.getAudioEnabled();
    }
    pub fn putAudioEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaOverlay = @ptrCast(self);
        return try this.putAudioEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(clip: *MediaClip) core.HResult!*MediaOverlay {
        const _f = @This().IMediaOverlayFactoryCache.get();
        return try _f.Create(clip);
    }
    pub fn CreateWithPositionAndOpacity(clip: *MediaClip, position: Rect, opacity: f64) core.HResult!*MediaOverlay {
        const _f = @This().IMediaOverlayFactoryCache.get();
        return try _f.CreateWithPositionAndOpacity(clip, position, opacity);
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.MediaOverlay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaOverlay.GUID;
    pub const IID: Guid = IMediaOverlay.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaOverlay.SIGNATURE);
    var _IMediaOverlayFactoryCache: FactoryCache(IMediaOverlayFactory, RUNTIME_NAME) = .{};
};
pub const MediaOverlayLayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Clone(self: *@This()) core.HResult!*MediaOverlayLayer {
        const this: *IMediaOverlayLayer = @ptrCast(self);
        return try this.Clone();
    }
    pub fn getOverlays(self: *@This()) core.HResult!*IVector(MediaOverlay) {
        const this: *IMediaOverlayLayer = @ptrCast(self);
        return try this.getOverlays();
    }
    pub fn getCustomCompositorDefinition(self: *@This()) core.HResult!*IVideoCompositorDefinition {
        const this: *IMediaOverlayLayer = @ptrCast(self);
        return try this.getCustomCompositorDefinition();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaOverlayLayer.IID)));
    }
    pub fn CreateWithCompositorDefinition(compositorDefinition: *IVideoCompositorDefinition) core.HResult!*MediaOverlayLayer {
        const _f = @This().IMediaOverlayLayerFactoryCache.get();
        return try _f.CreateWithCompositorDefinition(compositorDefinition);
    }
    pub const NAME: []const u8 = "Windows.Media.Editing.MediaOverlayLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaOverlayLayer.GUID;
    pub const IID: Guid = IMediaOverlayLayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaOverlayLayer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMediaOverlayLayerFactoryCache: FactoryCache(IMediaOverlayLayerFactory, RUNTIME_NAME) = .{};
};
pub const MediaTrimmingPreference = enum(i32) {
    Fast = 0,
    Precise = 1,
};
pub const VideoFramePrecision = enum(i32) {
    NearestFrame = 0,
    NearestKeyFrame = 1,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVideoEffectDefinition = @import("./Effects.zig").IVideoEffectDefinition;
const ImageStream = @import("../Graphics/Imaging.zig").ImageStream;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IDirect3DSurface = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const IMap = @import("../Foundation/Collections.zig").IMap;
const MediaEncodingProfile = @import("./MediaProperties.zig").MediaEncodingProfile;
const VideoEncodingProperties = @import("./MediaProperties.zig").VideoEncodingProperties;
const FactoryCache = @import("../core.zig").FactoryCache;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const AudioEncodingProperties = @import("./MediaProperties.zig").AudioEncodingProperties;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const TranscodeFailureReason = @import("./Transcoding.zig").TranscodeFailureReason;
const MediaStreamSource = @import("./Core.zig").MediaStreamSource;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAudioEffectDefinition = @import("./Effects.zig").IAudioEffectDefinition;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const IVideoCompositorDefinition = @import("./Effects.zig").IVideoCompositorDefinition;
