pub const AudioDecoderDegradation = enum(i32) {
    None = 0,
    DownmixTo2Channels = 1,
    DownmixTo6Channels = 2,
    DownmixTo8Channels = 3,
};
pub const AudioDecoderDegradationReason = enum(i32) {
    None = 0,
    LicensingRequirement = 1,
    SpatialAudioNotSupported = 2,
};
pub const AudioStreamDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        const this: *IAudioStreamDescriptor = @ptrCast(self);
        return try this.getEncodingProperties();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putName(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLanguage(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn putLeadingEncoderPadding(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*IAudioStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLeadingEncoderPadding(value);
    }
    pub fn getLeadingEncoderPadding(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IAudioStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLeadingEncoderPadding();
    }
    pub fn putTrailingEncoderPadding(self: *@This(), value: *IReference(u32)) core.HResult!void {
        var this: ?*IAudioStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTrailingEncoderPadding(value);
    }
    pub fn getTrailingEncoderPadding(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IAudioStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrailingEncoderPadding();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn Copy(self: *@This()) core.HResult!*AudioStreamDescriptor {
        var this: ?*IAudioStreamDescriptor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioStreamDescriptor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(encodingProperties: *AudioEncodingProperties) core.HResult!*AudioStreamDescriptor {
        const factory = @This().IAudioStreamDescriptorFactoryCache.get();
        return try factory.Create(encodingProperties);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.AudioStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioStreamDescriptor.GUID;
    pub const IID: Guid = IAudioStreamDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioStreamDescriptor.SIGNATURE);
    var _IAudioStreamDescriptorFactoryCache: FactoryCache(IAudioStreamDescriptorFactory, RUNTIME_NAME) = .{};
};
pub const AudioTrack = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getTrackKind(self: *@This()) core.HResult!MediaTrackKind {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getTrackKind();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(AudioTrack,AudioTrackOpenFailedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addOpenFailed(handler);
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeOpenFailed(token);
    }
    pub fn GetEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetEncodingProperties();
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackItem();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getSupportInfo(self: *@This()) core.HResult!*AudioTrackSupportInfo {
        var this: ?*IAudioTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAudioTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportInfo();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.AudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTrack.GUID;
    pub const IID: Guid = IMediaTrack.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTrack.SIGNATURE);
};
pub const AudioTrackOpenFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAudioTrackOpenFailedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.AudioTrackOpenFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioTrackOpenFailedEventArgs.GUID;
    pub const IID: Guid = IAudioTrackOpenFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioTrackOpenFailedEventArgs.SIGNATURE);
};
pub const AudioTrackSupportInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDecoderStatus(self: *@This()) core.HResult!MediaDecoderStatus {
        const this: *IAudioTrackSupportInfo = @ptrCast(self);
        return try this.getDecoderStatus();
    }
    pub fn getDegradation(self: *@This()) core.HResult!AudioDecoderDegradation {
        const this: *IAudioTrackSupportInfo = @ptrCast(self);
        return try this.getDegradation();
    }
    pub fn getDegradationReason(self: *@This()) core.HResult!AudioDecoderDegradationReason {
        const this: *IAudioTrackSupportInfo = @ptrCast(self);
        return try this.getDegradationReason();
    }
    pub fn getMediaSourceStatus(self: *@This()) core.HResult!MediaSourceStatus {
        const this: *IAudioTrackSupportInfo = @ptrCast(self);
        return try this.getMediaSourceStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.AudioTrackSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAudioTrackSupportInfo.GUID;
    pub const IID: Guid = IAudioTrackSupportInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAudioTrackSupportInfo.SIGNATURE);
};
pub const ChapterCue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IChapterCue = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IChapterCue = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartTime(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IChapterCue.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ChapterCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IChapterCue.GUID;
    pub const IID: Guid = IChapterCue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IChapterCue.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CodecCategory = enum(i32) {
    Encoder = 0,
    Decoder = 1,
};
pub const CodecInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!CodecKind {
        const this: *ICodecInfo = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getCategory(self: *@This()) core.HResult!CodecCategory {
        const this: *ICodecInfo = @ptrCast(self);
        return try this.getCategory();
    }
    pub fn getSubtypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *ICodecInfo = @ptrCast(self);
        return try this.getSubtypes();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *ICodecInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getIsTrusted(self: *@This()) core.HResult!bool {
        const this: *ICodecInfo = @ptrCast(self);
        return try this.getIsTrusted();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.CodecInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICodecInfo.GUID;
    pub const IID: Guid = ICodecInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICodecInfo.SIGNATURE);
};
pub const CodecKind = enum(i32) {
    Audio = 0,
    Video = 1,
};
pub const CodecQuery = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn FindAllAsync(self: *@This(), kind: CodecKind, category: CodecCategory, subType: HSTRING) core.HResult!*IAsyncOperation(IVectorView(CodecInfo)) {
        const this: *ICodecQuery = @ptrCast(self);
        return try this.FindAllAsync(kind, category, subType);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICodecQuery.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.CodecQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICodecQuery.GUID;
    pub const IID: Guid = ICodecQuery.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICodecQuery.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CodecSubtypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_VideoFormatDV25() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDV25();
    }
    pub fn get_VideoFormatDV50() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDV50();
    }
    pub fn get_VideoFormatDvc() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDvc();
    }
    pub fn get_VideoFormatDvh1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDvh1();
    }
    pub fn get_VideoFormatDvhD() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDvhD();
    }
    pub fn get_VideoFormatDvsd() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDvsd();
    }
    pub fn get_VideoFormatDvsl() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatDvsl();
    }
    pub fn get_VideoFormatH263() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatH263();
    }
    pub fn get_VideoFormatH264() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatH264();
    }
    pub fn get_VideoFormatH265() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatH265();
    }
    pub fn get_VideoFormatH264ES() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatH264ES();
    }
    pub fn get_VideoFormatHevc() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatHevc();
    }
    pub fn get_VideoFormatHevcES() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatHevcES();
    }
    pub fn get_VideoFormatM4S2() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatM4S2();
    }
    pub fn get_VideoFormatMjpg() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMjpg();
    }
    pub fn get_VideoFormatMP43() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMP43();
    }
    pub fn get_VideoFormatMP4S() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMP4S();
    }
    pub fn get_VideoFormatMP4V() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMP4V();
    }
    pub fn get_VideoFormatMpeg2() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMpeg2();
    }
    pub fn get_VideoFormatVP80() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatVP80();
    }
    pub fn get_VideoFormatVP90() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatVP90();
    }
    pub fn get_VideoFormatMpg1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMpg1();
    }
    pub fn get_VideoFormatMss1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMss1();
    }
    pub fn get_VideoFormatMss2() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatMss2();
    }
    pub fn get_VideoFormatWmv1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatWmv1();
    }
    pub fn get_VideoFormatWmv2() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatWmv2();
    }
    pub fn get_VideoFormatWmv3() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatWmv3();
    }
    pub fn get_VideoFormatWvc1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormatWvc1();
    }
    pub fn get_VideoFormat420O() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getVideoFormat420O();
    }
    pub fn get_AudioFormatAac() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAac();
    }
    pub fn get_AudioFormatAdts() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAdts();
    }
    pub fn get_AudioFormatAlac() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAlac();
    }
    pub fn get_AudioFormatAmrNB() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAmrNB();
    }
    pub fn get_AudioFormatAmrWB() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAmrWB();
    }
    pub fn get_AudioFormatAmrWP() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatAmrWP();
    }
    pub fn get_AudioFormatDolbyAC3() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatDolbyAC3();
    }
    pub fn get_AudioFormatDolbyAC3Spdif() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatDolbyAC3Spdif();
    }
    pub fn get_AudioFormatDolbyDDPlus() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatDolbyDDPlus();
    }
    pub fn get_AudioFormatDrm() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatDrm();
    }
    pub fn get_AudioFormatDts() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatDts();
    }
    pub fn get_AudioFormatFlac() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatFlac();
    }
    pub fn get_AudioFormatFloat() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatFloat();
    }
    pub fn get_AudioFormatMP3() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatMP3();
    }
    pub fn get_AudioFormatMPeg() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatMPeg();
    }
    pub fn get_AudioFormatMsp1() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatMsp1();
    }
    pub fn get_AudioFormatOpus() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatOpus();
    }
    pub fn get_AudioFormatPcm() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatPcm();
    }
    pub fn get_AudioFormatWmaSpdif() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatWmaSpdif();
    }
    pub fn get_AudioFormatWMAudioLossless() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatWMAudioLossless();
    }
    pub fn get_AudioFormatWMAudioV8() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatWMAudioV8();
    }
    pub fn get_AudioFormatWMAudioV9() core.HResult!HSTRING {
        const factory = @This().ICodecSubtypesStaticsCache.get();
        return try factory.getAudioFormatWMAudioV9();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.CodecSubtypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICodecSubtypesStaticsCache: FactoryCache(ICodecSubtypesStatics, RUNTIME_NAME) = .{};
};
pub const DataCue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IDataCue = @ptrCast(self);
        return try this.putData(value);
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IDataCue = @ptrCast(self);
        return try this.getData();
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartTime(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*PropertySet {
        var this: ?*IDataCue2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDataCue2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDataCue.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.DataCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDataCue.GUID;
    pub const IID: Guid = IDataCue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDataCue.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FaceDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResultFrame(self: *@This()) core.HResult!*FaceDetectionEffectFrame {
        const this: *IFaceDetectedEventArgs = @ptrCast(self);
        return try this.getResultFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.FaceDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFaceDetectedEventArgs.GUID;
    pub const IID: Guid = IFaceDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFaceDetectedEventArgs.SIGNATURE);
};
pub const FaceDetectionEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putDesiredDetectionInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.putDesiredDetectionInterval(value);
    }
    pub fn getDesiredDetectionInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.getDesiredDetectionInterval();
    }
    pub fn addFaceDetected(self: *@This(), handler: *TypedEventHandler(FaceDetectionEffect,FaceDetectedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.addFaceDetected(handler);
    }
    pub fn removeFaceDetected(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IFaceDetectionEffect = @ptrCast(self);
        return try this.removeFaceDetected(cookie);
    }
    pub fn SetProperties(self: *@This(), configuration: *IPropertySet) core.HResult!void {
        var this: ?*IMediaExtension = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaExtension.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetProperties(configuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.FaceDetectionEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFaceDetectionEffect.GUID;
    pub const IID: Guid = IFaceDetectionEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFaceDetectionEffect.SIGNATURE);
};
pub const FaceDetectionEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn putDetectionMode(self: *@This(), value: FaceDetectionMode) core.HResult!void {
        var this: ?*IFaceDetectionEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFaceDetectionEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDetectionMode(value);
    }
    pub fn getDetectionMode(self: *@This()) core.HResult!FaceDetectionMode {
        var this: ?*IFaceDetectionEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFaceDetectionEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDetectionMode();
    }
    pub fn putSynchronousDetectionEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFaceDetectionEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFaceDetectionEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSynchronousDetectionEnabled(value);
    }
    pub fn getSynchronousDetectionEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IFaceDetectionEffectDefinition = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFaceDetectionEffectDefinition.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSynchronousDetectionEnabled();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVideoEffectDefinition.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.FaceDetectionEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEffectDefinition.GUID;
    pub const IID: Guid = IVideoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEffectDefinition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FaceDetectionEffectFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDetectedFaces(self: *@This()) core.HResult!*IVectorView(DetectedFace) {
        const this: *IFaceDetectionEffectFrame = @ptrCast(self);
        return try this.getDetectedFaces();
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
    pub const NAME: []const u8 = "Windows.Media.Core.FaceDetectionEffectFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFaceDetectionEffectFrame.GUID;
    pub const IID: Guid = IFaceDetectionEffectFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFaceDetectionEffectFrame.SIGNATURE);
};
pub const FaceDetectionMode = enum(i32) {
    HighPerformance = 0,
    Balanced = 1,
    HighQuality = 2,
};
pub const HighDynamicRangeControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHighDynamicRangeControl = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IHighDynamicRangeControl = @ptrCast(self);
        return try this.getEnabled();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.HighDynamicRangeControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHighDynamicRangeControl.GUID;
    pub const IID: Guid = IHighDynamicRangeControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHighDynamicRangeControl.SIGNATURE);
};
pub const HighDynamicRangeOutput = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCertainty(self: *@This()) core.HResult!f64 {
        const this: *IHighDynamicRangeOutput = @ptrCast(self);
        return try this.getCertainty();
    }
    pub fn getFrameControllers(self: *@This()) core.HResult!*IVectorView(FrameController) {
        const this: *IHighDynamicRangeOutput = @ptrCast(self);
        return try this.getFrameControllers();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.HighDynamicRangeOutput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHighDynamicRangeOutput.GUID;
    pub const IID: Guid = IHighDynamicRangeOutput.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHighDynamicRangeOutput.SIGNATURE);
};
pub const IAudioStreamDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e3692e4-4027-4847-a70b-df1d9a2a7b04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IAudioStreamDescriptor2 = extern struct {
    vtable: *const VTable,
    pub fn putLeadingEncoderPadding(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_LeadingEncoderPadding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeadingEncoderPadding(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_LeadingEncoderPadding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrailingEncoderPadding(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_TrailingEncoderPadding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrailingEncoderPadding(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_TrailingEncoderPadding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioStreamDescriptor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e68f1f6-a448-497b-8840-85082665acf9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_LeadingEncoderPadding: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_LeadingEncoderPadding: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_TrailingEncoderPadding: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_TrailingEncoderPadding: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IAudioStreamDescriptor3 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*AudioStreamDescriptor {
        var _r: *AudioStreamDescriptor = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioStreamDescriptor3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d220da1-8e83-44ef-8973-2f63e993f36b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **AudioStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IAudioStreamDescriptorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), encodingProperties: *AudioEncodingProperties) core.HResult!*AudioStreamDescriptor {
        var _r: *AudioStreamDescriptor = undefined;
        const _c = self.vtable.Create(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioStreamDescriptorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a86ce9e-4cb1-4380-8e0c-83504b7f5bf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, encodingProperties: *AudioEncodingProperties, _r: **AudioStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IAudioTrack = extern struct {
    vtable: *const VTable,
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(AudioTrack,AudioTrackOpenFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OpenFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OpenFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetEncodingProperties(self: *@This()) core.HResult!*AudioEncodingProperties {
        var _r: *AudioEncodingProperties = undefined;
        const _c = self.vtable.GetEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_PlaybackItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportInfo(self: *@This()) core.HResult!*AudioTrackSupportInfo {
        var _r: *AudioTrackSupportInfo = undefined;
        const _c = self.vtable.get_SupportInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f23b6e77-3ef7-40de-b943-068b1321701d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_OpenFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AudioTrack,AudioTrackOpenFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OpenFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetEncodingProperties: *const fn(self: *anyopaque, _r: **AudioEncodingProperties) callconv(.winapi) HRESULT,
        get_PlaybackItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportInfo: *const fn(self: *anyopaque, _r: **AudioTrackSupportInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAudioTrackOpenFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioTrackOpenFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eeddb9b9-bb7c-4112-bf76-9384676f824b";
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
pub const IAudioTrackSupportInfo = extern struct {
    vtable: *const VTable,
    pub fn getDecoderStatus(self: *@This()) core.HResult!MediaDecoderStatus {
        var _r: MediaDecoderStatus = undefined;
        const _c = self.vtable.get_DecoderStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDegradation(self: *@This()) core.HResult!AudioDecoderDegradation {
        var _r: AudioDecoderDegradation = undefined;
        const _c = self.vtable.get_Degradation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDegradationReason(self: *@This()) core.HResult!AudioDecoderDegradationReason {
        var _r: AudioDecoderDegradationReason = undefined;
        const _c = self.vtable.get_DegradationReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaSourceStatus(self: *@This()) core.HResult!MediaSourceStatus {
        var _r: MediaSourceStatus = undefined;
        const _c = self.vtable.get_MediaSourceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IAudioTrackSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "178beff7-cc39-44a6-b951-4a5653f073fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DecoderStatus: *const fn(self: *anyopaque, _r: *MediaDecoderStatus) callconv(.winapi) HRESULT,
        get_Degradation: *const fn(self: *anyopaque, _r: *AudioDecoderDegradation) callconv(.winapi) HRESULT,
        get_DegradationReason: *const fn(self: *anyopaque, _r: *AudioDecoderDegradationReason) callconv(.winapi) HRESULT,
        get_MediaSourceStatus: *const fn(self: *anyopaque, _r: *MediaSourceStatus) callconv(.winapi) HRESULT,
    };
};
pub const IChapterCue = extern struct {
    vtable: *const VTable,
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IChapterCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72a98001-d38a-4c0a-8fa6-75cddaf4664c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICodecInfo = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!CodecKind {
        var _r: CodecKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCategory(self: *@This()) core.HResult!CodecCategory {
        var _r: CodecCategory = undefined;
        const _c = self.vtable.get_Category(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubtypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Subtypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTrusted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrusted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ICodecInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51e89f85-ea97-499c-86ac-4ce5e73f3a42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *CodecKind) callconv(.winapi) HRESULT,
        get_Category: *const fn(self: *anyopaque, _r: *CodecCategory) callconv(.winapi) HRESULT,
        get_Subtypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsTrusted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICodecQuery = extern struct {
    vtable: *const VTable,
    pub fn FindAllAsync(self: *@This(), kind: CodecKind, category: CodecCategory, subType: HSTRING) core.HResult!*IAsyncOperation(IVectorView(CodecInfo)) {
        var _r: *IAsyncOperation(IVectorView(CodecInfo)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), kind, category, subType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ICodecQuery";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "222a953a-af61-4e04-808a-a4634e2f3ac4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, kind: CodecKind, category: CodecCategory, subType: HSTRING, _r: **IAsyncOperation(IVectorView(CodecInfo))) callconv(.winapi) HRESULT,
    };
};
pub const ICodecSubtypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getVideoFormatDV25(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDV25(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDV50(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDV50(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDvc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDvc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDvh1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDvh1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDvhD(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDvhD(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDvsd(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDvsd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatDvsl(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatDvsl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatH263(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatH263(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatH264(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatH264(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatH265(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatH265(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatH264ES(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatH264ES(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatHevc(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatHevc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatHevcES(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatHevcES(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatM4S2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatM4S2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMjpg(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMjpg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMP43(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMP43(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMP4S(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMP4S(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMP4V(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMP4V(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMpeg2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMpeg2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatVP80(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatVP80(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatVP90(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatVP90(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMpg1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMpg1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMss1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMss1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatMss2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatMss2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatWmv1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatWmv1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatWmv2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatWmv2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatWmv3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatWmv3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormatWvc1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormatWvc1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoFormat420O(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoFormat420O(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAdts(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAdts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAlac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAlac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAmrNB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAmrNB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAmrWB(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAmrWB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatAmrWP(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatAmrWP(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatDolbyAC3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatDolbyAC3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatDolbyAC3Spdif(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatDolbyAC3Spdif(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatDolbyDDPlus(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatDolbyDDPlus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatDrm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatDrm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatDts(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatDts(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatFlac(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatFlac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatFloat(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatFloat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatMP3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatMP3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatMPeg(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatMPeg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatMsp1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatMsp1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatOpus(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatOpus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatPcm(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatPcm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatWmaSpdif(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatWmaSpdif(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatWMAudioLossless(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatWMAudioLossless(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatWMAudioV8(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatWMAudioV8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioFormatWMAudioV9(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioFormatWMAudioV9(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ICodecSubtypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a66ac4f2-888b-4224-8cf6-2a8d4eb02382";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoFormatDV25: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDV50: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDvc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDvh1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDvhD: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDvsd: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatDvsl: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatH263: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatH264: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatH265: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatH264ES: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatHevc: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatHevcES: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatM4S2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMjpg: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMP43: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMP4S: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMP4V: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMpeg2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatVP80: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatVP90: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMpg1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMss1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatMss2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatWmv1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatWmv2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatWmv3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormatWvc1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoFormat420O: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAdts: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAlac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAmrNB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAmrWB: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatAmrWP: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatDolbyAC3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatDolbyAC3Spdif: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatDolbyDDPlus: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatDrm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatDts: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatFlac: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatFloat: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatMP3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatMPeg: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatMsp1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatOpus: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatPcm: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatWmaSpdif: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatWMAudioLossless: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatWMAudioV8: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AudioFormatWMAudioV9: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDataCue = extern struct {
    vtable: *const VTable,
    pub fn putData(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Data(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IDataCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c7f676d-1fbc-4e2d-9a87-ee38bd1dc637";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Data: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IDataCue2 = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*PropertySet {
        var _r: *PropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IDataCue2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc561b15-95f2-49e8-96f1-8dd5dac68d93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **PropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResultFrame(self: *@This()) core.HResult!*FaceDetectionEffectFrame {
        var _r: *FaceDetectionEffectFrame = undefined;
        const _c = self.vtable.get_ResultFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IFaceDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19918426-c65b-46ba-85f8-13880576c90a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResultFrame: *const fn(self: *anyopaque, _r: **FaceDetectionEffectFrame) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetectionEffect = extern struct {
    vtable: *const VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredDetectionInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DesiredDetectionInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredDetectionInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DesiredDetectionInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFaceDetected(self: *@This(), handler: *TypedEventHandler(FaceDetectionEffect,FaceDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FaceDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFaceDetected(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FaceDetected(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IFaceDetectionEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae15ebd2-0542-42a9-bc90-f283a29f46c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DesiredDetectionInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DesiredDetectionInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        add_FaceDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(FaceDetectionEffect,FaceDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FaceDetected: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetectionEffectDefinition = extern struct {
    vtable: *const VTable,
    pub fn putDetectionMode(self: *@This(), value: FaceDetectionMode) core.HResult!void {
        const _c = self.vtable.put_DetectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetectionMode(self: *@This()) core.HResult!FaceDetectionMode {
        var _r: FaceDetectionMode = undefined;
        const _c = self.vtable.get_DetectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSynchronousDetectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SynchronousDetectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSynchronousDetectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SynchronousDetectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IFaceDetectionEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43dca081-b848-4f33-b702-1fd2624fb016";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DetectionMode: *const fn(self: *anyopaque, value: FaceDetectionMode) callconv(.winapi) HRESULT,
        get_DetectionMode: *const fn(self: *anyopaque, _r: *FaceDetectionMode) callconv(.winapi) HRESULT,
        put_SynchronousDetectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SynchronousDetectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFaceDetectionEffectFrame = extern struct {
    vtable: *const VTable,
    pub fn getDetectedFaces(self: *@This()) core.HResult!*IVectorView(DetectedFace) {
        var _r: *IVectorView(DetectedFace) = undefined;
        const _c = self.vtable.get_DetectedFaces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IFaceDetectionEffectFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ab08993-5dc8-447b-a247-5270bd802ece";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DetectedFaces: *const fn(self: *anyopaque, _r: **IVectorView(DetectedFace)) callconv(.winapi) HRESULT,
    };
};
pub const IHighDynamicRangeControl = extern struct {
    vtable: *const VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IHighDynamicRangeControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55f1a7ae-d957-4dc9-9d1c-8553a82a7d99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHighDynamicRangeOutput = extern struct {
    vtable: *const VTable,
    pub fn getCertainty(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Certainty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameControllers(self: *@This()) core.HResult!*IVectorView(FrameController) {
        var _r: *IVectorView(FrameController) = undefined;
        const _c = self.vtable.get_FrameControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IHighDynamicRangeOutput";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f57806b-253b-4119-bb40-3a90e51384f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Certainty: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_FrameControllers: *const fn(self: *anyopaque, _r: **IVectorView(FrameController)) callconv(.winapi) HRESULT,
    };
};
pub const IImageCue = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!TimedTextPoint {
        var _r: TimedTextPoint = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimedTextPoint) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtent(self: *@This()) core.HResult!TimedTextSize {
        var _r: TimedTextSize = undefined;
        const _c = self.vtable.get_Extent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtent(self: *@This(), value: TimedTextSize) core.HResult!void {
        const _c = self.vtable.put_Extent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putSoftwareBitmap(self: *@This(), value: *SoftwareBitmap) core.HResult!void {
        const _c = self.vtable.put_SoftwareBitmap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.get_SoftwareBitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IImageCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52828282-367b-440b-9116-3c84570dd270";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimedTextPoint) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimedTextPoint) callconv(.winapi) HRESULT,
        get_Extent: *const fn(self: *anyopaque, _r: *TimedTextSize) callconv(.winapi) HRESULT,
        put_Extent: *const fn(self: *anyopaque, value: TimedTextSize) callconv(.winapi) HRESULT,
        put_SoftwareBitmap: *const fn(self: *anyopaque, value: *SoftwareBitmap) callconv(.winapi) HRESULT,
        get_SoftwareBitmap: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const IInitializeMediaStreamSourceRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRandomAccessStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var _r: *IRandomAccessStream = undefined;
        const _c = self.vtable.get_RandomAccessStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IInitializeMediaStreamSourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25bc45e1-9b08-4c2e-a855-4542f1a75deb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
        get_RandomAccessStream: *const fn(self: *anyopaque, _r: **IRandomAccessStream) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const ILowLightFusionResult = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ILowLightFusionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78edbe35-27a0-42e0-9cd3-738d2089de9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const ILowLightFusionStatics = extern struct {
    vtable: *const VTable,
    pub fn getSupportedBitmapPixelFormats(self: *@This()) core.HResult!*IVectorView(BitmapPixelFormat) {
        var _r: *IVectorView(BitmapPixelFormat) = undefined;
        const _c = self.vtable.get_SupportedBitmapPixelFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSupportedFrameCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxSupportedFrameCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FuseAsync(self: *@This(), frameSet: *IIterable(SoftwareBitmap)) core.HResult!*IAsyncOperationWithProgress(LowLightFusionResult,f64) {
        var _r: *IAsyncOperationWithProgress(LowLightFusionResult,f64) = undefined;
        const _c = self.vtable.FuseAsync(@ptrCast(self), frameSet, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ILowLightFusionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5305016d-c29e-40e2-87a9-9e1fd2f192f5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedBitmapPixelFormats: *const fn(self: *anyopaque, _r: **IVectorView(BitmapPixelFormat)) callconv(.winapi) HRESULT,
        get_MaxSupportedFrameCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        FuseAsync: *const fn(self: *anyopaque, frameSet: *IIterable(SoftwareBitmap), _r: **IAsyncOperationWithProgress(LowLightFusionResult,f64)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBinder = extern struct {
    vtable: *const VTable,
    pub fn addBinding(self: *@This(), handler: *TypedEventHandler(MediaBinder,MediaBindingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Binding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBinding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Binding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Token(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToken(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Token(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaBinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b7e40aa-de07-424f-83f1-f1de46c4fa2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Binding: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBinder,MediaBindingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Binding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Token: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Token: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **MediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBindingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn addCanceled(self: *@This(), handler: *TypedEventHandler(MediaBindingEventArgs,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Canceled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Canceled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaBinder(self: *@This()) core.HResult!*MediaBinder {
        var _r: *MediaBinder = undefined;
        const _c = self.vtable.get_MediaBinder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetUri(self: *@This(), uri: *Uri) core.HResult!void {
        const _c = self.vtable.SetUri(@ptrCast(self), uri);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStream(self: *@This(), stream: *IRandomAccessStream, contentType: HSTRING) core.HResult!void {
        const _c = self.vtable.SetStream(@ptrCast(self), stream, contentType);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStreamReference(self: *@This(), stream: *IRandomAccessStreamReference, contentType: HSTRING) core.HResult!void {
        const _c = self.vtable.SetStreamReference(@ptrCast(self), stream, contentType);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaBindingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b61cb25a-1b6d-4630-a86d-2f0837f712e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Canceled: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaBindingEventArgs,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Canceled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MediaBinder: *const fn(self: *anyopaque, _r: **MediaBinder) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
        SetUri: *const fn(self: *anyopaque, uri: *Uri) callconv(.winapi) HRESULT,
        SetStream: *const fn(self: *anyopaque, stream: *IRandomAccessStream, contentType: HSTRING) callconv(.winapi) HRESULT,
        SetStreamReference: *const fn(self: *anyopaque, stream: *IRandomAccessStreamReference, contentType: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBindingEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn SetAdaptiveMediaSource(self: *@This(), mediaSource: *AdaptiveMediaSource) core.HResult!void {
        const _c = self.vtable.SetAdaptiveMediaSource(@ptrCast(self), mediaSource);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStorageFile(self: *@This(), file: *IStorageFile) core.HResult!void {
        const _c = self.vtable.SetStorageFile(@ptrCast(self), file);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaBindingEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0464cceb-bb5a-482f-b8ba-f0284c696567";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAdaptiveMediaSource: *const fn(self: *anyopaque, mediaSource: *AdaptiveMediaSource) callconv(.winapi) HRESULT,
        SetStorageFile: *const fn(self: *anyopaque, file: *IStorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IMediaBindingEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn SetDownloadOperation(self: *@This(), downloadOperation: *DownloadOperation) core.HResult!void {
        const _c = self.vtable.SetDownloadOperation(@ptrCast(self), downloadOperation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaBindingEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8eb475e-19be-44fc-a5ed-7aba315037f9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetDownloadOperation: *const fn(self: *anyopaque, downloadOperation: *DownloadOperation) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCue = extern struct {
    vtable: *const VTable,
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_StartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_StartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Id(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7d15e5d-59dc-431f-a0ee-27744323b36d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_StartTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StartTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Id: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCueEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCue(self: *@This()) core.HResult!*IMediaCue {
        var _r: *IMediaCue = undefined;
        const _c = self.vtable.get_Cue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaCueEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d12f47f7-5fa4-4e68-9fe5-32160dcee57e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cue: *const fn(self: *anyopaque, _r: **IMediaCue) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7bfb599-a09d-4c21-bcdf-20af4f86b3d9";
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
pub const IMediaSource2 = extern struct {
    vtable: *const VTable,
    pub fn addOpenOperationCompleted(self: *@This(), handler: *TypedEventHandler(MediaSource,MediaSourceOpenOperationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OpenOperationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpenOperationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OpenOperationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*ValueSet {
        var _r: *ValueSet = undefined;
        const _c = self.vtable.get_CustomProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExternalTimedTextSources(self: *@This()) core.HResult!*IObservableVector(TimedTextSource) {
        var _r: *IObservableVector(TimedTextSource) = undefined;
        const _c = self.vtable.get_ExternalTimedTextSources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExternalTimedMetadataTracks(self: *@This()) core.HResult!*IObservableVector(TimedMetadataTrack) {
        var _r: *IObservableVector(TimedMetadataTrack) = undefined;
        const _c = self.vtable.get_ExternalTimedMetadataTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2eb61048-655f-4c37-b813-b4e45dfa0abe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_OpenOperationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaSource,MediaSourceOpenOperationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OpenOperationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CustomProperties: *const fn(self: *anyopaque, _r: **ValueSet) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_IsOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExternalTimedTextSources: *const fn(self: *anyopaque, _r: **IObservableVector(TimedTextSource)) callconv(.winapi) HRESULT,
        get_ExternalTimedMetadataTracks: *const fn(self: *anyopaque, _r: **IObservableVector(TimedMetadataTrack)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSource3 = extern struct {
    vtable: *const VTable,
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(MediaSource,MediaSourceStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!MediaSourceState {
        var _r: MediaSourceState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        const _c = self.vtable.Reset(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSource3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b59f0d9b-4b6e-41ed-bbb4-7c7509a994ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaSource,MediaSourceStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *MediaSourceState) callconv(.winapi) HRESULT,
        Reset: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSource4 = extern struct {
    vtable: *const VTable,
    pub fn getAdaptiveMediaSource(self: *@This()) core.HResult!*AdaptiveMediaSource {
        var _r: *AdaptiveMediaSource = undefined;
        const _c = self.vtable.get_AdaptiveMediaSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaStreamSource(self: *@This()) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.get_MediaStreamSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMseStreamSource(self: *@This()) core.HResult!*MseStreamSource {
        var _r: *MseStreamSource = undefined;
        const _c = self.vtable.get_MseStreamSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.OpenAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSource4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdafad57-8eff-4c63-85a6-84de0ae3e4f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdaptiveMediaSource: *const fn(self: *anyopaque, _r: **AdaptiveMediaSource) callconv(.winapi) HRESULT,
        get_MediaStreamSource: *const fn(self: *anyopaque, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
        get_MseStreamSource: *const fn(self: *anyopaque, _r: **MseStreamSource) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        OpenAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSource5 = extern struct {
    vtable: *const VTable,
    pub fn getDownloadOperation(self: *@This()) core.HResult!*DownloadOperation {
        var _r: *DownloadOperation = undefined;
        const _c = self.vtable.get_DownloadOperation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSource5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "331a22ae-ed2e-4a22-94c8-b743a92b3022";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DownloadOperation: *const fn(self: *anyopaque, _r: **DownloadOperation) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceAppServiceConnection = extern struct {
    vtable: *const VTable,
    pub fn addInitializeMediaStreamSourceRequested(self: *@This(), handler: *TypedEventHandler(MediaSourceAppServiceConnection,InitializeMediaStreamSourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_InitializeMediaStreamSourceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInitializeMediaStreamSourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_InitializeMediaStreamSourceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceAppServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61e1ea97-1916-4810-b7f4-b642be829596";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_InitializeMediaStreamSourceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaSourceAppServiceConnection,InitializeMediaStreamSourceRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_InitializeMediaStreamSourceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceAppServiceConnectionFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), appServiceConnection: *AppServiceConnection) core.HResult!*MediaSourceAppServiceConnection {
        var _r: *MediaSourceAppServiceConnection = undefined;
        const _c = self.vtable.Create(@ptrCast(self), appServiceConnection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceAppServiceConnectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65b912eb-80b9-44f9-9c1e-e120f6d92838";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, appServiceConnection: *AppServiceConnection, _r: **MediaSourceAppServiceConnection) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceError = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c0a8965-37c5-4e9d-8d21-1cdee90cecc6";
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
pub const IMediaSourceOpenOperationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!*MediaSourceError {
        var _r: *MediaSourceError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceOpenOperationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc682ceb-e281-477c-a8e0-1acd654114c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: **MediaSourceError) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldState(self: *@This()) core.HResult!MediaSourceState {
        var _r: MediaSourceState = undefined;
        const _c = self.vtable.get_OldState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewState(self: *@This()) core.HResult!MediaSourceState {
        var _r: MediaSourceState = undefined;
        const _c = self.vtable.get_NewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a30af82-9071-4bac-bc39-ca2a93b717a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldState: *const fn(self: *anyopaque, _r: *MediaSourceState) callconv(.winapi) HRESULT,
        get_NewState: *const fn(self: *anyopaque, _r: *MediaSourceState) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromAdaptiveMediaSource(self: *@This(), mediaSource: *AdaptiveMediaSource) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromAdaptiveMediaSource(@ptrCast(self), mediaSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromMediaStreamSource(self: *@This(), mediaSource: *MediaStreamSource) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromMediaStreamSource(@ptrCast(self), mediaSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromMseStreamSource(self: *@This(), mediaSource: *MseStreamSource) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromMseStreamSource(@ptrCast(self), mediaSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromIMediaSource(self: *@This(), mediaSource: *IMediaSource) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromIMediaSource(@ptrCast(self), mediaSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStorageFile(self: *@This(), file: *IStorageFile) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromStorageFile(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStream(self: *@This(), stream: *IRandomAccessStream, contentType: HSTRING) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromStream(@ptrCast(self), stream, contentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamReference(self: *@This(), stream: *IRandomAccessStreamReference, contentType: HSTRING) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromStreamReference(@ptrCast(self), stream, contentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUri(self: *@This(), uri: *Uri) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f77d6fa4-4652-410e-b1d8-e9a5e245a45c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromAdaptiveMediaSource: *const fn(self: *anyopaque, mediaSource: *AdaptiveMediaSource, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromMediaStreamSource: *const fn(self: *anyopaque, mediaSource: *MediaStreamSource, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromMseStreamSource: *const fn(self: *anyopaque, mediaSource: *MseStreamSource, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromIMediaSource: *const fn(self: *anyopaque, mediaSource: *IMediaSource, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromStorageFile: *const fn(self: *anyopaque, file: *IStorageFile, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromStream: *const fn(self: *anyopaque, stream: *IRandomAccessStream, contentType: HSTRING, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromStreamReference: *const fn(self: *anyopaque, stream: *IRandomAccessStreamReference, contentType: HSTRING, _r: **MediaSource) callconv(.winapi) HRESULT,
        CreateFromUri: *const fn(self: *anyopaque, uri: *Uri, _r: **MediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromMediaBinder(self: *@This(), binder: *MediaBinder) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromMediaBinder(@ptrCast(self), binder, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eee161a4-7f13-4896-b8cb-df0de5bcb9f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromMediaBinder: *const fn(self: *anyopaque, binder: *MediaBinder, _r: **MediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceStatics3 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromMediaFrameSource(self: *@This(), frameSource: *MediaFrameSource) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromMediaFrameSource(@ptrCast(self), frameSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "453a30d6-2bea-4122-9f73-eace04526e35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromMediaFrameSource: *const fn(self: *anyopaque, frameSource: *MediaFrameSource, _r: **MediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaSourceStatics4 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromDownloadOperation(self: *@This(), downloadOperation: *DownloadOperation) core.HResult!*MediaSource {
        var _r: *MediaSource = undefined;
        const _c = self.vtable.CreateFromDownloadOperation(@ptrCast(self), downloadOperation, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaSourceStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "281b3bfc-e50a-4428-a500-9c4ed918d3f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromDownloadOperation: *const fn(self: *anyopaque, downloadOperation: *DownloadOperation, _r: **MediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80f16e6e-92f7-451e-97d2-afd80742da70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamDescriptor2 = extern struct {
    vtable: *const VTable,
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamDescriptor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5073010f-e8b2-4071-b00b-ebf337a76b58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSample = extern struct {
    vtable: *const VTable,
    pub fn addProcessed(self: *@This(), handler: *TypedEventHandler(MediaStreamSample,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Processed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProcessed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Processed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBuffer(self: *@This()) core.HResult!*Buffer {
        var _r: *Buffer = undefined;
        const _c = self.vtable.get_Buffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*MediaStreamSamplePropertySet {
        var _r: *MediaStreamSamplePropertySet = undefined;
        const _c = self.vtable.get_ExtendedProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProtection(self: *@This()) core.HResult!*MediaStreamSampleProtectionProperties {
        var _r: *MediaStreamSampleProtectionProperties = undefined;
        const _c = self.vtable.get_Protection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodeTimestamp(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DecodeTimestamp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecodeTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DecodeTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyFrame(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_KeyFrame(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyFrame(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_KeyFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDiscontinuous(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Discontinuous(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDiscontinuous(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Discontinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSample";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c8db627-4b80-4361-9837-6cb7481ad9d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Processed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSample,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Processed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Buffer: *const fn(self: *anyopaque, _r: **Buffer) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ExtendedProperties: *const fn(self: *anyopaque, _r: **MediaStreamSamplePropertySet) callconv(.winapi) HRESULT,
        get_Protection: *const fn(self: *anyopaque, _r: **MediaStreamSampleProtectionProperties) callconv(.winapi) HRESULT,
        put_DecodeTimestamp: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DecodeTimestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_KeyFrame: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_KeyFrame: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Discontinuous: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Discontinuous: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSample2 = extern struct {
    vtable: *const VTable,
    pub fn getDirect3D11Surface(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.get_Direct3D11Surface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSample2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45078691-fce8-4746-a1c8-10c25d3d7cd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Direct3D11Surface: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSampleProtectionProperties = extern struct {
    vtable: *const VTable,
    pub fn SetKeyIdentifier(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetKeyIdentifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetKeyIdentifier(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetKeyIdentifier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetInitializationVector(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetInitializationVector(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetInitializationVector(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetInitializationVector(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSubSampleMapping(self: *@This(), value: [*]u8) core.HResult!void {
        const _c = self.vtable.SetSubSampleMapping(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetSubSampleMapping(self: *@This(), value: u8) core.HResult!void {
        const _c = self.vtable.GetSubSampleMapping(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSampleProtectionProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4eb88292-ecdf-493e-841d-dd4add7caca2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetKeyIdentifier: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetKeyIdentifier: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        SetInitializationVector: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetInitializationVector: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
        SetSubSampleMapping: *const fn(self: *anyopaque, value: [*]u8) callconv(.winapi) HRESULT,
        GetSubSampleMapping: *const fn(self: *anyopaque, value: u8) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSampleStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromBuffer(self: *@This(), buffer: *IBuffer, timestamp: TimeSpan) core.HResult!*MediaStreamSample {
        var _r: *MediaStreamSample = undefined;
        const _c = self.vtable.CreateFromBuffer(@ptrCast(self), buffer, timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamAsync(self: *@This(), stream: *IInputStream, count: u32, timestamp: TimeSpan) core.HResult!*IAsyncOperation(MediaStreamSample) {
        var _r: *IAsyncOperation(MediaStreamSample) = undefined;
        const _c = self.vtable.CreateFromStreamAsync(@ptrCast(self), stream, count, timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSampleStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfdf218f-a6cf-4579-be41-73dd941ad972";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromBuffer: *const fn(self: *anyopaque, buffer: *IBuffer, timestamp: TimeSpan, _r: **MediaStreamSample) callconv(.winapi) HRESULT,
        CreateFromStreamAsync: *const fn(self: *anyopaque, stream: *IInputStream, count: u32, timestamp: TimeSpan, _r: **IAsyncOperation(MediaStreamSample)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSampleStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromDirect3D11Surface(self: *@This(), surface: *IDirect3DSurface, timestamp: TimeSpan) core.HResult!*MediaStreamSample {
        var _r: *MediaStreamSample = undefined;
        const _c = self.vtable.CreateFromDirect3D11Surface(@ptrCast(self), surface, timestamp, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSampleStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9efe9521-6d46-494c-a2f8-d662922e2dd7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromDirect3D11Surface: *const fn(self: *anyopaque, surface: *IDirect3DSurface, timestamp: TimeSpan, _r: **MediaStreamSample) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSource = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStarting(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Starting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Starting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPaused(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Paused(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePaused(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Paused(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSampleRequested(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SampleRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSampleRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SampleRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSwitchStreamsRequested(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSwitchStreamsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SwitchStreamsRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSwitchStreamsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SwitchStreamsRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyError(self: *@This(), errorStatus: MediaStreamSourceErrorStatus) core.HResult!void {
        const _c = self.vtable.NotifyError(@ptrCast(self), errorStatus);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddStreamDescriptor(self: *@This(), descriptor: *IMediaStreamDescriptor) core.HResult!void {
        const _c = self.vtable.AddStreamDescriptor(@ptrCast(self), descriptor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putMediaProtectionManager(self: *@This(), value: *MediaProtectionManager) core.HResult!void {
        const _c = self.vtable.put_MediaProtectionManager(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaProtectionManager(self: *@This()) core.HResult!*MediaProtectionManager {
        var _r: *MediaProtectionManager = undefined;
        const _c = self.vtable.get_MediaProtectionManager(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanSeek(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanSeek(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSeek(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBufferTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_BufferTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBufferTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BufferTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetBufferedRange(self: *@This(), startOffset: TimeSpan, endOffset: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetBufferedRange(@ptrCast(self), startOffset, endOffset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicProperties {
        var _r: *MusicProperties = undefined;
        const _c = self.vtable.get_MusicProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoProperties {
        var _r: *VideoProperties = undefined;
        const _c = self.vtable.get_VideoProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Thumbnail(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddProtectionKey(self: *@This(), streamDescriptor: *IMediaStreamDescriptor, keyIdentifier: [*]u8, licenseData: [*]u8) core.HResult!void {
        const _c = self.vtable.AddProtectionKey(@ptrCast(self), streamDescriptor, keyIdentifier, licenseData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3712d543-45eb-4138-aa62-c01e26f3843f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Starting: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Starting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Paused: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Paused: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SampleRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SampleRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SwitchStreamsRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSwitchStreamsRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SwitchStreamsRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyError: *const fn(self: *anyopaque, errorStatus: MediaStreamSourceErrorStatus) callconv(.winapi) HRESULT,
        AddStreamDescriptor: *const fn(self: *anyopaque, descriptor: *IMediaStreamDescriptor) callconv(.winapi) HRESULT,
        put_MediaProtectionManager: *const fn(self: *anyopaque, value: *MediaProtectionManager) callconv(.winapi) HRESULT,
        get_MediaProtectionManager: *const fn(self: *anyopaque, _r: **MediaProtectionManager) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_CanSeek: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanSeek: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_BufferTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_BufferTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        SetBufferedRange: *const fn(self: *anyopaque, startOffset: TimeSpan, endOffset: TimeSpan) callconv(.winapi) HRESULT,
        get_MusicProperties: *const fn(self: *anyopaque, _r: **MusicProperties) callconv(.winapi) HRESULT,
        get_VideoProperties: *const fn(self: *anyopaque, _r: **VideoProperties) callconv(.winapi) HRESULT,
        put_Thumbnail: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        AddProtectionKey: *const fn(self: *anyopaque, streamDescriptor: *IMediaStreamDescriptor, keyIdentifier: [*]u8, licenseData: [*]u8) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSource2 = extern struct {
    vtable: *const VTable,
    pub fn addSampleRendered(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRenderedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SampleRendered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSampleRendered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SampleRendered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec55d0ad-2e6a-4f74-adbb-b562d1533849";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SampleRendered: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRenderedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SampleRendered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSource3 = extern struct {
    vtable: *const VTable,
    pub fn putMaxSupportedPlaybackRate(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_MaxSupportedPlaybackRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSupportedPlaybackRate(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_MaxSupportedPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSource3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a2a2746-3ddd-4ddf-a121-94045ecf9440";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MaxSupportedPlaybackRate: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_MaxSupportedPlaybackRate: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSource4 = extern struct {
    vtable: *const VTable,
    pub fn putIsLive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSource4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d0cfcab-830d-417c-a3a9-2454fd6415c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsLive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsLive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceClosedRequest {
        var _r: *MediaStreamSourceClosedRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd8c7eb2-4816-4e24-88f0-491ef7386406";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MediaStreamSourceClosedRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceClosedRequest = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!MediaStreamSourceClosedReason {
        var _r: MediaStreamSourceClosedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceClosedRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "907c00e9-18a3-4951-887a-2c1eebd5c69e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *MediaStreamSourceClosedReason) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateFromDescriptor(self: *@This(), descriptor: *IMediaStreamDescriptor) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.CreateFromDescriptor(@ptrCast(self), descriptor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromDescriptors(self: *@This(), descriptor: *IMediaStreamDescriptor, descriptor2: *IMediaStreamDescriptor) core.HResult!*MediaStreamSource {
        var _r: *MediaStreamSource = undefined;
        const _c = self.vtable.CreateFromDescriptors(@ptrCast(self), descriptor, descriptor2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef77e0d9-d158-4b7a-863f-203342fbfd41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromDescriptor: *const fn(self: *anyopaque, descriptor: *IMediaStreamDescriptor, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
        CreateFromDescriptors: *const fn(self: *anyopaque, descriptor: *IMediaStreamDescriptor, descriptor2: *IMediaStreamDescriptor, _r: **MediaStreamSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceSampleRenderedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSampleLag(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SampleLag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSampleRenderedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d697b05-d4f2-4c7a-9dfe-8d6cd0b3ee84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SampleLag: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceSampleRequest = extern struct {
    vtable: *const VTable,
    pub fn getStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        var _r: *IMediaStreamDescriptor = undefined;
        const _c = self.vtable.get_StreamDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceSampleRequestDeferral {
        var _r: *MediaStreamSourceSampleRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSample(self: *@This(), value: *MediaStreamSample) core.HResult!void {
        const _c = self.vtable.put_Sample(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSample(self: *@This()) core.HResult!*MediaStreamSample {
        var _r: *MediaStreamSample = undefined;
        const _c = self.vtable.get_Sample(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportSampleProgress(self: *@This(), progress: u32) core.HResult!void {
        const _c = self.vtable.ReportSampleProgress(@ptrCast(self), progress);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSampleRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4db341a9-3501-4d9b-83f9-8f235c822532";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StreamDescriptor: *const fn(self: *anyopaque, _r: **IMediaStreamDescriptor) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **MediaStreamSourceSampleRequestDeferral) callconv(.winapi) HRESULT,
        put_Sample: *const fn(self: *anyopaque, value: *MediaStreamSample) callconv(.winapi) HRESULT,
        get_Sample: *const fn(self: *anyopaque, _r: **MediaStreamSample) callconv(.winapi) HRESULT,
        ReportSampleProgress: *const fn(self: *anyopaque, progress: u32) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceSampleRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSampleRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7895cc02-f982-43c8-9d16-c62d999319be";
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
pub const IMediaStreamSourceSampleRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceSampleRequest {
        var _r: *MediaStreamSourceSampleRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSampleRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10f9bb9e-71c5-492f-847f-0da1f35e81f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MediaStreamSourceSampleRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceStartingRequest {
        var _r: *MediaStreamSourceStartingRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f41468f2-c274-4940-a5bb-28a572452fa7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MediaStreamSourceStartingRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceStartingRequest = extern struct {
    vtable: *const VTable,
    pub fn getStartPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_StartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceStartingRequestDeferral {
        var _r: *MediaStreamSourceStartingRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetActualStartPosition(self: *@This(), position: TimeSpan) core.HResult!void {
        const _c = self.vtable.SetActualStartPosition(@ptrCast(self), position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceStartingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a9093e4-35c4-4b1b-a791-0d99db56dd1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartPosition: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **MediaStreamSourceStartingRequestDeferral) callconv(.winapi) HRESULT,
        SetActualStartPosition: *const fn(self: *anyopaque, position: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceStartingRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceStartingRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f1356a5-6340-4dc4-9910-068ed9f598f8";
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
pub const IMediaStreamSourceSwitchStreamsRequest = extern struct {
    vtable: *const VTable,
    pub fn getOldStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        var _r: *IMediaStreamDescriptor = undefined;
        const _c = self.vtable.get_OldStreamDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        var _r: *IMediaStreamDescriptor = undefined;
        const _c = self.vtable.get_NewStreamDescriptor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceSwitchStreamsRequestDeferral {
        var _r: *MediaStreamSourceSwitchStreamsRequestDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41b8808e-38a9-4ec3-9ba0-b69b85501e90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldStreamDescriptor: *const fn(self: *anyopaque, _r: **IMediaStreamDescriptor) callconv(.winapi) HRESULT,
        get_NewStreamDescriptor: *const fn(self: *anyopaque, _r: **IMediaStreamDescriptor) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **MediaStreamSourceSwitchStreamsRequestDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IMediaStreamSourceSwitchStreamsRequestDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bee3d835-a505-4f9a-b943-2b8cb1b4bbd9";
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
pub const IMediaStreamSourceSwitchStreamsRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceSwitchStreamsRequest {
        var _r: *MediaStreamSourceSwitchStreamsRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaStreamSourceSwitchStreamsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42202b72-6ea1-4677-981e-350a0da412aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **MediaStreamSourceSwitchStreamsRequest) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTrack = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackKind(self: *@This()) core.HResult!MediaTrackKind {
        var _r: MediaTrackKind = undefined;
        const _c = self.vtable.get_TrackKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMediaTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e1fafc-c931-491a-b46b-c10ee8c256b7";
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
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TrackKind: *const fn(self: *anyopaque, _r: *MediaTrackKind) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMseSourceBuffer = extern struct {
    vtable: *const VTable,
    pub fn addUpdateStarting(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UpdateStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdateStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UpdateStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdateEnded(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UpdateEnded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdateEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UpdateEnded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAborted(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Aborted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAborted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Aborted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMode(self: *@This()) core.HResult!MseAppendMode {
        var _r: MseAppendMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: MseAppendMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsUpdating(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUpdating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuffered(self: *@This()) core.HResult!*IVectorView(MseTimeRange) {
        var _r: *IVectorView(MseTimeRange) = undefined;
        const _c = self.vtable.get_Buffered(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestampOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TimestampOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTimestampOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TimestampOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppendWindowStart(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AppendWindowStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppendWindowStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_AppendWindowStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppendWindowEnd(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_AppendWindowEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAppendWindowEnd(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_AppendWindowEnd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const _c = self.vtable.AppendBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendStream(self: *@This(), stream: *IInputStream) core.HResult!void {
        const _c = self.vtable.AppendStream(@ptrCast(self), stream);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AppendStreamWithMaxSize(self: *@This(), stream: *IInputStream, maxSize: u64) core.HResult!void {
        const _c = self.vtable.AppendStreamWithMaxSize(@ptrCast(self), stream, maxSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Abort(self: *@This()) core.HResult!void {
        const _c = self.vtable.Abort(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), start: TimeSpan, end: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), start, end);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMseSourceBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c1aa3e3-df8d-4079-a3fe-6849184b4e2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_UpdateStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBuffer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UpdateStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBuffer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UpdateEnded: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBuffer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UpdateEnded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBuffer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Aborted: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBuffer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Aborted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *MseAppendMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: MseAppendMode) callconv(.winapi) HRESULT,
        get_IsUpdating: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Buffered: *const fn(self: *anyopaque, _r: **IVectorView(MseTimeRange)) callconv(.winapi) HRESULT,
        get_TimestampOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TimestampOffset: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_AppendWindowStart: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_AppendWindowStart: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_AppendWindowEnd: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_AppendWindowEnd: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        AppendBuffer: *const fn(self: *anyopaque, buffer: *IBuffer) callconv(.winapi) HRESULT,
        AppendStream: *const fn(self: *anyopaque, stream: *IInputStream) callconv(.winapi) HRESULT,
        AppendStreamWithMaxSize: *const fn(self: *anyopaque, stream: *IInputStream, maxSize: u64) callconv(.winapi) HRESULT,
        Abort: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, start: TimeSpan, end: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IMseSourceBufferList = extern struct {
    vtable: *const VTable,
    pub fn addSourceBufferAdded(self: *@This(), handler: *TypedEventHandler(MseSourceBufferList,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceBufferAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceBufferAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceBufferAdded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSourceBufferRemoved(self: *@This(), handler: *TypedEventHandler(MseSourceBufferList,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SourceBufferRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSourceBufferRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SourceBufferRemoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBuffers(self: *@This()) core.HResult!*IVectorView(MseSourceBuffer) {
        var _r: *IVectorView(MseSourceBuffer) = undefined;
        const _c = self.vtable.get_Buffers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMseSourceBufferList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95fae8e7-a8e7-4ebf-8927-145e940ba511";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SourceBufferAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBufferList,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceBufferAdded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SourceBufferRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseSourceBufferList,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SourceBufferRemoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Buffers: *const fn(self: *anyopaque, _r: **IVectorView(MseSourceBuffer)) callconv(.winapi) HRESULT,
    };
};
pub const IMseStreamSource = extern struct {
    vtable: *const VTable,
    pub fn addOpened(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Opened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Opened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnded(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Ended(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Ended(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceBuffers(self: *@This()) core.HResult!*MseSourceBufferList {
        var _r: *MseSourceBufferList = undefined;
        const _c = self.vtable.get_SourceBuffers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActiveSourceBuffers(self: *@This()) core.HResult!*MseSourceBufferList {
        var _r: *MseSourceBufferList = undefined;
        const _c = self.vtable.get_ActiveSourceBuffers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReadyState(self: *@This()) core.HResult!MseReadyState {
        var _r: MseReadyState = undefined;
        const _c = self.vtable.get_ReadyState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn AddSourceBuffer(self: *@This(), mimeType: HSTRING) core.HResult!*MseSourceBuffer {
        var _r: *MseSourceBuffer = undefined;
        const _c = self.vtable.AddSourceBuffer(@ptrCast(self), mimeType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveSourceBuffer(self: *@This(), buffer: *MseSourceBuffer) core.HResult!void {
        const _c = self.vtable.RemoveSourceBuffer(@ptrCast(self), buffer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EndOfStream(self: *@This(), status: MseEndOfStreamStatus) core.HResult!void {
        const _c = self.vtable.EndOfStream(@ptrCast(self), status);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMseStreamSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0b4198d-02f4-4923-88dd-81bc3f360ffa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Opened: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseStreamSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Opened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Ended: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseStreamSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Ended: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MseStreamSource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SourceBuffers: *const fn(self: *anyopaque, _r: **MseSourceBufferList) callconv(.winapi) HRESULT,
        get_ActiveSourceBuffers: *const fn(self: *anyopaque, _r: **MseSourceBufferList) callconv(.winapi) HRESULT,
        get_ReadyState: *const fn(self: *anyopaque, _r: *MseReadyState) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        AddSourceBuffer: *const fn(self: *anyopaque, mimeType: HSTRING, _r: **MseSourceBuffer) callconv(.winapi) HRESULT,
        RemoveSourceBuffer: *const fn(self: *anyopaque, buffer: *MseSourceBuffer) callconv(.winapi) HRESULT,
        EndOfStream: *const fn(self: *anyopaque, status: MseEndOfStreamStatus) callconv(.winapi) HRESULT,
    };
};
pub const IMseStreamSource2 = extern struct {
    vtable: *const VTable,
    pub fn getLiveSeekableRange(self: *@This()) core.HResult!*IReference(MseTimeRange) {
        var _r: *IReference(MseTimeRange) = undefined;
        const _c = self.vtable.get_LiveSeekableRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLiveSeekableRange(self: *@This(), value: *IReference(MseTimeRange)) core.HResult!void {
        const _c = self.vtable.put_LiveSeekableRange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMseStreamSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66f57d37-f9e7-418a-9cde-a020e956552b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LiveSeekableRange: *const fn(self: *anyopaque, _r: **IReference(MseTimeRange)) callconv(.winapi) HRESULT,
        put_LiveSeekableRange: *const fn(self: *anyopaque, value: *IReference(MseTimeRange)) callconv(.winapi) HRESULT,
    };
};
pub const IMseStreamSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn IsContentTypeSupported(self: *@This(), contentType: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContentTypeSupported(@ptrCast(self), contentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IMseStreamSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "465c679d-d570-43ce-ba21-0bff5f3fbd0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsContentTypeSupported: *const fn(self: *anyopaque, contentType: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISceneAnalysisEffect = extern struct {
    vtable: *const VTable,
    pub fn getHighDynamicRangeAnalyzer(self: *@This()) core.HResult!*HighDynamicRangeControl {
        var _r: *HighDynamicRangeControl = undefined;
        const _c = self.vtable.get_HighDynamicRangeAnalyzer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredAnalysisInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DesiredAnalysisInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredAnalysisInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DesiredAnalysisInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSceneAnalyzed(self: *@This(), handler: *TypedEventHandler(SceneAnalysisEffect,SceneAnalyzedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SceneAnalyzed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSceneAnalyzed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SceneAnalyzed(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISceneAnalysisEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c04ba319-ca41-4813-bffd-7b08b0ed2557";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HighDynamicRangeAnalyzer: *const fn(self: *anyopaque, _r: **HighDynamicRangeControl) callconv(.winapi) HRESULT,
        put_DesiredAnalysisInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DesiredAnalysisInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        add_SceneAnalyzed: *const fn(self: *anyopaque, handler: *TypedEventHandler(SceneAnalysisEffect,SceneAnalyzedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SceneAnalyzed: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISceneAnalysisEffectFrame = extern struct {
    vtable: *const VTable,
    pub fn getFrameControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        var _r: *CapturedFrameControlValues = undefined;
        const _c = self.vtable.get_FrameControlValues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighDynamicRange(self: *@This()) core.HResult!*HighDynamicRangeOutput {
        var _r: *HighDynamicRangeOutput = undefined;
        const _c = self.vtable.get_HighDynamicRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISceneAnalysisEffectFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8b10e4c-7fd9-42e1-85eb-6572c297c987";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameControlValues: *const fn(self: *anyopaque, _r: **CapturedFrameControlValues) callconv(.winapi) HRESULT,
        get_HighDynamicRange: *const fn(self: *anyopaque, _r: **HighDynamicRangeOutput) callconv(.winapi) HRESULT,
    };
};
pub const ISceneAnalysisEffectFrame2 = extern struct {
    vtable: *const VTable,
    pub fn getAnalysisRecommendation(self: *@This()) core.HResult!SceneAnalysisRecommendation {
        var _r: SceneAnalysisRecommendation = undefined;
        const _c = self.vtable.get_AnalysisRecommendation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISceneAnalysisEffectFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2d4e29be-061f-47ae-9915-02524b5f9a5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnalysisRecommendation: *const fn(self: *anyopaque, _r: *SceneAnalysisRecommendation) callconv(.winapi) HRESULT,
    };
};
pub const ISceneAnalyzedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResultFrame(self: *@This()) core.HResult!*SceneAnalysisEffectFrame {
        var _r: *SceneAnalysisEffectFrame = undefined;
        const _c = self.vtable.get_ResultFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISceneAnalyzedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "146b9588-2851-45e4-ad55-44cf8df8db4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResultFrame: *const fn(self: *anyopaque, _r: **SceneAnalysisEffectFrame) callconv(.winapi) HRESULT,
    };
};
pub const ISingleSelectMediaTrackList = extern struct {
    vtable: *const VTable,
    pub fn addSelectedIndexChanged(self: *@This(), handler: *TypedEventHandler(ISingleSelectMediaTrackList,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectedIndexChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectedIndexChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectedIndexChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_SelectedIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SelectedIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISingleSelectMediaTrackList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77206f1f-c34f-494f-8077-2bad9ff4ecf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_SelectedIndexChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ISingleSelectMediaTrackList,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectedIndexChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        put_SelectedIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SelectedIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ISpeechCue = extern struct {
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
    pub fn getStartPositionInInput(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_StartPositionInInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPositionInInput(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_StartPositionInInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndPositionInInput(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_EndPositionInInput(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndPositionInInput(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const _c = self.vtable.put_EndPositionInInput(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ISpeechCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aee254dc-1725-4bad-8043-a98499b017a2";
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
        get_StartPositionInInput: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_StartPositionInInput: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
        get_EndPositionInInput: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        put_EndPositionInInput: *const fn(self: *anyopaque, value: *IReference(i32)) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataStreamDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var _r: *TimedMetadataEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Copy(self: *@This()) core.HResult!*TimedMetadataStreamDescriptor {
        var _r: *TimedMetadataStreamDescriptor = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "133336bf-296a-463e-9ff9-01cd25691408";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncodingProperties: *const fn(self: *anyopaque, _r: **TimedMetadataEncodingProperties) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **TimedMetadataStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataStreamDescriptorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), encodingProperties: *TimedMetadataEncodingProperties) core.HResult!*TimedMetadataStreamDescriptor {
        var _r: *TimedMetadataStreamDescriptor = undefined;
        const _c = self.vtable.Create(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataStreamDescriptorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c027de30-7362-4ff9-98b1-2dfd0b8d1cae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, encodingProperties: *TimedMetadataEncodingProperties, _r: **TimedMetadataStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrack = extern struct {
    vtable: *const VTable,
    pub fn addCueEntered(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CueEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCueEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CueEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCueExited(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CueExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCueExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CueExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTrackFailed(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,TimedMetadataTrackFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TrackFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTrackFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TrackFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCues(self: *@This()) core.HResult!*IVectorView(IMediaCue) {
        var _r: *IVectorView(IMediaCue) = undefined;
        const _c = self.vtable.get_Cues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getActiveCues(self: *@This()) core.HResult!*IVectorView(IMediaCue) {
        var _r: *IVectorView(IMediaCue) = undefined;
        const _c = self.vtable.get_ActiveCues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimedMetadataKind(self: *@This()) core.HResult!TimedMetadataKind {
        var _r: TimedMetadataKind = undefined;
        const _c = self.vtable.get_TimedMetadataKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatchType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DispatchType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddCue(self: *@This(), cue: *IMediaCue) core.HResult!void {
        const _c = self.vtable.AddCue(@ptrCast(self), cue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveCue(self: *@This(), cue: *IMediaCue) core.HResult!void {
        const _c = self.vtable.RemoveCue(@ptrCast(self), cue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e6aed9e-f67a-49a9-b330-cf03b0e9cf07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CueEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CueEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CueExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CueExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TrackFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(TimedMetadataTrack,TimedMetadataTrackFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TrackFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Cues: *const fn(self: *anyopaque, _r: **IVectorView(IMediaCue)) callconv(.winapi) HRESULT,
        get_ActiveCues: *const fn(self: *anyopaque, _r: **IVectorView(IMediaCue)) callconv(.winapi) HRESULT,
        get_TimedMetadataKind: *const fn(self: *anyopaque, _r: *TimedMetadataKind) callconv(.winapi) HRESULT,
        get_DispatchType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        AddCue: *const fn(self: *anyopaque, cue: *IMediaCue) callconv(.winapi) HRESULT,
        RemoveCue: *const fn(self: *anyopaque, cue: *IMediaCue) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrack2 = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_PlaybackItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrack2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21b4b648-9f9d-40ba-a8f3-1a92753aef0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrackError = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!TimedMetadataTrackErrorCode {
        var _r: TimedMetadataTrackErrorCode = undefined;
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
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrackError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3767915-4114-4819-b9d9-dd76089e72f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *TimedMetadataTrackErrorCode) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrackFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), id: HSTRING, language: HSTRING, kind: TimedMetadataKind) core.HResult!*TimedMetadataTrack {
        var _r: *TimedMetadataTrack = undefined;
        const _c = self.vtable.Create(@ptrCast(self), id, language, kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrackFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8dd57611-97b3-4e1f-852c-0f482c81ad26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, id: HSTRING, language: HSTRING, kind: TimedMetadataKind, _r: **TimedMetadataTrack) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrackFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!*TimedMetadataTrackError {
        var _r: *TimedMetadataTrackError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrackFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a57fc9d1-6789-4d4d-b07f-84b4f31acb70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: **TimedMetadataTrackError) callconv(.winapi) HRESULT,
    };
};
pub const ITimedMetadataTrackProvider = extern struct {
    vtable: *const VTable,
    pub fn getTimedMetadataTracks(self: *@This()) core.HResult!*IVectorView(TimedMetadataTrack) {
        var _r: *IVectorView(TimedMetadataTrack) = undefined;
        const _c = self.vtable.get_TimedMetadataTracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedMetadataTrackProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b7f2024-f74e-4ade-93c5-219da05b6856";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TimedMetadataTracks: *const fn(self: *anyopaque, _r: **IVectorView(TimedMetadataTrack)) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextBouten = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!TimedTextBoutenType {
        var _r: TimedTextBoutenType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: TimedTextBoutenType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPosition(self: *@This()) core.HResult!TimedTextBoutenPosition {
        var _r: TimedTextBoutenPosition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimedTextBoutenPosition) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextBouten";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9062783-5597-5092-820c-8f738e0f774a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *TimedTextBoutenType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: TimedTextBoutenType) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *TimedTextBoutenPosition) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimedTextBoutenPosition) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextCue = extern struct {
    vtable: *const VTable,
    pub fn getCueRegion(self: *@This()) core.HResult!*TimedTextRegion {
        var _r: *TimedTextRegion = undefined;
        const _c = self.vtable.get_CueRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCueRegion(self: *@This(), value: *TimedTextRegion) core.HResult!void {
        const _c = self.vtable.put_CueRegion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCueStyle(self: *@This()) core.HResult!*TimedTextStyle {
        var _r: *TimedTextStyle = undefined;
        const _c = self.vtable.get_CueStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCueStyle(self: *@This(), value: *TimedTextStyle) core.HResult!void {
        const _c = self.vtable.put_CueStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLines(self: *@This()) core.HResult!*IVector(TimedTextLine) {
        var _r: *IVector(TimedTextLine) = undefined;
        const _c = self.vtable.get_Lines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51c79e51-3b86-494d-b359-bb2ea7aca9a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CueRegion: *const fn(self: *anyopaque, _r: **TimedTextRegion) callconv(.winapi) HRESULT,
        put_CueRegion: *const fn(self: *anyopaque, value: *TimedTextRegion) callconv(.winapi) HRESULT,
        get_CueStyle: *const fn(self: *anyopaque, _r: **TimedTextStyle) callconv(.winapi) HRESULT,
        put_CueStyle: *const fn(self: *anyopaque, value: *TimedTextStyle) callconv(.winapi) HRESULT,
        get_Lines: *const fn(self: *anyopaque, _r: **IVector(TimedTextLine)) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextLine = extern struct {
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
    pub fn getSubformats(self: *@This()) core.HResult!*IVector(TimedTextSubformat) {
        var _r: *IVector(TimedTextSubformat) = undefined;
        const _c = self.vtable.get_Subformats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "978d7ce2-7308-4c66-be50-65777289f5df";
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
        get_Subformats: *const fn(self: *anyopaque, _r: **IVector(TimedTextSubformat)) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextRegion = extern struct {
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
    pub fn getPosition(self: *@This()) core.HResult!TimedTextPoint {
        var _r: TimedTextPoint = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimedTextPoint) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtent(self: *@This()) core.HResult!TimedTextSize {
        var _r: TimedTextSize = undefined;
        const _c = self.vtable.get_Extent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtent(self: *@This(), value: TimedTextSize) core.HResult!void {
        const _c = self.vtable.put_Extent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackground(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Background(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackground(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Background(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWritingMode(self: *@This()) core.HResult!TimedTextWritingMode {
        var _r: TimedTextWritingMode = undefined;
        const _c = self.vtable.get_WritingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWritingMode(self: *@This(), value: TimedTextWritingMode) core.HResult!void {
        const _c = self.vtable.put_WritingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayAlignment(self: *@This()) core.HResult!TimedTextDisplayAlignment {
        var _r: TimedTextDisplayAlignment = undefined;
        const _c = self.vtable.get_DisplayAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayAlignment(self: *@This(), value: TimedTextDisplayAlignment) core.HResult!void {
        const _c = self.vtable.put_DisplayAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineHeight(self: *@This()) core.HResult!TimedTextDouble {
        var _r: TimedTextDouble = undefined;
        const _c = self.vtable.get_LineHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineHeight(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const _c = self.vtable.put_LineHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOverflowClipped(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverflowClipped(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOverflowClipped(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOverflowClipped(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPadding(self: *@This()) core.HResult!TimedTextPadding {
        var _r: TimedTextPadding = undefined;
        const _c = self.vtable.get_Padding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPadding(self: *@This(), value: TimedTextPadding) core.HResult!void {
        const _c = self.vtable.put_Padding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTextWrapping(self: *@This()) core.HResult!TimedTextWrapping {
        var _r: TimedTextWrapping = undefined;
        const _c = self.vtable.get_TextWrapping(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextWrapping(self: *@This(), value: TimedTextWrapping) core.HResult!void {
        const _c = self.vtable.put_TextWrapping(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ZIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ZIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScrollMode(self: *@This()) core.HResult!TimedTextScrollMode {
        var _r: TimedTextScrollMode = undefined;
        const _c = self.vtable.get_ScrollMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScrollMode(self: *@This(), value: TimedTextScrollMode) core.HResult!void {
        const _c = self.vtable.put_ScrollMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ed0881f-8a06-4222-9f59-b21bf40124b4";
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
        get_Position: *const fn(self: *anyopaque, _r: *TimedTextPoint) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimedTextPoint) callconv(.winapi) HRESULT,
        get_Extent: *const fn(self: *anyopaque, _r: *TimedTextSize) callconv(.winapi) HRESULT,
        put_Extent: *const fn(self: *anyopaque, value: TimedTextSize) callconv(.winapi) HRESULT,
        get_Background: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Background: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_WritingMode: *const fn(self: *anyopaque, _r: *TimedTextWritingMode) callconv(.winapi) HRESULT,
        put_WritingMode: *const fn(self: *anyopaque, value: TimedTextWritingMode) callconv(.winapi) HRESULT,
        get_DisplayAlignment: *const fn(self: *anyopaque, _r: *TimedTextDisplayAlignment) callconv(.winapi) HRESULT,
        put_DisplayAlignment: *const fn(self: *anyopaque, value: TimedTextDisplayAlignment) callconv(.winapi) HRESULT,
        get_LineHeight: *const fn(self: *anyopaque, _r: *TimedTextDouble) callconv(.winapi) HRESULT,
        put_LineHeight: *const fn(self: *anyopaque, value: TimedTextDouble) callconv(.winapi) HRESULT,
        get_IsOverflowClipped: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOverflowClipped: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Padding: *const fn(self: *anyopaque, _r: *TimedTextPadding) callconv(.winapi) HRESULT,
        put_Padding: *const fn(self: *anyopaque, value: TimedTextPadding) callconv(.winapi) HRESULT,
        get_TextWrapping: *const fn(self: *anyopaque, _r: *TimedTextWrapping) callconv(.winapi) HRESULT,
        put_TextWrapping: *const fn(self: *anyopaque, value: TimedTextWrapping) callconv(.winapi) HRESULT,
        get_ZIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ZIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ScrollMode: *const fn(self: *anyopaque, _r: *TimedTextScrollMode) callconv(.winapi) HRESULT,
        put_ScrollMode: *const fn(self: *anyopaque, value: TimedTextScrollMode) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextRuby = extern struct {
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
    pub fn getPosition(self: *@This()) core.HResult!TimedTextRubyPosition {
        var _r: TimedTextRubyPosition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: TimedTextRubyPosition) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlign(self: *@This()) core.HResult!TimedTextRubyAlign {
        var _r: TimedTextRubyAlign = undefined;
        const _c = self.vtable.get_Align(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlign(self: *@This(), value: TimedTextRubyAlign) core.HResult!void {
        const _c = self.vtable.put_Align(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReserve(self: *@This()) core.HResult!TimedTextRubyReserve {
        var _r: TimedTextRubyReserve = undefined;
        const _c = self.vtable.get_Reserve(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReserve(self: *@This(), value: TimedTextRubyReserve) core.HResult!void {
        const _c = self.vtable.put_Reserve(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextRuby";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10335c29-5b3c-5693-9959-d05a0bd24628";
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
        get_Position: *const fn(self: *anyopaque, _r: *TimedTextRubyPosition) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: TimedTextRubyPosition) callconv(.winapi) HRESULT,
        get_Align: *const fn(self: *anyopaque, _r: *TimedTextRubyAlign) callconv(.winapi) HRESULT,
        put_Align: *const fn(self: *anyopaque, value: TimedTextRubyAlign) callconv(.winapi) HRESULT,
        get_Reserve: *const fn(self: *anyopaque, _r: *TimedTextRubyReserve) callconv(.winapi) HRESULT,
        put_Reserve: *const fn(self: *anyopaque, value: TimedTextRubyReserve) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextSource = extern struct {
    vtable: *const VTable,
    pub fn addResolved(self: *@This(), handler: *TypedEventHandler(TimedTextSource,TimedTextSourceResolveResultEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Resolved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResolved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Resolved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4ed9ba6-101f-404d-a949-82f33fcd93b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Resolved: *const fn(self: *anyopaque, handler: *TypedEventHandler(TimedTextSource,TimedTextSourceResolveResultEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Resolved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextSourceResolveResultEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getError(self: *@This()) core.HResult!*TimedMetadataTrackError {
        var _r: *TimedMetadataTrackError = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTracks(self: *@This()) core.HResult!*IVectorView(TimedMetadataTrack) {
        var _r: *IVectorView(TimedMetadataTrack) = undefined;
        const _c = self.vtable.get_Tracks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextSourceResolveResultEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48907c9c-dcd8-4c33-9ad3-6cdce7b1c566";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: **TimedMetadataTrackError) callconv(.winapi) HRESULT,
        get_Tracks: *const fn(self: *anyopaque, _r: **IVectorView(TimedMetadataTrack)) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateFromStream(self: *@This(), stream: *IRandomAccessStream) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromStream(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUri(self: *@This(), uri: *Uri) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamWithDefaultLanguage(self: *@This(), stream: *IRandomAccessStream, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromStreamWithDefaultLanguage(@ptrCast(self), stream, defaultLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUriWithDefaultLanguage(self: *@This(), uri: *Uri, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromUriWithDefaultLanguage(@ptrCast(self), uri, defaultLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e311853-9aba-4ac4-bb98-2fb176c3bfdd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromStream: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromUri: *const fn(self: *anyopaque, uri: *Uri, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromStreamWithDefaultLanguage: *const fn(self: *anyopaque, stream: *IRandomAccessStream, defaultLanguage: HSTRING, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromUriWithDefaultLanguage: *const fn(self: *anyopaque, uri: *Uri, defaultLanguage: HSTRING, _r: **TimedTextSource) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextSourceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFromStreamWithIndex(self: *@This(), stream: *IRandomAccessStream, indexStream: *IRandomAccessStream) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromStreamWithIndex(@ptrCast(self), stream, indexStream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUriWithIndex(self: *@This(), uri: *Uri, indexUri: *Uri) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromUriWithIndex(@ptrCast(self), uri, indexUri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamWithIndexWithIndexStreamWithDefaultLanguage(self: *@This(), stream: *IRandomAccessStream, indexStream: *IRandomAccessStream, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromStreamWithIndexWithIndexStreamWithDefaultLanguage(@ptrCast(self), stream, indexStream, defaultLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUriWithIndexWithIndexUriWithDefaultLanguage(self: *@This(), uri: *Uri, indexUri: *Uri, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        var _r: *TimedTextSource = undefined;
        const _c = self.vtable.CreateFromUriWithIndexWithIndexUriWithDefaultLanguage(@ptrCast(self), uri, indexUri, defaultLanguage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextSourceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b66b7602-923e-43fa-9633-587075812db5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFromStreamWithIndex: *const fn(self: *anyopaque, stream: *IRandomAccessStream, indexStream: *IRandomAccessStream, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromUriWithIndex: *const fn(self: *anyopaque, uri: *Uri, indexUri: *Uri, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromStreamWithIndexWithIndexStreamWithDefaultLanguage: *const fn(self: *anyopaque, stream: *IRandomAccessStream, indexStream: *IRandomAccessStream, defaultLanguage: HSTRING, _r: **TimedTextSource) callconv(.winapi) HRESULT,
        CreateFromUriWithIndexWithIndexUriWithDefaultLanguage: *const fn(self: *anyopaque, uri: *Uri, indexUri: *Uri, defaultLanguage: HSTRING, _r: **TimedTextSource) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextStyle = extern struct {
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
    pub fn getFontFamily(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FontFamily(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontFamily(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_FontFamily(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontSize(self: *@This()) core.HResult!TimedTextDouble {
        var _r: TimedTextDouble = undefined;
        const _c = self.vtable.get_FontSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontSize(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const _c = self.vtable.put_FontSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontWeight(self: *@This()) core.HResult!TimedTextWeight {
        var _r: TimedTextWeight = undefined;
        const _c = self.vtable.get_FontWeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontWeight(self: *@This(), value: TimedTextWeight) core.HResult!void {
        const _c = self.vtable.put_FontWeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForeground(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Foreground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForeground(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Foreground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackground(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Background(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackground(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Background(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsBackgroundAlwaysShown(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBackgroundAlwaysShown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBackgroundAlwaysShown(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsBackgroundAlwaysShown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!TimedTextFlowDirection {
        var _r: TimedTextFlowDirection = undefined;
        const _c = self.vtable.get_FlowDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlowDirection(self: *@This(), value: TimedTextFlowDirection) core.HResult!void {
        const _c = self.vtable.put_FlowDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineAlignment(self: *@This()) core.HResult!TimedTextLineAlignment {
        var _r: TimedTextLineAlignment = undefined;
        const _c = self.vtable.get_LineAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineAlignment(self: *@This(), value: TimedTextLineAlignment) core.HResult!void {
        const _c = self.vtable.put_LineAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutlineColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OutlineColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutlineColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_OutlineColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutlineThickness(self: *@This()) core.HResult!TimedTextDouble {
        var _r: TimedTextDouble = undefined;
        const _c = self.vtable.get_OutlineThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutlineThickness(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const _c = self.vtable.put_OutlineThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOutlineRadius(self: *@This()) core.HResult!TimedTextDouble {
        var _r: TimedTextDouble = undefined;
        const _c = self.vtable.get_OutlineRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOutlineRadius(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const _c = self.vtable.put_OutlineRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextStyle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bb2384d-a825-40c2-a7f5-281eaedf3b55";
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
        get_FontFamily: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_FontFamily: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FontSize: *const fn(self: *anyopaque, _r: *TimedTextDouble) callconv(.winapi) HRESULT,
        put_FontSize: *const fn(self: *anyopaque, value: TimedTextDouble) callconv(.winapi) HRESULT,
        get_FontWeight: *const fn(self: *anyopaque, _r: *TimedTextWeight) callconv(.winapi) HRESULT,
        put_FontWeight: *const fn(self: *anyopaque, value: TimedTextWeight) callconv(.winapi) HRESULT,
        get_Foreground: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Foreground: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Background: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Background: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_IsBackgroundAlwaysShown: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsBackgroundAlwaysShown: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FlowDirection: *const fn(self: *anyopaque, _r: *TimedTextFlowDirection) callconv(.winapi) HRESULT,
        put_FlowDirection: *const fn(self: *anyopaque, value: TimedTextFlowDirection) callconv(.winapi) HRESULT,
        get_LineAlignment: *const fn(self: *anyopaque, _r: *TimedTextLineAlignment) callconv(.winapi) HRESULT,
        put_LineAlignment: *const fn(self: *anyopaque, value: TimedTextLineAlignment) callconv(.winapi) HRESULT,
        get_OutlineColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_OutlineColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_OutlineThickness: *const fn(self: *anyopaque, _r: *TimedTextDouble) callconv(.winapi) HRESULT,
        put_OutlineThickness: *const fn(self: *anyopaque, value: TimedTextDouble) callconv(.winapi) HRESULT,
        get_OutlineRadius: *const fn(self: *anyopaque, _r: *TimedTextDouble) callconv(.winapi) HRESULT,
        put_OutlineRadius: *const fn(self: *anyopaque, value: TimedTextDouble) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextStyle2 = extern struct {
    vtable: *const VTable,
    pub fn getFontStyle(self: *@This()) core.HResult!TimedTextFontStyle {
        var _r: TimedTextFontStyle = undefined;
        const _c = self.vtable.get_FontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontStyle(self: *@This(), value: TimedTextFontStyle) core.HResult!void {
        const _c = self.vtable.put_FontStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsUnderlineEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUnderlineEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsUnderlineEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsUnderlineEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLineThroughEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLineThroughEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLineThroughEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLineThroughEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOverlineEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOverlineEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOverlineEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOverlineEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextStyle2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "655f492d-6111-4787-89cc-686fece57e14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FontStyle: *const fn(self: *anyopaque, _r: *TimedTextFontStyle) callconv(.winapi) HRESULT,
        put_FontStyle: *const fn(self: *anyopaque, value: TimedTextFontStyle) callconv(.winapi) HRESULT,
        get_IsUnderlineEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsUnderlineEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsLineThroughEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLineThroughEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsOverlineEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOverlineEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextStyle3 = extern struct {
    vtable: *const VTable,
    pub fn getRuby(self: *@This()) core.HResult!*TimedTextRuby {
        var _r: *TimedTextRuby = undefined;
        const _c = self.vtable.get_Ruby(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBouten(self: *@This()) core.HResult!*TimedTextBouten {
        var _r: *TimedTextBouten = undefined;
        const _c = self.vtable.get_Bouten(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTextCombined(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTextCombined(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTextCombined(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTextCombined(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontAngleInDegrees(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FontAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontAngleInDegrees(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FontAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextStyle3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f803f93b-3e99-595e-bbb7-78a2fa13c270";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ruby: *const fn(self: *anyopaque, _r: **TimedTextRuby) callconv(.winapi) HRESULT,
        get_Bouten: *const fn(self: *anyopaque, _r: **TimedTextBouten) callconv(.winapi) HRESULT,
        get_IsTextCombined: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTextCombined: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_FontAngleInDegrees: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FontAngleInDegrees: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ITimedTextSubformat = extern struct {
    vtable: *const VTable,
    pub fn getStartIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StartIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_StartIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Length(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLength(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Length(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubformatStyle(self: *@This()) core.HResult!*TimedTextStyle {
        var _r: *TimedTextStyle = undefined;
        const _c = self.vtable.get_SubformatStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubformatStyle(self: *@This(), value: *TimedTextStyle) core.HResult!void {
        const _c = self.vtable.put_SubformatStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ITimedTextSubformat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d713502f-3261-4722-a0c2-b937b2390f14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_StartIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Length: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Length: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SubformatStyle: *const fn(self: *anyopaque, _r: **TimedTextStyle) callconv(.winapi) HRESULT,
        put_SubformatStyle: *const fn(self: *anyopaque, value: *TimedTextStyle) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStabilizationEffect = extern struct {
    vtable: *const VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addEnabledChanged(self: *@This(), handler: *TypedEventHandler(VideoStabilizationEffect,VideoStabilizationEffectEnabledChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnabledChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnabledChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetRecommendedStreamConfiguration(self: *@This(), controller: *VideoDeviceController, desiredProperties: *VideoEncodingProperties) core.HResult!*VideoStreamConfiguration {
        var _r: *VideoStreamConfiguration = undefined;
        const _c = self.vtable.GetRecommendedStreamConfiguration(@ptrCast(self), controller, desiredProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoStabilizationEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0808a650-9698-4e57-877b-bd7cb2ee0f8a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_EnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(VideoStabilizationEffect,VideoStabilizationEffectEnabledChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnabledChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetRecommendedStreamConfiguration: *const fn(self: *anyopaque, controller: *VideoDeviceController, desiredProperties: *VideoEncodingProperties, _r: **VideoStreamConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStabilizationEffectEnabledChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!VideoStabilizationEffectEnabledChangedReason {
        var _r: VideoStabilizationEffectEnabledChangedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoStabilizationEffectEnabledChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "187eff28-67bb-4713-b900-4168da164529";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *VideoStabilizationEffectEnabledChangedReason) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStreamDescriptor = extern struct {
    vtable: *const VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.get_EncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12ee0d55-9c2b-4440-8057-2c7a90f0cbec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EncodingProperties: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStreamDescriptor2 = extern struct {
    vtable: *const VTable,
    pub fn Copy(self: *@This()) core.HResult!*VideoStreamDescriptor {
        var _r: *VideoStreamDescriptor = undefined;
        const _c = self.vtable.Copy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoStreamDescriptor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b306e10-453e-4088-832d-c36fa4f94af3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Copy: *const fn(self: *anyopaque, _r: **VideoStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStreamDescriptorFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), encodingProperties: *VideoEncodingProperties) core.HResult!*VideoStreamDescriptor {
        var _r: *VideoStreamDescriptor = undefined;
        const _c = self.vtable.Create(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoStreamDescriptorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "494ef6d1-bb75-43d2-9e5e-7b79a3afced4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, encodingProperties: *VideoEncodingProperties, _r: **VideoStreamDescriptor) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTrack = extern struct {
    vtable: *const VTable,
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(VideoTrack,VideoTrackOpenFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OpenFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OpenFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.GetEncodingProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var _r: *MediaPlaybackItem = undefined;
        const _c = self.vtable.get_PlaybackItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportInfo(self: *@This()) core.HResult!*VideoTrackSupportInfo {
        var _r: *VideoTrackSupportInfo = undefined;
        const _c = self.vtable.get_SupportInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99f3b7f3-e298-4396-bb6a-a51be6a2a20a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_OpenFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(VideoTrack,VideoTrackOpenFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OpenFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetEncodingProperties: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        get_PlaybackItem: *const fn(self: *anyopaque, _r: **MediaPlaybackItem) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportInfo: *const fn(self: *anyopaque, _r: **VideoTrackSupportInfo) callconv(.winapi) HRESULT,
    };
};
pub const IVideoTrackOpenFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoTrackOpenFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7679e231-04f9-4c82-a4ee-8602c8bb4754";
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
pub const IVideoTrackSupportInfo = extern struct {
    vtable: *const VTable,
    pub fn getDecoderStatus(self: *@This()) core.HResult!MediaDecoderStatus {
        var _r: MediaDecoderStatus = undefined;
        const _c = self.vtable.get_DecoderStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaSourceStatus(self: *@This()) core.HResult!MediaSourceStatus {
        var _r: MediaSourceStatus = undefined;
        const _c = self.vtable.get_MediaSourceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Core.IVideoTrackSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bb534a0-fc5f-450d-8ff0-778d590486de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DecoderStatus: *const fn(self: *anyopaque, _r: *MediaDecoderStatus) callconv(.winapi) HRESULT,
        get_MediaSourceStatus: *const fn(self: *anyopaque, _r: *MediaSourceStatus) callconv(.winapi) HRESULT,
    };
};
pub const ImageCue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!TimedTextPoint {
        const this: *IImageCue = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimedTextPoint) core.HResult!void {
        const this: *IImageCue = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getExtent(self: *@This()) core.HResult!TimedTextSize {
        const this: *IImageCue = @ptrCast(self);
        return try this.getExtent();
    }
    pub fn putExtent(self: *@This(), value: TimedTextSize) core.HResult!void {
        const this: *IImageCue = @ptrCast(self);
        return try this.putExtent(value);
    }
    pub fn putSoftwareBitmap(self: *@This(), value: *SoftwareBitmap) core.HResult!void {
        const this: *IImageCue = @ptrCast(self);
        return try this.putSoftwareBitmap(value);
    }
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        const this: *IImageCue = @ptrCast(self);
        return try this.getSoftwareBitmap();
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartTime(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IImageCue.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.ImageCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageCue.GUID;
    pub const IID: Guid = IImageCue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageCue.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InitializeMediaStreamSourceRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*MediaStreamSource {
        const this: *IInitializeMediaStreamSourceRequestedEventArgs = @ptrCast(self);
        return try this.getSource();
    }
    pub fn getRandomAccessStream(self: *@This()) core.HResult!*IRandomAccessStream {
        const this: *IInitializeMediaStreamSourceRequestedEventArgs = @ptrCast(self);
        return try this.getRandomAccessStream();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IInitializeMediaStreamSourceRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.InitializeMediaStreamSourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInitializeMediaStreamSourceRequestedEventArgs.GUID;
    pub const IID: Guid = IInitializeMediaStreamSourceRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInitializeMediaStreamSourceRequestedEventArgs.SIGNATURE);
};
pub const LowLightFusion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SupportedBitmapPixelFormats() core.HResult!*IVectorView(BitmapPixelFormat) {
        const factory = @This().ILowLightFusionStaticsCache.get();
        return try factory.getSupportedBitmapPixelFormats();
    }
    pub fn get_MaxSupportedFrameCount() core.HResult!i32 {
        const factory = @This().ILowLightFusionStaticsCache.get();
        return try factory.getMaxSupportedFrameCount();
    }
    pub fn FuseAsync(frameSet: *IIterable(SoftwareBitmap)) core.HResult!*IAsyncOperationWithProgress(LowLightFusionResult,f64) {
        const factory = @This().ILowLightFusionStaticsCache.get();
        return try factory.FuseAsync(frameSet);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.LowLightFusion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILowLightFusionStaticsCache: FactoryCache(ILowLightFusionStatics, RUNTIME_NAME) = .{};
};
pub const LowLightFusionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*SoftwareBitmap {
        const this: *ILowLightFusionResult = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.LowLightFusionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLightFusionResult.GUID;
    pub const IID: Guid = ILowLightFusionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLightFusionResult.SIGNATURE);
};
pub const MediaBinder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addBinding(self: *@This(), handler: *TypedEventHandler(MediaBinder,MediaBindingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaBinder = @ptrCast(self);
        return try this.addBinding(handler);
    }
    pub fn removeBinding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBinder = @ptrCast(self);
        return try this.removeBinding(token);
    }
    pub fn getToken(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaBinder = @ptrCast(self);
        return try this.getToken();
    }
    pub fn putToken(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaBinder = @ptrCast(self);
        return try this.putToken(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*MediaSource {
        const this: *IMediaBinder = @ptrCast(self);
        return try this.getSource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaBinder.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaBinder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBinder.GUID;
    pub const IID: Guid = IMediaBinder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBinder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaBindingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCanceled(self: *@This(), handler: *TypedEventHandler(MediaBindingEventArgs,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.addCanceled(handler);
    }
    pub fn removeCanceled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.removeCanceled(token);
    }
    pub fn getMediaBinder(self: *@This()) core.HResult!*MediaBinder {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.getMediaBinder();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetUri(self: *@This(), uri: *Uri) core.HResult!void {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.SetUri(uri);
    }
    pub fn SetStream(self: *@This(), stream: *IRandomAccessStream, contentType: HSTRING) core.HResult!void {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.SetStream(stream, contentType);
    }
    pub fn SetStreamReference(self: *@This(), stream: *IRandomAccessStreamReference, contentType: HSTRING) core.HResult!void {
        const this: *IMediaBindingEventArgs = @ptrCast(self);
        return try this.SetStreamReference(stream, contentType);
    }
    pub fn SetAdaptiveMediaSource(self: *@This(), mediaSource: *AdaptiveMediaSource) core.HResult!void {
        var this: ?*IMediaBindingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaBindingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAdaptiveMediaSource(mediaSource);
    }
    pub fn SetStorageFile(self: *@This(), file: *IStorageFile) core.HResult!void {
        var this: ?*IMediaBindingEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaBindingEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetStorageFile(file);
    }
    pub fn SetDownloadOperation(self: *@This(), downloadOperation: *DownloadOperation) core.HResult!void {
        var this: ?*IMediaBindingEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaBindingEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDownloadOperation(downloadOperation);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaBindingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaBindingEventArgs.GUID;
    pub const IID: Guid = IMediaBindingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaBindingEventArgs.SIGNATURE);
};
pub const MediaCueEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCue(self: *@This()) core.HResult!*IMediaCue {
        const this: *IMediaCueEventArgs = @ptrCast(self);
        return try this.getCue();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaCueEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCueEventArgs.GUID;
    pub const IID: Guid = IMediaCueEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCueEventArgs.SIGNATURE);
};
pub const MediaDecoderStatus = enum(i32) {
    FullySupported = 0,
    UnsupportedSubtype = 1,
    UnsupportedEncoderProperties = 2,
    Degraded = 3,
};
pub const MediaSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addOpenOperationCompleted(self: *@This(), handler: *TypedEventHandler(MediaSource,MediaSourceOpenOperationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.addOpenOperationCompleted(handler);
    }
    pub fn removeOpenOperationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.removeOpenOperationCompleted(token);
    }
    pub fn getCustomProperties(self: *@This()) core.HResult!*ValueSet {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.getCustomProperties();
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.getIsOpen();
    }
    pub fn getExternalTimedTextSources(self: *@This()) core.HResult!*IObservableVector(TimedTextSource) {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.getExternalTimedTextSources();
    }
    pub fn getExternalTimedMetadataTracks(self: *@This()) core.HResult!*IObservableVector(TimedMetadataTrack) {
        const this: *IMediaSource2 = @ptrCast(self);
        return try this.getExternalTimedMetadataTracks();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn addStateChanged(self: *@This(), handler: *TypedEventHandler(MediaSource,MediaSourceStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStateChanged(handler);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStateChanged(token);
    }
    pub fn getState(self: *@This()) core.HResult!MediaSourceState {
        var this: ?*IMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getState();
    }
    pub fn Reset(self: *@This()) core.HResult!void {
        var this: ?*IMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Reset();
    }
    pub fn getAdaptiveMediaSource(self: *@This()) core.HResult!*AdaptiveMediaSource {
        var this: ?*IMediaSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAdaptiveMediaSource();
    }
    pub fn getMediaStreamSource(self: *@This()) core.HResult!*MediaStreamSource {
        var this: ?*IMediaSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaStreamSource();
    }
    pub fn getMseStreamSource(self: *@This()) core.HResult!*MseStreamSource {
        var this: ?*IMediaSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMseStreamSource();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IMediaSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUri();
    }
    pub fn OpenAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IMediaSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OpenAsync();
    }
    pub fn getDownloadOperation(self: *@This()) core.HResult!*DownloadOperation {
        var this: ?*IMediaSource5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaSource5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDownloadOperation();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromMediaBinder(binder: *MediaBinder) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStatics2Cache.get();
        return try factory.CreateFromMediaBinder(binder);
    }
    pub fn CreateFromAdaptiveMediaSource(mediaSource: *AdaptiveMediaSource) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromAdaptiveMediaSource(mediaSource);
    }
    pub fn CreateFromMediaStreamSource(mediaSource: *MediaStreamSource) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromMediaStreamSource(mediaSource);
    }
    pub fn CreateFromMseStreamSource(mediaSource: *MseStreamSource) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromMseStreamSource(mediaSource);
    }
    pub fn CreateFromIMediaSource(mediaSource: *IMediaSource) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromIMediaSource(mediaSource);
    }
    pub fn CreateFromStorageFile(file: *IStorageFile) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromStorageFile(file);
    }
    pub fn CreateFromStream(stream: *IRandomAccessStream, contentType: HSTRING) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromStream(stream, contentType);
    }
    pub fn CreateFromStreamReference(stream: *IRandomAccessStreamReference, contentType: HSTRING) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromStreamReference(stream, contentType);
    }
    pub fn CreateFromUri(uri: *Uri) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStaticsCache.get();
        return try factory.CreateFromUri(uri);
    }
    pub fn CreateFromDownloadOperation(downloadOperation: *DownloadOperation) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStatics4Cache.get();
        return try factory.CreateFromDownloadOperation(downloadOperation);
    }
    pub fn CreateFromMediaFrameSource(frameSource: *MediaFrameSource) core.HResult!*MediaSource {
        const factory = @This().IMediaSourceStatics3Cache.get();
        return try factory.CreateFromMediaFrameSource(frameSource);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSource2.GUID;
    pub const IID: Guid = IMediaSource2.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSource2.SIGNATURE);
    var _IMediaSourceStatics2Cache: FactoryCache(IMediaSourceStatics2, RUNTIME_NAME) = .{};
    var _IMediaSourceStaticsCache: FactoryCache(IMediaSourceStatics, RUNTIME_NAME) = .{};
    var _IMediaSourceStatics4Cache: FactoryCache(IMediaSourceStatics4, RUNTIME_NAME) = .{};
    var _IMediaSourceStatics3Cache: FactoryCache(IMediaSourceStatics3, RUNTIME_NAME) = .{};
};
pub const MediaSourceAppServiceConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addInitializeMediaStreamSourceRequested(self: *@This(), handler: *TypedEventHandler(MediaSourceAppServiceConnection,InitializeMediaStreamSourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaSourceAppServiceConnection = @ptrCast(self);
        return try this.addInitializeMediaStreamSourceRequested(handler);
    }
    pub fn removeInitializeMediaStreamSourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaSourceAppServiceConnection = @ptrCast(self);
        return try this.removeInitializeMediaStreamSourceRequested(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IMediaSourceAppServiceConnection = @ptrCast(self);
        return try this.Start();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(appServiceConnection: *AppServiceConnection) core.HResult!*MediaSourceAppServiceConnection {
        const factory = @This().IMediaSourceAppServiceConnectionFactoryCache.get();
        return try factory.Create(appServiceConnection);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaSourceAppServiceConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSourceAppServiceConnection.GUID;
    pub const IID: Guid = IMediaSourceAppServiceConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSourceAppServiceConnection.SIGNATURE);
    var _IMediaSourceAppServiceConnectionFactoryCache: FactoryCache(IMediaSourceAppServiceConnectionFactory, RUNTIME_NAME) = .{};
};
pub const MediaSourceError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IMediaSourceError = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaSourceError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSourceError.GUID;
    pub const IID: Guid = IMediaSourceError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSourceError.SIGNATURE);
};
pub const MediaSourceOpenOperationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!*MediaSourceError {
        const this: *IMediaSourceOpenOperationCompletedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaSourceOpenOperationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSourceOpenOperationCompletedEventArgs.GUID;
    pub const IID: Guid = IMediaSourceOpenOperationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSourceOpenOperationCompletedEventArgs.SIGNATURE);
};
pub const MediaSourceState = enum(i32) {
    Initial = 0,
    Opening = 1,
    Opened = 2,
    Failed = 3,
    Closed = 4,
};
pub const MediaSourceStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldState(self: *@This()) core.HResult!MediaSourceState {
        const this: *IMediaSourceStateChangedEventArgs = @ptrCast(self);
        return try this.getOldState();
    }
    pub fn getNewState(self: *@This()) core.HResult!MediaSourceState {
        const this: *IMediaSourceStateChangedEventArgs = @ptrCast(self);
        return try this.getNewState();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaSourceStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaSourceStateChangedEventArgs.GUID;
    pub const IID: Guid = IMediaSourceStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaSourceStateChangedEventArgs.SIGNATURE);
};
pub const MediaSourceStatus = enum(i32) {
    FullySupported = 0,
    Unknown = 1,
};
pub const MediaStreamSample = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addProcessed(self: *@This(), handler: *TypedEventHandler(MediaStreamSample,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.addProcessed(handler);
    }
    pub fn removeProcessed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.removeProcessed(token);
    }
    pub fn getBuffer(self: *@This()) core.HResult!*Buffer {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getBuffer();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getExtendedProperties(self: *@This()) core.HResult!*MediaStreamSamplePropertySet {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getExtendedProperties();
    }
    pub fn getProtection(self: *@This()) core.HResult!*MediaStreamSampleProtectionProperties {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getProtection();
    }
    pub fn putDecodeTimestamp(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.putDecodeTimestamp(value);
    }
    pub fn getDecodeTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getDecodeTimestamp();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putKeyFrame(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.putKeyFrame(value);
    }
    pub fn getKeyFrame(self: *@This()) core.HResult!bool {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getKeyFrame();
    }
    pub fn putDiscontinuous(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.putDiscontinuous(value);
    }
    pub fn getDiscontinuous(self: *@This()) core.HResult!bool {
        const this: *IMediaStreamSample = @ptrCast(self);
        return try this.getDiscontinuous();
    }
    pub fn getDirect3D11Surface(self: *@This()) core.HResult!*IDirect3DSurface {
        var this: ?*IMediaStreamSample2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSample2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirect3D11Surface();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromBuffer(buffer: *IBuffer, timestamp: TimeSpan) core.HResult!*MediaStreamSample {
        const factory = @This().IMediaStreamSampleStaticsCache.get();
        return try factory.CreateFromBuffer(buffer, timestamp);
    }
    pub fn CreateFromStreamAsync(stream: *IInputStream, count: u32, timestamp: TimeSpan) core.HResult!*IAsyncOperation(MediaStreamSample) {
        const factory = @This().IMediaStreamSampleStaticsCache.get();
        return try factory.CreateFromStreamAsync(stream, count, timestamp);
    }
    pub fn CreateFromDirect3D11Surface(surface: *IDirect3DSurface, timestamp: TimeSpan) core.HResult!*MediaStreamSample {
        const factory = @This().IMediaStreamSampleStatics2Cache.get();
        return try factory.CreateFromDirect3D11Surface(surface, timestamp);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSample";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSample.GUID;
    pub const IID: Guid = IMediaStreamSample.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSample.SIGNATURE);
    var _IMediaStreamSampleStaticsCache: FactoryCache(IMediaStreamSampleStatics, RUNTIME_NAME) = .{};
    var _IMediaStreamSampleStatics2Cache: FactoryCache(IMediaStreamSampleStatics2, RUNTIME_NAME) = .{};
};
pub const MediaStreamSamplePropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Lookup(self: *@This(), key: core.generic(K)) core.HResult!core.generic(V) {
        const this: *IMap = @ptrCast(self);
        return try this.Lookup(key);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap = @ptrCast(self);
        return try this.getSize();
    }
    pub fn HasKey(self: *@This(), key: core.generic(K)) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.HasKey(key);
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(K,V) {
        const this: *IMap = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Insert(self: *@This(), key: core.generic(K), value: core.generic(V)) core.HResult!bool {
        const this: *IMap = @ptrCast(self);
        return try this.Insert(key, value);
    }
    pub fn Remove(self: *@This(), key: core.generic(K)) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Remove(key);
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(T) {
        var this: ?*IIterable(IKeyValuePair(Guid,IInspectable)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSamplePropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
};
pub const MediaStreamSampleProtectionProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetKeyIdentifier(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.SetKeyIdentifier(value);
    }
    pub fn GetKeyIdentifier(self: *@This(), value: u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.GetKeyIdentifier(value);
    }
    pub fn SetInitializationVector(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.SetInitializationVector(value);
    }
    pub fn GetInitializationVector(self: *@This(), value: u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.GetInitializationVector(value);
    }
    pub fn SetSubSampleMapping(self: *@This(), value: [*]u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.SetSubSampleMapping(value);
    }
    pub fn GetSubSampleMapping(self: *@This(), value: u8) core.HResult!void {
        const this: *IMediaStreamSampleProtectionProperties = @ptrCast(self);
        return try this.GetSubSampleMapping(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSampleProtectionProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSampleProtectionProperties.GUID;
    pub const IID: Guid = IMediaStreamSampleProtectionProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSampleProtectionProperties.SIGNATURE);
};
pub const MediaStreamSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addStarting(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceStartingEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.addStarting(handler);
    }
    pub fn removeStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.removeStarting(token);
    }
    pub fn addPaused(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.addPaused(handler);
    }
    pub fn removePaused(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.removePaused(token);
    }
    pub fn addSampleRequested(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.addSampleRequested(handler);
    }
    pub fn removeSampleRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.removeSampleRequested(token);
    }
    pub fn addSwitchStreamsRequested(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSwitchStreamsRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.addSwitchStreamsRequested(handler);
    }
    pub fn removeSwitchStreamsRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.removeSwitchStreamsRequested(token);
    }
    pub fn NotifyError(self: *@This(), errorStatus: MediaStreamSourceErrorStatus) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.NotifyError(errorStatus);
    }
    pub fn AddStreamDescriptor(self: *@This(), descriptor: *IMediaStreamDescriptor) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.AddStreamDescriptor(descriptor);
    }
    pub fn putMediaProtectionManager(self: *@This(), value: *MediaProtectionManager) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.putMediaProtectionManager(value);
    }
    pub fn getMediaProtectionManager(self: *@This()) core.HResult!*MediaProtectionManager {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getMediaProtectionManager();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putCanSeek(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.putCanSeek(value);
    }
    pub fn getCanSeek(self: *@This()) core.HResult!bool {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getCanSeek();
    }
    pub fn putBufferTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.putBufferTime(value);
    }
    pub fn getBufferTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getBufferTime();
    }
    pub fn SetBufferedRange(self: *@This(), startOffset: TimeSpan, endOffset: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.SetBufferedRange(startOffset, endOffset);
    }
    pub fn getMusicProperties(self: *@This()) core.HResult!*MusicProperties {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getMusicProperties();
    }
    pub fn getVideoProperties(self: *@This()) core.HResult!*VideoProperties {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getVideoProperties();
    }
    pub fn putThumbnail(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.putThumbnail(value);
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn AddProtectionKey(self: *@This(), streamDescriptor: *IMediaStreamDescriptor, keyIdentifier: [*]u8, licenseData: [*]u8) core.HResult!void {
        const this: *IMediaStreamSource = @ptrCast(self);
        return try this.AddProtectionKey(streamDescriptor, keyIdentifier, licenseData);
    }
    pub fn addSampleRendered(self: *@This(), handler: *TypedEventHandler(MediaStreamSource,MediaStreamSourceSampleRenderedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaStreamSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addSampleRendered(handler);
    }
    pub fn removeSampleRendered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaStreamSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeSampleRendered(token);
    }
    pub fn putMaxSupportedPlaybackRate(self: *@This(), value: *IReference(f64)) core.HResult!void {
        var this: ?*IMediaStreamSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxSupportedPlaybackRate(value);
    }
    pub fn getMaxSupportedPlaybackRate(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IMediaStreamSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxSupportedPlaybackRate();
    }
    pub fn putIsLive(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaStreamSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLive(value);
    }
    pub fn getIsLive(self: *@This()) core.HResult!bool {
        var this: ?*IMediaStreamSource4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamSource4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLive();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromDescriptor(descriptor: *IMediaStreamDescriptor) core.HResult!*MediaStreamSource {
        const factory = @This().IMediaStreamSourceFactoryCache.get();
        return try factory.CreateFromDescriptor(descriptor);
    }
    pub fn CreateFromDescriptors(descriptor: *IMediaStreamDescriptor, descriptor2: *IMediaStreamDescriptor) core.HResult!*MediaStreamSource {
        const factory = @This().IMediaStreamSourceFactoryCache.get();
        return try factory.CreateFromDescriptors(descriptor, descriptor2);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSource.GUID;
    pub const IID: Guid = IMediaStreamSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSource.SIGNATURE);
    var _IMediaStreamSourceFactoryCache: FactoryCache(IMediaStreamSourceFactory, RUNTIME_NAME) = .{};
};
pub const MediaStreamSourceClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceClosedRequest {
        const this: *IMediaStreamSourceClosedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceClosedEventArgs.GUID;
    pub const IID: Guid = IMediaStreamSourceClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceClosedEventArgs.SIGNATURE);
};
pub const MediaStreamSourceClosedReason = enum(i32) {
    Done = 0,
    UnknownError = 1,
    AppReportedError = 2,
    UnsupportedProtectionSystem = 3,
    ProtectionSystemFailure = 4,
    UnsupportedEncodingFormat = 5,
    MissingSampleRequestedEventHandler = 6,
};
pub const MediaStreamSourceClosedRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!MediaStreamSourceClosedReason {
        const this: *IMediaStreamSourceClosedRequest = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceClosedRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceClosedRequest.GUID;
    pub const IID: Guid = IMediaStreamSourceClosedRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceClosedRequest.SIGNATURE);
};
pub const MediaStreamSourceErrorStatus = enum(i32) {
    Other = 0,
    OutOfMemory = 1,
    FailedToOpenFile = 2,
    FailedToConnectToServer = 3,
    ConnectionToServerLost = 4,
    UnspecifiedNetworkError = 5,
    DecodeError = 6,
    UnsupportedMediaFormat = 7,
};
pub const MediaStreamSourceSampleRenderedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSampleLag(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaStreamSourceSampleRenderedEventArgs = @ptrCast(self);
        return try this.getSampleLag();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSampleRenderedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSampleRenderedEventArgs.GUID;
    pub const IID: Guid = IMediaStreamSourceSampleRenderedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSampleRenderedEventArgs.SIGNATURE);
};
pub const MediaStreamSourceSampleRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        const this: *IMediaStreamSourceSampleRequest = @ptrCast(self);
        return try this.getStreamDescriptor();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceSampleRequestDeferral {
        const this: *IMediaStreamSourceSampleRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn putSample(self: *@This(), value: *MediaStreamSample) core.HResult!void {
        const this: *IMediaStreamSourceSampleRequest = @ptrCast(self);
        return try this.putSample(value);
    }
    pub fn getSample(self: *@This()) core.HResult!*MediaStreamSample {
        const this: *IMediaStreamSourceSampleRequest = @ptrCast(self);
        return try this.getSample();
    }
    pub fn ReportSampleProgress(self: *@This(), progress: u32) core.HResult!void {
        const this: *IMediaStreamSourceSampleRequest = @ptrCast(self);
        return try this.ReportSampleProgress(progress);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSampleRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSampleRequest.GUID;
    pub const IID: Guid = IMediaStreamSourceSampleRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSampleRequest.SIGNATURE);
};
pub const MediaStreamSourceSampleRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IMediaStreamSourceSampleRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSampleRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSampleRequestDeferral.GUID;
    pub const IID: Guid = IMediaStreamSourceSampleRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSampleRequestDeferral.SIGNATURE);
};
pub const MediaStreamSourceSampleRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceSampleRequest {
        const this: *IMediaStreamSourceSampleRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSampleRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSampleRequestedEventArgs.GUID;
    pub const IID: Guid = IMediaStreamSourceSampleRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSampleRequestedEventArgs.SIGNATURE);
};
pub const MediaStreamSourceStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceStartingRequest {
        const this: *IMediaStreamSourceStartingEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceStartingEventArgs.GUID;
    pub const IID: Guid = IMediaStreamSourceStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceStartingEventArgs.SIGNATURE);
};
pub const MediaStreamSourceStartingRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMediaStreamSourceStartingRequest = @ptrCast(self);
        return try this.getStartPosition();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceStartingRequestDeferral {
        const this: *IMediaStreamSourceStartingRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn SetActualStartPosition(self: *@This(), position: TimeSpan) core.HResult!void {
        const this: *IMediaStreamSourceStartingRequest = @ptrCast(self);
        return try this.SetActualStartPosition(position);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceStartingRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceStartingRequest.GUID;
    pub const IID: Guid = IMediaStreamSourceStartingRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceStartingRequest.SIGNATURE);
};
pub const MediaStreamSourceStartingRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IMediaStreamSourceStartingRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceStartingRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceStartingRequestDeferral.GUID;
    pub const IID: Guid = IMediaStreamSourceStartingRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceStartingRequestDeferral.SIGNATURE);
};
pub const MediaStreamSourceSwitchStreamsRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        const this: *IMediaStreamSourceSwitchStreamsRequest = @ptrCast(self);
        return try this.getOldStreamDescriptor();
    }
    pub fn getNewStreamDescriptor(self: *@This()) core.HResult!*IMediaStreamDescriptor {
        const this: *IMediaStreamSourceSwitchStreamsRequest = @ptrCast(self);
        return try this.getNewStreamDescriptor();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*MediaStreamSourceSwitchStreamsRequestDeferral {
        const this: *IMediaStreamSourceSwitchStreamsRequest = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSwitchStreamsRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSwitchStreamsRequest.GUID;
    pub const IID: Guid = IMediaStreamSourceSwitchStreamsRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSwitchStreamsRequest.SIGNATURE);
};
pub const MediaStreamSourceSwitchStreamsRequestDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IMediaStreamSourceSwitchStreamsRequestDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSwitchStreamsRequestDeferral.GUID;
    pub const IID: Guid = IMediaStreamSourceSwitchStreamsRequestDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSwitchStreamsRequestDeferral.SIGNATURE);
};
pub const MediaStreamSourceSwitchStreamsRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*MediaStreamSourceSwitchStreamsRequest {
        const this: *IMediaStreamSourceSwitchStreamsRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MediaStreamSourceSwitchStreamsRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamSourceSwitchStreamsRequestedEventArgs.GUID;
    pub const IID: Guid = IMediaStreamSourceSwitchStreamsRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamSourceSwitchStreamsRequestedEventArgs.SIGNATURE);
};
pub const MediaTrackKind = enum(i32) {
    Audio = 0,
    Video = 1,
    TimedMetadata = 2,
};
pub const MseAppendMode = enum(i32) {
    Segments = 0,
    Sequence = 1,
};
pub const MseEndOfStreamStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    DecodeError = 2,
    UnknownError = 3,
};
pub const MseReadyState = enum(i32) {
    Closed = 0,
    Open = 1,
    Ended = 2,
};
pub const MseSourceBuffer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addUpdateStarting(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.addUpdateStarting(handler);
    }
    pub fn removeUpdateStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.removeUpdateStarting(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addUpdateEnded(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.addUpdateEnded(handler);
    }
    pub fn removeUpdateEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.removeUpdateEnded(token);
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.addErrorOccurred(handler);
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.removeErrorOccurred(token);
    }
    pub fn addAborted(self: *@This(), handler: *TypedEventHandler(MseSourceBuffer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.addAborted(handler);
    }
    pub fn removeAborted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.removeAborted(token);
    }
    pub fn getMode(self: *@This()) core.HResult!MseAppendMode {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: MseAppendMode) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getIsUpdating(self: *@This()) core.HResult!bool {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getIsUpdating();
    }
    pub fn getBuffered(self: *@This()) core.HResult!*IVectorView(MseTimeRange) {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getBuffered();
    }
    pub fn getTimestampOffset(self: *@This()) core.HResult!TimeSpan {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getTimestampOffset();
    }
    pub fn putTimestampOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.putTimestampOffset(value);
    }
    pub fn getAppendWindowStart(self: *@This()) core.HResult!TimeSpan {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getAppendWindowStart();
    }
    pub fn putAppendWindowStart(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.putAppendWindowStart(value);
    }
    pub fn getAppendWindowEnd(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.getAppendWindowEnd();
    }
    pub fn putAppendWindowEnd(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.putAppendWindowEnd(value);
    }
    pub fn AppendBuffer(self: *@This(), buffer: *IBuffer) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.AppendBuffer(buffer);
    }
    pub fn AppendStream(self: *@This(), stream: *IInputStream) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.AppendStream(stream);
    }
    pub fn AppendStreamWithMaxSize(self: *@This(), stream: *IInputStream, maxSize: u64) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.AppendStreamWithMaxSize(stream, maxSize);
    }
    pub fn Abort(self: *@This()) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.Abort();
    }
    pub fn Remove(self: *@This(), start: TimeSpan, end: *IReference(TimeSpan)) core.HResult!void {
        const this: *IMseSourceBuffer = @ptrCast(self);
        return try this.Remove(start, end);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MseSourceBuffer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMseSourceBuffer.GUID;
    pub const IID: Guid = IMseSourceBuffer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMseSourceBuffer.SIGNATURE);
};
pub const MseSourceBufferList = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addSourceBufferAdded(self: *@This(), handler: *TypedEventHandler(MseSourceBufferList,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBufferList = @ptrCast(self);
        return try this.addSourceBufferAdded(handler);
    }
    pub fn removeSourceBufferAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBufferList = @ptrCast(self);
        return try this.removeSourceBufferAdded(token);
    }
    pub fn addSourceBufferRemoved(self: *@This(), handler: *TypedEventHandler(MseSourceBufferList,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseSourceBufferList = @ptrCast(self);
        return try this.addSourceBufferRemoved(handler);
    }
    pub fn removeSourceBufferRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseSourceBufferList = @ptrCast(self);
        return try this.removeSourceBufferRemoved(token);
    }
    pub fn getBuffers(self: *@This()) core.HResult!*IVectorView(MseSourceBuffer) {
        const this: *IMseSourceBufferList = @ptrCast(self);
        return try this.getBuffers();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MseSourceBufferList";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMseSourceBufferList.GUID;
    pub const IID: Guid = IMseSourceBufferList.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMseSourceBufferList.SIGNATURE);
};
pub const MseStreamSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addOpened(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.addOpened(handler);
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.removeOpened(token);
    }
    pub fn addEnded(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.addEnded(handler);
    }
    pub fn removeEnded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.removeEnded(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(MseStreamSource,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn getSourceBuffers(self: *@This()) core.HResult!*MseSourceBufferList {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.getSourceBuffers();
    }
    pub fn getActiveSourceBuffers(self: *@This()) core.HResult!*MseSourceBufferList {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.getActiveSourceBuffers();
    }
    pub fn getReadyState(self: *@This()) core.HResult!MseReadyState {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.getReadyState();
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn AddSourceBuffer(self: *@This(), mimeType: HSTRING) core.HResult!*MseSourceBuffer {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.AddSourceBuffer(mimeType);
    }
    pub fn RemoveSourceBuffer(self: *@This(), buffer: *MseSourceBuffer) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.RemoveSourceBuffer(buffer);
    }
    pub fn EndOfStream(self: *@This(), status: MseEndOfStreamStatus) core.HResult!void {
        const this: *IMseStreamSource = @ptrCast(self);
        return try this.EndOfStream(status);
    }
    pub fn getLiveSeekableRange(self: *@This()) core.HResult!*IReference(MseTimeRange) {
        var this: ?*IMseStreamSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMseStreamSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLiveSeekableRange();
    }
    pub fn putLiveSeekableRange(self: *@This(), value: *IReference(MseTimeRange)) core.HResult!void {
        var this: ?*IMseStreamSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMseStreamSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLiveSeekableRange(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMseStreamSource.IID)));
    }
    pub fn IsContentTypeSupported(contentType: HSTRING) core.HResult!bool {
        const factory = @This().IMseStreamSourceStaticsCache.get();
        return try factory.IsContentTypeSupported(contentType);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.MseStreamSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMseStreamSource.GUID;
    pub const IID: Guid = IMseStreamSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMseStreamSource.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMseStreamSourceStaticsCache: FactoryCache(IMseStreamSourceStatics, RUNTIME_NAME) = .{};
};
pub const MseTimeRange = extern struct {
    Start: TimeSpan,
    End: TimeSpan,
};
pub const SceneAnalysisEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHighDynamicRangeAnalyzer(self: *@This()) core.HResult!*HighDynamicRangeControl {
        const this: *ISceneAnalysisEffect = @ptrCast(self);
        return try this.getHighDynamicRangeAnalyzer();
    }
    pub fn putDesiredAnalysisInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISceneAnalysisEffect = @ptrCast(self);
        return try this.putDesiredAnalysisInterval(value);
    }
    pub fn getDesiredAnalysisInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ISceneAnalysisEffect = @ptrCast(self);
        return try this.getDesiredAnalysisInterval();
    }
    pub fn addSceneAnalyzed(self: *@This(), handler: *TypedEventHandler(SceneAnalysisEffect,SceneAnalyzedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ISceneAnalysisEffect = @ptrCast(self);
        return try this.addSceneAnalyzed(handler);
    }
    pub fn removeSceneAnalyzed(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ISceneAnalysisEffect = @ptrCast(self);
        return try this.removeSceneAnalyzed(cookie);
    }
    pub fn SetProperties(self: *@This(), configuration: *IPropertySet) core.HResult!void {
        var this: ?*IMediaExtension = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaExtension.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetProperties(configuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.SceneAnalysisEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneAnalysisEffect.GUID;
    pub const IID: Guid = ISceneAnalysisEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneAnalysisEffect.SIGNATURE);
};
pub const SceneAnalysisEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVideoEffectDefinition.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.SceneAnalysisEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEffectDefinition.GUID;
    pub const IID: Guid = IVideoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEffectDefinition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SceneAnalysisEffectFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        const this: *ISceneAnalysisEffectFrame = @ptrCast(self);
        return try this.getFrameControlValues();
    }
    pub fn getHighDynamicRange(self: *@This()) core.HResult!*HighDynamicRangeOutput {
        const this: *ISceneAnalysisEffectFrame = @ptrCast(self);
        return try this.getHighDynamicRange();
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
    pub fn getAnalysisRecommendation(self: *@This()) core.HResult!SceneAnalysisRecommendation {
        var this: ?*ISceneAnalysisEffectFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISceneAnalysisEffectFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAnalysisRecommendation();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.SceneAnalysisEffectFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneAnalysisEffectFrame.GUID;
    pub const IID: Guid = ISceneAnalysisEffectFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneAnalysisEffectFrame.SIGNATURE);
};
pub const SceneAnalysisRecommendation = enum(i32) {
    Standard = 0,
    Hdr = 1,
    LowLight = 2,
};
pub const SceneAnalyzedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResultFrame(self: *@This()) core.HResult!*SceneAnalysisEffectFrame {
        const this: *ISceneAnalyzedEventArgs = @ptrCast(self);
        return try this.getResultFrame();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.SceneAnalyzedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISceneAnalyzedEventArgs.GUID;
    pub const IID: Guid = ISceneAnalyzedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISceneAnalyzedEventArgs.SIGNATURE);
};
pub const SpeechCue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getStartPositionInInput(self: *@This()) core.HResult!*IReference(i32) {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.getStartPositionInInput();
    }
    pub fn putStartPositionInInput(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.putStartPositionInInput(value);
    }
    pub fn getEndPositionInInput(self: *@This()) core.HResult!*IReference(i32) {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.getEndPositionInInput();
    }
    pub fn putEndPositionInInput(self: *@This(), value: *IReference(i32)) core.HResult!void {
        const this: *ISpeechCue = @ptrCast(self);
        return try this.putEndPositionInInput(value);
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartTime(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISpeechCue.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.SpeechCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpeechCue.GUID;
    pub const IID: Guid = ISpeechCue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpeechCue.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedMetadataKind = enum(i32) {
    Caption = 0,
    Chapter = 1,
    Custom = 2,
    Data = 3,
    Description = 4,
    Subtitle = 5,
    ImageSubtitle = 6,
    Speech = 7,
};
pub const TimedMetadataStreamDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*TimedMetadataEncodingProperties {
        var this: ?*ITimedMetadataStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEncodingProperties();
    }
    pub fn Copy(self: *@This()) core.HResult!*TimedMetadataStreamDescriptor {
        var this: ?*ITimedMetadataStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        const this: *IMediaStreamDescriptor = @ptrCast(self);
        return try this.getIsSelected();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaStreamDescriptor = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaStreamDescriptor = @ptrCast(self);
        return try this.getName();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaStreamDescriptor = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaStreamDescriptor = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(encodingProperties: *TimedMetadataEncodingProperties) core.HResult!*TimedMetadataStreamDescriptor {
        const factory = @This().ITimedMetadataStreamDescriptorFactoryCache.get();
        return try factory.Create(encodingProperties);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedMetadataStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaStreamDescriptor.GUID;
    pub const IID: Guid = IMediaStreamDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaStreamDescriptor.SIGNATURE);
    var _ITimedMetadataStreamDescriptorFactoryCache: FactoryCache(ITimedMetadataStreamDescriptorFactory, RUNTIME_NAME) = .{};
};
pub const TimedMetadataTrack = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCueEntered(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.addCueEntered(handler);
    }
    pub fn removeCueEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.removeCueEntered(token);
    }
    pub fn addCueExited(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,MediaCueEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.addCueExited(handler);
    }
    pub fn removeCueExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.removeCueExited(token);
    }
    pub fn addTrackFailed(self: *@This(), handler: *TypedEventHandler(TimedMetadataTrack,TimedMetadataTrackFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.addTrackFailed(handler);
    }
    pub fn removeTrackFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.removeTrackFailed(token);
    }
    pub fn getCues(self: *@This()) core.HResult!*IVectorView(IMediaCue) {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.getCues();
    }
    pub fn getActiveCues(self: *@This()) core.HResult!*IVectorView(IMediaCue) {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.getActiveCues();
    }
    pub fn getTimedMetadataKind(self: *@This()) core.HResult!TimedMetadataKind {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.getTimedMetadataKind();
    }
    pub fn getDispatchType(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.getDispatchType();
    }
    pub fn AddCue(self: *@This(), cue: *IMediaCue) core.HResult!void {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.AddCue(cue);
    }
    pub fn RemoveCue(self: *@This(), cue: *IMediaCue) core.HResult!void {
        const this: *ITimedMetadataTrack = @ptrCast(self);
        return try this.RemoveCue(cue);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn getTrackKind(self: *@This()) core.HResult!MediaTrackKind {
        var this: ?*IMediaTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTrackKind();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var this: ?*ITimedMetadataTrack2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataTrack2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackItem();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*ITimedMetadataTrack2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedMetadataTrack2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(id: HSTRING, language: HSTRING, kind: TimedMetadataKind) core.HResult!*TimedMetadataTrack {
        const factory = @This().ITimedMetadataTrackFactoryCache.get();
        return try factory.Create(id, language, kind);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedMetadataTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedMetadataTrack.GUID;
    pub const IID: Guid = ITimedMetadataTrack.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedMetadataTrack.SIGNATURE);
    var _ITimedMetadataTrackFactoryCache: FactoryCache(ITimedMetadataTrackFactory, RUNTIME_NAME) = .{};
};
pub const TimedMetadataTrackError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!TimedMetadataTrackErrorCode {
        const this: *ITimedMetadataTrackError = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ITimedMetadataTrackError = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedMetadataTrackError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedMetadataTrackError.GUID;
    pub const IID: Guid = ITimedMetadataTrackError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedMetadataTrackError.SIGNATURE);
};
pub const TimedMetadataTrackErrorCode = enum(i32) {
    None = 0,
    DataFormatError = 1,
    NetworkError = 2,
    InternalError = 3,
};
pub const TimedMetadataTrackFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!*TimedMetadataTrackError {
        const this: *ITimedMetadataTrackFailedEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedMetadataTrackFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedMetadataTrackFailedEventArgs.GUID;
    pub const IID: Guid = ITimedMetadataTrackFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedMetadataTrackFailedEventArgs.SIGNATURE);
};
pub const TimedTextBouten = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!TimedTextBoutenType {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: TimedTextBoutenType) core.HResult!void {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!TimedTextBoutenPosition {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimedTextBoutenPosition) core.HResult!void {
        const this: *ITimedTextBouten = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextBouten";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextBouten.GUID;
    pub const IID: Guid = ITimedTextBouten.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextBouten.SIGNATURE);
};
pub const TimedTextBoutenPosition = enum(i32) {
    Before = 0,
    After = 1,
    Outside = 2,
};
pub const TimedTextBoutenType = enum(i32) {
    None = 0,
    Auto = 1,
    FilledCircle = 2,
    OpenCircle = 3,
    FilledDot = 4,
    OpenDot = 5,
    FilledSesame = 6,
    OpenSesame = 7,
};
pub const TimedTextCue = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCueRegion(self: *@This()) core.HResult!*TimedTextRegion {
        const this: *ITimedTextCue = @ptrCast(self);
        return try this.getCueRegion();
    }
    pub fn putCueRegion(self: *@This(), value: *TimedTextRegion) core.HResult!void {
        const this: *ITimedTextCue = @ptrCast(self);
        return try this.putCueRegion(value);
    }
    pub fn getCueStyle(self: *@This()) core.HResult!*TimedTextStyle {
        const this: *ITimedTextCue = @ptrCast(self);
        return try this.getCueStyle();
    }
    pub fn putCueStyle(self: *@This(), value: *TimedTextStyle) core.HResult!void {
        const this: *ITimedTextCue = @ptrCast(self);
        return try this.putCueStyle(value);
    }
    pub fn getLines(self: *@This()) core.HResult!*IVector(TimedTextLine) {
        const this: *ITimedTextCue = @ptrCast(self);
        return try this.getLines();
    }
    pub fn putStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putStartTime(value);
    }
    pub fn getStartTime(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStartTime();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDuration(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDuration();
    }
    pub fn putId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putId(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCue = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCue.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimedTextCue.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextCue";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextCue.GUID;
    pub const IID: Guid = ITimedTextCue.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextCue.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedTextDisplayAlignment = enum(i32) {
    Before = 0,
    After = 1,
    Center = 2,
};
pub const TimedTextDouble = extern struct {
    Value: f64,
    Unit: TimedTextUnit,
};
pub const TimedTextFlowDirection = enum(i32) {
    LeftToRight = 0,
    RightToLeft = 1,
};
pub const TimedTextFontStyle = enum(i32) {
    Normal = 0,
    Oblique = 1,
    Italic = 2,
};
pub const TimedTextLine = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedTextLine = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimedTextLine = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getSubformats(self: *@This()) core.HResult!*IVector(TimedTextSubformat) {
        const this: *ITimedTextLine = @ptrCast(self);
        return try this.getSubformats();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimedTextLine.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextLine";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextLine.GUID;
    pub const IID: Guid = ITimedTextLine.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextLine.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedTextLineAlignment = enum(i32) {
    Start = 0,
    End = 1,
    Center = 2,
};
pub const TimedTextPadding = extern struct {
    Before: f64,
    After: f64,
    Start: f64,
    End: f64,
    Unit: TimedTextUnit,
};
pub const TimedTextPoint = extern struct {
    X: f64,
    Y: f64,
    Unit: TimedTextUnit,
};
pub const TimedTextRegion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!TimedTextPoint {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimedTextPoint) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getExtent(self: *@This()) core.HResult!TimedTextSize {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getExtent();
    }
    pub fn putExtent(self: *@This(), value: TimedTextSize) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putExtent(value);
    }
    pub fn getBackground(self: *@This()) core.HResult!Color {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getBackground();
    }
    pub fn putBackground(self: *@This(), value: Color) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putBackground(value);
    }
    pub fn getWritingMode(self: *@This()) core.HResult!TimedTextWritingMode {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getWritingMode();
    }
    pub fn putWritingMode(self: *@This(), value: TimedTextWritingMode) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putWritingMode(value);
    }
    pub fn getDisplayAlignment(self: *@This()) core.HResult!TimedTextDisplayAlignment {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getDisplayAlignment();
    }
    pub fn putDisplayAlignment(self: *@This(), value: TimedTextDisplayAlignment) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putDisplayAlignment(value);
    }
    pub fn getLineHeight(self: *@This()) core.HResult!TimedTextDouble {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getLineHeight();
    }
    pub fn putLineHeight(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putLineHeight(value);
    }
    pub fn getIsOverflowClipped(self: *@This()) core.HResult!bool {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getIsOverflowClipped();
    }
    pub fn putIsOverflowClipped(self: *@This(), value: bool) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putIsOverflowClipped(value);
    }
    pub fn getPadding(self: *@This()) core.HResult!TimedTextPadding {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getPadding();
    }
    pub fn putPadding(self: *@This(), value: TimedTextPadding) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putPadding(value);
    }
    pub fn getTextWrapping(self: *@This()) core.HResult!TimedTextWrapping {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getTextWrapping();
    }
    pub fn putTextWrapping(self: *@This(), value: TimedTextWrapping) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putTextWrapping(value);
    }
    pub fn getZIndex(self: *@This()) core.HResult!i32 {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getZIndex();
    }
    pub fn putZIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putZIndex(value);
    }
    pub fn getScrollMode(self: *@This()) core.HResult!TimedTextScrollMode {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.getScrollMode();
    }
    pub fn putScrollMode(self: *@This(), value: TimedTextScrollMode) core.HResult!void {
        const this: *ITimedTextRegion = @ptrCast(self);
        return try this.putScrollMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimedTextRegion.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextRegion.GUID;
    pub const IID: Guid = ITimedTextRegion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextRegion.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedTextRuby = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!TimedTextRubyPosition {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: TimedTextRubyPosition) core.HResult!void {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getAlign(self: *@This()) core.HResult!TimedTextRubyAlign {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.getAlign();
    }
    pub fn putAlign(self: *@This(), value: TimedTextRubyAlign) core.HResult!void {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.putAlign(value);
    }
    pub fn getReserve(self: *@This()) core.HResult!TimedTextRubyReserve {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.getReserve();
    }
    pub fn putReserve(self: *@This(), value: TimedTextRubyReserve) core.HResult!void {
        const this: *ITimedTextRuby = @ptrCast(self);
        return try this.putReserve(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextRuby";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextRuby.GUID;
    pub const IID: Guid = ITimedTextRuby.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextRuby.SIGNATURE);
};
pub const TimedTextRubyAlign = enum(i32) {
    Center = 0,
    Start = 1,
    End = 2,
    SpaceAround = 3,
    SpaceBetween = 4,
    WithBase = 5,
};
pub const TimedTextRubyPosition = enum(i32) {
    Before = 0,
    After = 1,
    Outside = 2,
};
pub const TimedTextRubyReserve = enum(i32) {
    None = 0,
    Before = 1,
    After = 2,
    Both = 3,
    Outside = 4,
};
pub const TimedTextScrollMode = enum(i32) {
    Popon = 0,
    Rollup = 1,
};
pub const TimedTextSize = extern struct {
    Height: f64,
    Width: f64,
    Unit: TimedTextUnit,
};
pub const TimedTextSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addResolved(self: *@This(), handler: *TypedEventHandler(TimedTextSource,TimedTextSourceResolveResultEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ITimedTextSource = @ptrCast(self);
        return try this.addResolved(handler);
    }
    pub fn removeResolved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITimedTextSource = @ptrCast(self);
        return try this.removeResolved(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateFromStreamWithIndex(stream: *IRandomAccessStream, indexStream: *IRandomAccessStream) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStatics2Cache.get();
        return try factory.CreateFromStreamWithIndex(stream, indexStream);
    }
    pub fn CreateFromUriWithIndex(uri: *Uri, indexUri: *Uri) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStatics2Cache.get();
        return try factory.CreateFromUriWithIndex(uri, indexUri);
    }
    pub fn CreateFromStreamWithIndexWithDefaultLanguage(stream: *IRandomAccessStream, indexStream: *IRandomAccessStream, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStatics2Cache.get();
        return try factory.CreateFromStreamWithIndexWithDefaultLanguage(stream, indexStream, defaultLanguage);
    }
    pub fn CreateFromUriWithIndexWithDefaultLanguage(uri: *Uri, indexUri: *Uri, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStatics2Cache.get();
        return try factory.CreateFromUriWithIndexWithDefaultLanguage(uri, indexUri, defaultLanguage);
    }
    pub fn CreateFromStream(stream: *IRandomAccessStream) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStaticsCache.get();
        return try factory.CreateFromStream(stream);
    }
    pub fn CreateFromUri(uri: *Uri) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStaticsCache.get();
        return try factory.CreateFromUri(uri);
    }
    pub fn CreateFromStreamWithDefaultLanguage(stream: *IRandomAccessStream, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStaticsCache.get();
        return try factory.CreateFromStreamWithDefaultLanguage(stream, defaultLanguage);
    }
    pub fn CreateFromUriWithDefaultLanguage(uri: *Uri, defaultLanguage: HSTRING) core.HResult!*TimedTextSource {
        const factory = @This().ITimedTextSourceStaticsCache.get();
        return try factory.CreateFromUriWithDefaultLanguage(uri, defaultLanguage);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextSource.GUID;
    pub const IID: Guid = ITimedTextSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextSource.SIGNATURE);
    var _ITimedTextSourceStatics2Cache: FactoryCache(ITimedTextSourceStatics2, RUNTIME_NAME) = .{};
    var _ITimedTextSourceStaticsCache: FactoryCache(ITimedTextSourceStatics, RUNTIME_NAME) = .{};
};
pub const TimedTextSourceResolveResultEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getError(self: *@This()) core.HResult!*TimedMetadataTrackError {
        const this: *ITimedTextSourceResolveResultEventArgs = @ptrCast(self);
        return try this.getError();
    }
    pub fn getTracks(self: *@This()) core.HResult!*IVectorView(TimedMetadataTrack) {
        const this: *ITimedTextSourceResolveResultEventArgs = @ptrCast(self);
        return try this.getTracks();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextSourceResolveResultEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextSourceResolveResultEventArgs.GUID;
    pub const IID: Guid = ITimedTextSourceResolveResultEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextSourceResolveResultEventArgs.SIGNATURE);
};
pub const TimedTextStyle = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getFontFamily(self: *@This()) core.HResult!HSTRING {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getFontFamily();
    }
    pub fn putFontFamily(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putFontFamily(value);
    }
    pub fn getFontSize(self: *@This()) core.HResult!TimedTextDouble {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getFontSize();
    }
    pub fn putFontSize(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putFontSize(value);
    }
    pub fn getFontWeight(self: *@This()) core.HResult!TimedTextWeight {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getFontWeight();
    }
    pub fn putFontWeight(self: *@This(), value: TimedTextWeight) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putFontWeight(value);
    }
    pub fn getForeground(self: *@This()) core.HResult!Color {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getForeground();
    }
    pub fn putForeground(self: *@This(), value: Color) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putForeground(value);
    }
    pub fn getBackground(self: *@This()) core.HResult!Color {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getBackground();
    }
    pub fn putBackground(self: *@This(), value: Color) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putBackground(value);
    }
    pub fn getIsBackgroundAlwaysShown(self: *@This()) core.HResult!bool {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getIsBackgroundAlwaysShown();
    }
    pub fn putIsBackgroundAlwaysShown(self: *@This(), value: bool) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putIsBackgroundAlwaysShown(value);
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!TimedTextFlowDirection {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getFlowDirection();
    }
    pub fn putFlowDirection(self: *@This(), value: TimedTextFlowDirection) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putFlowDirection(value);
    }
    pub fn getLineAlignment(self: *@This()) core.HResult!TimedTextLineAlignment {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getLineAlignment();
    }
    pub fn putLineAlignment(self: *@This(), value: TimedTextLineAlignment) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putLineAlignment(value);
    }
    pub fn getOutlineColor(self: *@This()) core.HResult!Color {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getOutlineColor();
    }
    pub fn putOutlineColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putOutlineColor(value);
    }
    pub fn getOutlineThickness(self: *@This()) core.HResult!TimedTextDouble {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getOutlineThickness();
    }
    pub fn putOutlineThickness(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putOutlineThickness(value);
    }
    pub fn getOutlineRadius(self: *@This()) core.HResult!TimedTextDouble {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.getOutlineRadius();
    }
    pub fn putOutlineRadius(self: *@This(), value: TimedTextDouble) core.HResult!void {
        const this: *ITimedTextStyle = @ptrCast(self);
        return try this.putOutlineRadius(value);
    }
    pub fn getFontStyle(self: *@This()) core.HResult!TimedTextFontStyle {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFontStyle();
    }
    pub fn putFontStyle(self: *@This(), value: TimedTextFontStyle) core.HResult!void {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFontStyle(value);
    }
    pub fn getIsUnderlineEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsUnderlineEnabled();
    }
    pub fn putIsUnderlineEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsUnderlineEnabled(value);
    }
    pub fn getIsLineThroughEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLineThroughEnabled();
    }
    pub fn putIsLineThroughEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLineThroughEnabled(value);
    }
    pub fn getIsOverlineEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOverlineEnabled();
    }
    pub fn putIsOverlineEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITimedTextStyle2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsOverlineEnabled(value);
    }
    pub fn getRuby(self: *@This()) core.HResult!*TimedTextRuby {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRuby();
    }
    pub fn getBouten(self: *@This()) core.HResult!*TimedTextBouten {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBouten();
    }
    pub fn getIsTextCombined(self: *@This()) core.HResult!bool {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTextCombined();
    }
    pub fn putIsTextCombined(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsTextCombined(value);
    }
    pub fn getFontAngleInDegrees(self: *@This()) core.HResult!f64 {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFontAngleInDegrees();
    }
    pub fn putFontAngleInDegrees(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ITimedTextStyle3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITimedTextStyle3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFontAngleInDegrees(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimedTextStyle.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextStyle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextStyle.GUID;
    pub const IID: Guid = ITimedTextStyle.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextStyle.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedTextSubformat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartIndex(self: *@This()) core.HResult!i32 {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.getStartIndex();
    }
    pub fn putStartIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.putStartIndex(value);
    }
    pub fn getLength(self: *@This()) core.HResult!i32 {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.getLength();
    }
    pub fn putLength(self: *@This(), value: i32) core.HResult!void {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.putLength(value);
    }
    pub fn getSubformatStyle(self: *@This()) core.HResult!*TimedTextStyle {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.getSubformatStyle();
    }
    pub fn putSubformatStyle(self: *@This(), value: *TimedTextStyle) core.HResult!void {
        const this: *ITimedTextSubformat = @ptrCast(self);
        return try this.putSubformatStyle(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimedTextSubformat.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.TimedTextSubformat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimedTextSubformat.GUID;
    pub const IID: Guid = ITimedTextSubformat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimedTextSubformat.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimedTextUnit = enum(i32) {
    Pixels = 0,
    Percentage = 1,
};
pub const TimedTextWeight = enum(i32) {
    Normal = 400,
    Bold = 700,
};
pub const TimedTextWrapping = enum(i32) {
    NoWrap = 0,
    Wrap = 1,
};
pub const TimedTextWritingMode = enum(i32) {
    LeftRightTopBottom = 0,
    RightLeftTopBottom = 1,
    TopBottomRightLeft = 2,
    TopBottomLeftRight = 3,
    LeftRight = 4,
    RightLeft = 5,
    TopBottom = 6,
};
pub const VideoStabilizationEffect = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IVideoStabilizationEffect = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getEnabled(self: *@This()) core.HResult!bool {
        const this: *IVideoStabilizationEffect = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn addEnabledChanged(self: *@This(), handler: *TypedEventHandler(VideoStabilizationEffect,VideoStabilizationEffectEnabledChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IVideoStabilizationEffect = @ptrCast(self);
        return try this.addEnabledChanged(handler);
    }
    pub fn removeEnabledChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IVideoStabilizationEffect = @ptrCast(self);
        return try this.removeEnabledChanged(cookie);
    }
    pub fn GetRecommendedStreamConfiguration(self: *@This(), controller: *VideoDeviceController, desiredProperties: *VideoEncodingProperties) core.HResult!*VideoStreamConfiguration {
        const this: *IVideoStabilizationEffect = @ptrCast(self);
        return try this.GetRecommendedStreamConfiguration(controller, desiredProperties);
    }
    pub fn SetProperties(self: *@This(), configuration: *IPropertySet) core.HResult!void {
        var this: ?*IMediaExtension = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaExtension.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetProperties(configuration);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoStabilizationEffect";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoStabilizationEffect.GUID;
    pub const IID: Guid = IVideoStabilizationEffect.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoStabilizationEffect.SIGNATURE);
};
pub const VideoStabilizationEffectDefinition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActivatableClassId(self: *@This()) core.HResult!HSTRING {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getActivatableClassId();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        const this: *IVideoEffectDefinition = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVideoEffectDefinition.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoStabilizationEffectDefinition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoEffectDefinition.GUID;
    pub const IID: Guid = IVideoEffectDefinition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoEffectDefinition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const VideoStabilizationEffectEnabledChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!VideoStabilizationEffectEnabledChangedReason {
        const this: *IVideoStabilizationEffectEnabledChangedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoStabilizationEffectEnabledChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoStabilizationEffectEnabledChangedEventArgs.GUID;
    pub const IID: Guid = IVideoStabilizationEffectEnabledChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoStabilizationEffectEnabledChangedEventArgs.SIGNATURE);
};
pub const VideoStabilizationEffectEnabledChangedReason = enum(i32) {
    Programmatic = 0,
    PixelRateTooHigh = 1,
    RunningSlowly = 2,
};
pub const VideoStreamDescriptor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        const this: *IVideoStreamDescriptor = @ptrCast(self);
        return try this.getEncodingProperties();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putName(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLanguage(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLanguage();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLabel();
    }
    pub fn Copy(self: *@This()) core.HResult!*VideoStreamDescriptor {
        var this: ?*IVideoStreamDescriptor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoStreamDescriptor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Copy();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(encodingProperties: *VideoEncodingProperties) core.HResult!*VideoStreamDescriptor {
        const factory = @This().IVideoStreamDescriptorFactoryCache.get();
        return try factory.Create(encodingProperties);
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoStreamDescriptor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoStreamDescriptor.GUID;
    pub const IID: Guid = IVideoStreamDescriptor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoStreamDescriptor.SIGNATURE);
    var _IVideoStreamDescriptorFactoryCache: FactoryCache(IVideoStreamDescriptorFactory, RUNTIME_NAME) = .{};
};
pub const VideoTrack = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getTrackKind(self: *@This()) core.HResult!MediaTrackKind {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getTrackKind();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaTrack = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn addOpenFailed(self: *@This(), handler: *TypedEventHandler(VideoTrack,VideoTrackOpenFailedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addOpenFailed(handler);
    }
    pub fn removeOpenFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeOpenFailed(token);
    }
    pub fn GetEncodingProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetEncodingProperties();
    }
    pub fn getPlaybackItem(self: *@This()) core.HResult!*MediaPlaybackItem {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlaybackItem();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getName();
    }
    pub fn getSupportInfo(self: *@This()) core.HResult!*VideoTrackSupportInfo {
        var this: ?*IVideoTrack = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVideoTrack.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportInfo();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoTrack";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTrack.GUID;
    pub const IID: Guid = IMediaTrack.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTrack.SIGNATURE);
};
pub const VideoTrackOpenFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IVideoTrackOpenFailedEventArgs = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoTrackOpenFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoTrackOpenFailedEventArgs.GUID;
    pub const IID: Guid = IVideoTrackOpenFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoTrackOpenFailedEventArgs.SIGNATURE);
};
pub const VideoTrackSupportInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDecoderStatus(self: *@This()) core.HResult!MediaDecoderStatus {
        const this: *IVideoTrackSupportInfo = @ptrCast(self);
        return try this.getDecoderStatus();
    }
    pub fn getMediaSourceStatus(self: *@This()) core.HResult!MediaSourceStatus {
        const this: *IVideoTrackSupportInfo = @ptrCast(self);
        return try this.getMediaSourceStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.Core.VideoTrackSupportInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoTrackSupportInfo.GUID;
    pub const IID: Guid = IVideoTrackSupportInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoTrackSupportInfo.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const DetectedFace = @import("./FaceAnalysis.zig").DetectedFace;
const IVideoEffectDefinition = @import("./Effects.zig").IVideoEffectDefinition;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const VideoDeviceController = @import("./Devices.zig").VideoDeviceController;
const MusicProperties = @import("../Storage/FileProperties.zig").MusicProperties;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const ValueSet = @import("../Foundation/Collections.zig").ValueSet;
const BitmapPixelFormat = @import("../Graphics/Imaging.zig").BitmapPixelFormat;
const Buffer = @import("../Storage/Streams.zig").Buffer;
const MediaPlaybackItem = @import("./Playback.zig").MediaPlaybackItem;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimedMetadataEncodingProperties = @import("./MediaProperties.zig").TimedMetadataEncodingProperties;
const IMediaPlaybackSource = @import("./Playback.zig").IMediaPlaybackSource;
const Uri = @import("../Foundation.zig").Uri;
const PropertySet = @import("../Foundation/Collections.zig").PropertySet;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const FactoryCache = @import("../core.zig").FactoryCache;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const AdaptiveMediaSource = @import("./Streaming/Adaptive.zig").AdaptiveMediaSource;
const TrustLevel = @import("../root.zig").TrustLevel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const MediaProtectionManager = @import("./Protection.zig").MediaProtectionManager;
const HResult = @import("../Foundation.zig").HResult;
const IObservableVector = @import("../Foundation/Collections.zig").IObservableVector;
const CapturedFrameControlValues = @import("./Capture.zig").CapturedFrameControlValues;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const Guid = @import("../root.zig").Guid;
const Deferral = @import("../Foundation.zig").Deferral;
const IVector = @import("../Foundation/Collections.zig").IVector;
const VideoEncodingProperties = @import("./MediaProperties.zig").VideoEncodingProperties;
const AppServiceConnection = @import("../ApplicationModel/AppService.zig").AppServiceConnection;
const VideoStreamConfiguration = @import("./Capture.zig").VideoStreamConfiguration;
const IClosable = @import("../Foundation.zig").IClosable;
const SoftwareBitmap = @import("../Graphics/Imaging.zig").SoftwareBitmap;
const HRESULT = @import("../root.zig").HRESULT;
const VideoProperties = @import("../Storage/FileProperties.zig").VideoProperties;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IDirect3DSurface = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DSurface;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IMediaFrame = @import("../Media.zig").IMediaFrame;
const MediaFrameSource = @import("./Capture/Frames.zig").MediaFrameSource;
const Color = @import("../UI.zig").Color;
const AudioEncodingProperties = @import("./MediaProperties.zig").AudioEncodingProperties;
const IMediaExtension = @import("../Media.zig").IMediaExtension;
const FrameController = @import("./Devices/Core.zig").FrameController;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const DownloadOperation = @import("../Networking/BackgroundTransfer.zig").DownloadOperation;
pub const Preview = @import("./Core/Preview.zig");
