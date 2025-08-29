pub const IMediaTranscoder = extern struct {
    vtable: *const VTable,
    pub fn putTrimStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimStartTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimStopTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TrimStopTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimStopTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrimStopTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysReencode(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysReencode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysReencode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysReencode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHardwareAccelerationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_HardwareAccelerationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHardwareAccelerationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HardwareAccelerationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddAudioEffect(self: *@This(), activatableClassId: HSTRING) core.HResult!void {
        const _c = self.vtable.AddAudioEffect(@ptrCast(self), activatableClassId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddAudioEffectWithConfiguration(self: *@This(), activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.AddAudioEffectWithConfiguration(@ptrCast(self), activatableClassId, effectRequired, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddVideoEffect(self: *@This(), activatableClassId: HSTRING) core.HResult!void {
        const _c = self.vtable.AddVideoEffect(@ptrCast(self), activatableClassId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddVideoEffectWithConfiguration(self: *@This(), activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) core.HResult!void {
        const _c = self.vtable.AddVideoEffectWithConfiguration(@ptrCast(self), activatableClassId, effectRequired, configuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearEffects(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearEffects(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrepareFileTranscodeAsync(self: *@This(), source: *IStorageFile, destination: *IStorageFile, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        var _r: *IAsyncOperation(PrepareTranscodeResult) = undefined;
        const _c = self.vtable.PrepareFileTranscodeAsync(@ptrCast(self), source, destination, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareStreamTranscodeAsync(self: *@This(), source: *IRandomAccessStream, destination: *IRandomAccessStream, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        var _r: *IAsyncOperation(PrepareTranscodeResult) = undefined;
        const _c = self.vtable.PrepareStreamTranscodeAsync(@ptrCast(self), source, destination, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Transcoding.IMediaTranscoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "190c99d2-a0aa-4d34-86bc-eed1b12c2f5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_TrimStartTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TrimStartTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TrimStopTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_TrimStopTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_AlwaysReencode: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AlwaysReencode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_HardwareAccelerationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_HardwareAccelerationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        AddAudioEffect: *const fn(self: *anyopaque, activatableClassId: HSTRING) callconv(.winapi) HRESULT,
        AddAudioEffectWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        AddVideoEffect: *const fn(self: *anyopaque, activatableClassId: HSTRING) callconv(.winapi) HRESULT,
        AddVideoEffectWithConfiguration: *const fn(self: *anyopaque, activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) callconv(.winapi) HRESULT,
        ClearEffects: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PrepareFileTranscodeAsync: *const fn(self: *anyopaque, source: *IStorageFile, destination: *IStorageFile, profile: *MediaEncodingProfile, _r: **IAsyncOperation(PrepareTranscodeResult)) callconv(.winapi) HRESULT,
        PrepareStreamTranscodeAsync: *const fn(self: *anyopaque, source: *IRandomAccessStream, destination: *IRandomAccessStream, profile: *MediaEncodingProfile, _r: **IAsyncOperation(PrepareTranscodeResult)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTranscoder2 = extern struct {
    vtable: *const VTable,
    pub fn PrepareMediaStreamSourceTranscodeAsync(self: *@This(), source: *IMediaSource, destination: *IRandomAccessStream, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        var _r: *IAsyncOperation(PrepareTranscodeResult) = undefined;
        const _c = self.vtable.PrepareMediaStreamSourceTranscodeAsync(@ptrCast(self), source, destination, profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoProcessingAlgorithm(self: *@This(), value: MediaVideoProcessingAlgorithm) core.HResult!void {
        const _c = self.vtable.put_VideoProcessingAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoProcessingAlgorithm(self: *@This()) core.HResult!MediaVideoProcessingAlgorithm {
        var _r: MediaVideoProcessingAlgorithm = undefined;
        const _c = self.vtable.get_VideoProcessingAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Transcoding.IMediaTranscoder2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40531d74-35e0-4f04-8574-ca8bc4e5a082";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PrepareMediaStreamSourceTranscodeAsync: *const fn(self: *anyopaque, source: *IMediaSource, destination: *IRandomAccessStream, profile: *MediaEncodingProfile, _r: **IAsyncOperation(PrepareTranscodeResult)) callconv(.winapi) HRESULT,
        put_VideoProcessingAlgorithm: *const fn(self: *anyopaque, value: MediaVideoProcessingAlgorithm) callconv(.winapi) HRESULT,
        get_VideoProcessingAlgorithm: *const fn(self: *anyopaque, _r: *MediaVideoProcessingAlgorithm) callconv(.winapi) HRESULT,
    };
};
pub const IPrepareTranscodeResult = extern struct {
    vtable: *const VTable,
    pub fn getCanTranscode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanTranscode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFailureReason(self: *@This()) core.HResult!TranscodeFailureReason {
        var _r: TranscodeFailureReason = undefined;
        const _c = self.vtable.get_FailureReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TranscodeAsync(self: *@This()) core.HResult!*IAsyncActionWithProgress(f64) {
        var _r: *IAsyncActionWithProgress(f64) = undefined;
        const _c = self.vtable.TranscodeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Transcoding.IPrepareTranscodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05f25dce-994f-4a34-9d68-97ccce1730d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanTranscode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FailureReason: *const fn(self: *anyopaque, _r: *TranscodeFailureReason) callconv(.winapi) HRESULT,
        TranscodeAsync: *const fn(self: *anyopaque, _r: **IAsyncActionWithProgress(f64)) callconv(.winapi) HRESULT,
    };
};
pub const MediaTranscoder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putTrimStartTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.putTrimStartTime(value);
    }
    pub fn getTrimStartTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.getTrimStartTime();
    }
    pub fn putTrimStopTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.putTrimStopTime(value);
    }
    pub fn getTrimStopTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.getTrimStopTime();
    }
    pub fn putAlwaysReencode(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.putAlwaysReencode(value);
    }
    pub fn getAlwaysReencode(self: *@This()) core.HResult!bool {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.getAlwaysReencode();
    }
    pub fn putHardwareAccelerationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.putHardwareAccelerationEnabled(value);
    }
    pub fn getHardwareAccelerationEnabled(self: *@This()) core.HResult!bool {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.getHardwareAccelerationEnabled();
    }
    pub fn AddAudioEffect(self: *@This(), activatableClassId: HSTRING) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.AddAudioEffect(activatableClassId);
    }
    pub fn AddAudioEffectWithConfiguration(self: *@This(), activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.AddAudioEffectWithConfiguration(activatableClassId, effectRequired, configuration);
    }
    pub fn AddVideoEffect(self: *@This(), activatableClassId: HSTRING) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.AddVideoEffect(activatableClassId);
    }
    pub fn AddVideoEffectWithConfiguration(self: *@This(), activatableClassId: HSTRING, effectRequired: bool, configuration: *IPropertySet) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.AddVideoEffectWithConfiguration(activatableClassId, effectRequired, configuration);
    }
    pub fn ClearEffects(self: *@This()) core.HResult!void {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.ClearEffects();
    }
    pub fn PrepareFileTranscodeAsync(self: *@This(), source: *IStorageFile, destination: *IStorageFile, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.PrepareFileTranscodeAsync(source, destination, profile);
    }
    pub fn PrepareStreamTranscodeAsync(self: *@This(), source: *IRandomAccessStream, destination: *IRandomAccessStream, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        const this: *IMediaTranscoder = @ptrCast(self);
        return try this.PrepareStreamTranscodeAsync(source, destination, profile);
    }
    pub fn PrepareMediaStreamSourceTranscodeAsync(self: *@This(), source: *IMediaSource, destination: *IRandomAccessStream, profile: *MediaEncodingProfile) core.HResult!*IAsyncOperation(PrepareTranscodeResult) {
        var this: ?*IMediaTranscoder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTranscoder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareMediaStreamSourceTranscodeAsync(source, destination, profile);
    }
    pub fn putVideoProcessingAlgorithm(self: *@This(), value: MediaVideoProcessingAlgorithm) core.HResult!void {
        var this: ?*IMediaTranscoder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTranscoder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVideoProcessingAlgorithm(value);
    }
    pub fn getVideoProcessingAlgorithm(self: *@This()) core.HResult!MediaVideoProcessingAlgorithm {
        var this: ?*IMediaTranscoder2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaTranscoder2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoProcessingAlgorithm();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaTranscoder.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Transcoding.MediaTranscoder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTranscoder.GUID;
    pub const IID: Guid = IMediaTranscoder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTranscoder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaVideoProcessingAlgorithm = enum(i32) {
    Default = 0,
    MrfCrf444 = 1,
};
pub const PrepareTranscodeResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanTranscode(self: *@This()) core.HResult!bool {
        const this: *IPrepareTranscodeResult = @ptrCast(self);
        return try this.getCanTranscode();
    }
    pub fn getFailureReason(self: *@This()) core.HResult!TranscodeFailureReason {
        const this: *IPrepareTranscodeResult = @ptrCast(self);
        return try this.getFailureReason();
    }
    pub fn TranscodeAsync(self: *@This()) core.HResult!*IAsyncActionWithProgress(f64) {
        const this: *IPrepareTranscodeResult = @ptrCast(self);
        return try this.TranscodeAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Transcoding.PrepareTranscodeResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPrepareTranscodeResult.GUID;
    pub const IID: Guid = IPrepareTranscodeResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPrepareTranscodeResult.SIGNATURE);
};
pub const TranscodeFailureReason = enum(i32) {
    None = 0,
    Unknown = 1,
    InvalidProfile = 2,
    CodecNotFound = 3,
};
const IUnknown = @import("../root.zig").IUnknown;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const IMediaSource = @import("./Core.zig").IMediaSource;
const FactoryCache = @import("../core.zig").FactoryCache;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const IAsyncActionWithProgress = @import("../Foundation.zig").IAsyncActionWithProgress;
const MediaEncodingProfile = @import("./MediaProperties.zig").MediaEncodingProfile;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
